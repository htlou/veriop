#!/usr/bin/env python3
"""Rebuild and classify the source-locked 241-byte dispatcher check."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
case = here / "r_disp_cpu1_t1_len241"
proof = json.loads((here / "unsupported-241.json").read_text())
prior = json.loads((here / "r_disp_cpu1_t1/result.json").read_text())
repo = root / "benchmarks/repos/xxHash"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

for side, blobs in proof["source_blobs"].items():
    rev = proof["commit"] + ("^" if side == "old" else "")
    for name, oid in blobs.items():
        assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{rev}:{name}"], env=env).decode().strip() == oid
        assert subprocess.check_output(["git", "hash-object", "--stdin"], input=(here / side / name).read_bytes()).decode().strip() == oid

subprocess.run(["python3", "-B", str(root / "history-eq/c/xxHash/c1d70f5/mk_model.py"), str(here)], check=True)
for name, digest in proof["model_sha256"].items():
    assert hashlib.sha256((here / name).read_bytes()).hexdigest() == digest, name

clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
for side in ("old", "new"):
    cmd = prior[f"{side}_compile"].copy()
    cmd[0] = str(clang)
    cmd[cmd.index(str(here / "wrap_disp.c"))] = str(here / "wrap_disp_241.c")
    cmd[cmd.index("-o") + 1] = str(case / f"{side}.ll")
    subprocess.run(cmd, cwd=root / "history-eq", env=env, check=True, stdout=subprocess.DEVNULL)
    ir = (case / f"{side}.ll").read_text()
    ir = re.sub(r" nocapture\b", "", ir)
    ir = re.sub(r", ![A-Za-z][A-Za-z0-9_.]* ![0-9]+", "", ir)
    stripped = case / f"{side}-stripped.ll"
    stripped.write_text(ir)
    subprocess.run([str(opt), "-passes=verify", "-disable-output", str(stripped)], check=True)

for direction, src, tgt, marker in (
    ("forward", "old", "new", "Unsupported interprocedural transformation: non-constant global variable @g_dispatch_hashLong64_default is introduced in target"),
    ("reverse", "new", "old", "1 incorrect transformations"),
):
    cmd = [str(alive), "--func=target_disp_241", "--always-verify", "--quiet", "--smt-to=30000",
           str(case / f"{src}-stripped.ll"), str(case / f"{tgt}-stripped.ll")]
    run = subprocess.run(cmd, capture_output=True, text=True, check=True)
    output = run.stdout + run.stderr
    (case / f"{direction}.log").write_text(output)
    assert marker in output, (direction, output)

for name, digest in proof["sha256"].items():
    path = here / "wrap_disp_241.c" if name == "wrap_disp_241.c" else case / name
    assert hashlib.sha256(path.read_bytes()).hexdigest() == digest, name
print("Historical source IDs, both LLVM modules, and Alive2's explicit unsupported result rechecked")
