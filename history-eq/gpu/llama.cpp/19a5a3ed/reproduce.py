#!/usr/bin/env python3
"""Replay the exact-header AVX2 ggml_vec_set_f32 n=32 comparison."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "19a5a3ed"], text=True, env=env).strip()
parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], text=True, env=env).strip()
source_diff = subprocess.check_output(["git", "-C", str(repo), "diff", "--no-ext-diff", parent, commit,
                                       "--", "ggml/src/ggml-cpu/vec.h"], env=env)
assert b"ggml_vec_set_f32" in source_diff and b"GGML_F32_VEC_STORE" in source_diff
(here / "source.diff").write_bytes(source_diff)
wrapper = ('#include "ggml-cpu/vec.h"\n'
           'void test(float *x, float v) {\n'
           '    x = __builtin_assume_aligned(x, 4);\n'
           '    ggml_vec_set_f32(32, x, v);\n'
           '}\n')
flags = ["-O1", "-mavx2", "-mf16c", "-mfma", "-S", "-emit-llvm"]
result = {"commit": commit, "parent": parent,
          "scope": "ggml_vec_set_f32 n=32, AVX2, 4-byte-aligned float output",
          "source_diff_sha256": hashlib.sha256(source_diff).hexdigest(), "flags": flags,
          "sides": {}, "checks": {}, "overlap_witness": {}}

with tempfile.TemporaryDirectory(prefix="veriop-llama-19a5a3ed-") as tmp:
    irs = {}
    for side, revision in (("old", parent), ("new", commit)):
        work = Path(tmp) / side
        work.mkdir()
        archive = work / "ggml.tar"
        with archive.open("wb") as output:
            archived = subprocess.run(["git", "-C", str(repo), "archive", "--format=tar", revision, "ggml"],
                                      stdout=output, stderr=subprocess.PIPE, env=env)
        assert archived.returncode == 0, archived.stderr.decode(errors="replace")
        subprocess.run(["tar", "-xf", str(archive), "-C", str(work)], check=True)
        header = work / "ggml/src/ggml-cpu/vec.h"
        exact = subprocess.check_output(["git", "-C", str(repo), "show", revision + ":ggml/src/ggml-cpu/vec.h"], env=env)
        assert header.read_bytes() == exact
        source = work / "test.c"
        source.write_text(wrapper)
        ir = work / "test.ll"
        command = [str(clang), *flags, "-I" + str(work / "ggml/src"),
                   "-I" + str(work / "ggml/src/ggml-cpu"), "-I" + str(work / "ggml/include"),
                   str(source), "-o", str(ir)]
        compiled = subprocess.run(command, capture_output=True, text=True, env=env)
        assert compiled.returncode == 0, compiled.stderr
        witness_binary = work / "overlap_witness"
        witness_command = [str(clang), "-O1", "-mavx2", "-mf16c", "-mfma",
                           "-I" + str(work / "ggml/src"),
                           "-I" + str(work / "ggml/src/ggml-cpu"),
                           "-I" + str(work / "ggml/include"),
                           str(here / "overlap_witness.c"), "-o", str(witness_binary)]
        subprocess.run(witness_command, check=True, capture_output=True, text=True, env=env)
        witnessed = subprocess.run([str(witness_binary)], check=True, capture_output=True, text=True, env=env)
        (here / f"overlap-{side}.log").write_text(witnessed.stdout)
        result["overlap_witness"][side] = witnessed.stdout.strip()
        normalized = ir.read_text().replace(" nocapture", "").replace(" noalias", "")
        normalized = re.sub(r", ![A-Za-z0-9_.]+ !\d+", "", normalized)
        normalized = "\n".join(line for line in normalized.splitlines()
                               if not line.startswith("!") and
                               "call void @llvm.experimental.noalias.scope.decl(" not in line) + "\n"
        proof_ir = here / f"{side}.ll"
        proof_ir.write_text(normalized)
        irs[side] = proof_ir
        result["sides"][side] = {"header_sha256": hashlib.sha256(exact).hexdigest(),
                                 "original_ir_sha256": hashlib.sha256(ir.read_bytes()).hexdigest(),
                                 "proof_ir_sha256": hashlib.sha256(normalized.encode()).hexdigest(),
                                 "vector_stores": normalized.count("store <8 x float>"),
                                 "scalar_stores": normalized.count("store float")}
    assert result["sides"]["old"]["scalar_stores"] > 0 and result["sides"]["old"]["vector_stores"] == 0
    assert result["sides"]["new"]["vector_stores"] > 0
    assert result["overlap_witness"] == {"old": "0 1 2 8 9", "new": "0 1 1 1 2"}
    for direction, source_side, target_side in (("forward", "old", "new"), ("reverse", "new", "old")):
        command = [str(alive), "--func=test", "--always-verify", "--src-unroll=33", "--tgt-unroll=33",
                   "--smt-to=20000", str(irs[source_side]), str(irs[target_side])]
        checked = subprocess.run(command, capture_output=True, text=True, timeout=45, env=env)
        log = checked.stdout + checked.stderr
        (here / f"alive-{direction}.log").write_text(log)
        result["checks"][direction] = {"returncode": checked.returncode,
                                         "correct": "1 correct transformations" in log and
                                         "0 incorrect transformations" in log and
                                         "0 failed-to-prove transformations" in log and
                                         "0 Alive2 errors" in log}
        assert checked.returncode == 0 and result["checks"][direction]["correct"], log[-1500:]

(here / "verification-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result["checks"], sort_keys=True))
