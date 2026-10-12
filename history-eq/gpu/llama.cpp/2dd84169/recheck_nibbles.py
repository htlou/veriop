#!/usr/bin/env python3
"""Prove the four source-extracted AVX2 Q6_K unpack expressions both ways."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "2dd84169d1225c2a56ddd1902d718f4514d7536a"
parent = "f454bd7eb8944629aabca163ea1c6e67e53fd77e"
path = "ggml/src/ggml-cpu/arch/x86/quants.c"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
record = {"commit": commit, "parent": parent, "source_blobs": {},
          "scope": "four AVX2 q4_0..q4_3 unpack vectors, arbitrary 256-bit inputs; does not cover bsums, dot-product accumulation, or full calls",
          "checks": []}

for side, revision, constants in (("old", parent, ("m4", "m2")),
                                  ("new", commit, ("m3", "m15"))):
    oid = subprocess.check_output(["git", "-C", str(repo), "rev-parse",
                                   f"{revision}:{path}"], env=env, text=True).strip()
    source = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", oid], env=env)
    assert hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest() == oid
    assert hashlib.sha256(source).hexdigest() == {
        "old": "8dea692587256c04e452d769e9a1672dc00c87bd8a94b15ae32b96eaaa1b9119",
        "new": "e17d07fd1e99daa77ca070286b8c984d69043c06de347c314ae92a80a7285294",
    }[side]
    record["source_blobs"][side] = oid
    section = source.decode().split("void ggml_vec_dot_q6_K_q8_K(", 1)[1][:10000]
    def statement(name):
        matches = re.findall(r"^\s*const __m256i " + name + r" = [^\n]*;", section, re.M)
        assert len(matches) == 1, (side, name, len(matches))
        return matches[0].strip()
    lines = [statement(name) for name in (*constants, *(f"q4h_{i}" for i in range(4)),
                                            *(f"q4_{i}" for i in range(4)))]
    functions = ["\n".join((
        f"__m256i target{i}(__m256i q4bits1, __m256i q4bits2, __m256i q4bitsH) {{",
        *("  " + line for line in lines), f"  return q4_{i};", "}"))
        for i in range(4)]
    model = here / f"{side}-nibbles.c"
    model.write_text("#include <immintrin.h>\n" + "\n\n".join(functions) + "\n")
    ir_path = here / f"{side}-nibbles.ll"
    subprocess.run([str(clang), "-O1", "-mavx2", "-S", "-emit-llvm",
                    str(model), "-o", str(ir_path)], check=True, capture_output=True, text=True)
    ir = ir_path.read_text()
    for i in range(4):
        body = re.search(r"define [^\n]* @target" + str(i) + r"\([^}]*\n}", ir)
        assert body and "call " not in body.group(), (side, i)
    record[side + "_model_sha256"] = hashlib.sha256(model.read_bytes()).hexdigest()
    record[side + "_ir_sha256"] = hashlib.sha256(ir_path.read_bytes()).hexdigest()

for i in range(4):
    for direction, src, tgt in (("forward", "old", "new"), ("backward", "new", "old")):
        command = [str(alive), f"--func=target{i}", "--always-verify",
                   str(here / f"{src}-nibbles.ll"), str(here / f"{tgt}-nibbles.ll")]
        check = subprocess.run(command, capture_output=True, text=True, timeout=30)
        output = check.stdout + check.stderr
        assert check.returncode == 0 and "1 correct transformations" in output, (i, direction, output)
        assert "0 incorrect transformations" in output and "0 Alive2 errors" in output
        record["checks"].append({"function": f"target{i}", "direction": direction,
                                 "command": command, "output": output})

assert len(record["checks"]) == 8
record["verdict"] = "EQUIV_PARTIAL"
(here / "nibble-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("8 bidirectional Alive2 checks passed for four source-extracted AVX2 unpack vectors")
