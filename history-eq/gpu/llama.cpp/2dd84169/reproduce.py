#!/usr/bin/env python3
"""Compile both historical AVX2 Q6_K functions and attempt full Alive2 checks."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
commit = "2dd84169d1225c2a56ddd1902d718f4514d7536a"
parent = "f454bd7eb8944629aabca163ea1c6e67e53fd77e"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command, timeout=60):
    try:
        result = subprocess.run(command, capture_output=True, text=True, env=env, timeout=timeout)
        return {"command": list(map(str, command)), "returncode": result.returncode,
                "stdout": result.stdout, "stderr": result.stderr}
    except subprocess.TimeoutExpired as exc:
        def decode(value):
            return value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
        return {"command": list(map(str, command)), "timed_out": True,
                "stdout": decode(exc.stdout), "stderr": decode(exc.stderr)}


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "builds": {}, "checks": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-q6k-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert archived.get("returncode") == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted.get("returncode") == 0, extracted
    archive.unlink()
    source = work / "ggml/src/ggml-cpu/arch/x86/quants.c"
    ir = here / f"{side}.ll"
    built = run([clang, "-O2", "-mavx2", "-mfma", "-S", "-emit-llvm",
                 f"-I{work}/ggml/src", f"-I{work}/ggml/src/ggml-cpu",
                 f"-I{work}/ggml/include", source, "-o", ir])
    assert built.get("returncode") == 0, built
    # The installed Alive2 frontend rejects LLVM 20 capture/alias hints and
    # metadata. Drop these from both sides; the function instructions remain.
    normalized = ir.read_text().replace(" noalias", "").replace(" nocapture", "")
    normalized = re.sub(r", ![A-Za-z0-9_.]+ !\d+", "", normalized)
    normalized = "\n".join(line for line in normalized.splitlines() if not line.startswith("!")) + "\n"
    alive_ir = here / f"{side}.alive.ll"
    alive_ir.write_text(normalized)
    record["builds"][side] = {
        "revision": revision,
        "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "ir_sha256": hashlib.sha256(ir.read_bytes()).hexdigest(),
        "alive_ir_sha256": hashlib.sha256(alive_ir.read_bytes()).hexdigest(),
        "compile": built,
    }

for label, src, tgt, suffix in (
    ("raw_forward", "old", "new", ".ll"),
    ("forward", "old", "new", ".alive.ll"),
    ("reverse", "new", "old", ".alive.ll"),
):
    record["checks"][label] = run([alive, "--func=ggml_vec_dot_q6_K_q8_K",
                                    "--smt-to=30000", "--always-verify",
                                    here / f"{src}{suffix}", here / f"{tgt}{suffix}"],
                                   timeout=45)

(here / "alive2-result.json").write_text(json.dumps(record, indent=2) + "\n")
for label, result in record["checks"].items():
    print(label, "timeout" if result.get("timed_out") else result["returncode"],
          (result["stdout"] + result["stderr"])[-240:])
