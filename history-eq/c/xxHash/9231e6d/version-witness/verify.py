#!/usr/bin/env python3
"""Recheck the exact historical XXH_versionNumber counterexample."""

import hashlib
import json
from pathlib import Path
import subprocess
import tempfile


here = Path(__file__).resolve().parent
case = here.parent
root = here.parents[4]
repo = root / "benchmarks/repos/xxHash"
commit = "9231e6d8ed60e4818cd8a9e3d361d06a19dc45dc"
parent = "3b589804fcd0379d652c405dabce5d049a10c918"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True).strip()


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


assert git("rev-parse", commit + "^") == parent
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == ["README.md", "xxhash.h"]
blobs = {}
outputs = {}
with tempfile.TemporaryDirectory(prefix="xxhash-9231e6d-") as tmp:
    for side, rev, expected_value in (("old", parent, "604"), ("new", commit, "605")):
        blobs[side] = {}
        for name in ("xxhash.c", "xxhash.h"):
            data = (case / side / name).read_bytes()
            expected = git("rev-parse", rev + ":" + name)
            assert oid(data) == expected, (side, name)
            blobs[side][name] = expected
        ir_path = here / f"{side}.ll"
        command = [str(clang), "-std=c11", "-O2", "-march=x86-64-v3",
                   "-I", str(case / side), "-S", "-emit-llvm", "-x", "c", "-", "-o", str(ir_path)]
        run = subprocess.run(command, input=(case / side / "xxhash.c").read_bytes(), capture_output=True)
        assert run.returncode == 0, run.stderr.decode()
        executable = Path(tmp) / side
        command = [str(clang), "-std=c11", "-O2", "-march=x86-64-v3",
                   "-I", str(case / side), str(case / side / "xxhash.c"),
                   str(here / "witness.c"), "-o", str(executable)]
        run = subprocess.run(command, capture_output=True, text=True)
        assert run.returncode == 0, run.stderr
        run = subprocess.run([str(executable)], capture_output=True, text=True)
        assert run.returncode == 0 and run.stdout.strip() == expected_value, (side, run)
        outputs[side] = expected_value

for direction, source, target in (("forward", "old", "new"), ("reverse", "new", "old")):
    command = [str(alive), "--func=XXH_versionNumber", "--always-verify",
               str(here / f"{source}.ll"), str(here / f"{target}.ll")]
    run = subprocess.run(command, capture_output=True, text=True, timeout=20)
    log = run.stdout + run.stderr
    (here / f"{direction}.log").write_text(log)
    assert run.returncode == 0 and all(s in log for s in (
        f"Source value: #x{int(outputs[source]):08x} ({outputs[source]})",
        f"Target value: #x{int(outputs[target]):08x} ({outputs[target]})",
        "1 incorrect transformations", "0 failed-to-prove transformations", "0 Alive2 errors",
    )), (direction, log[-800:])

result = {
    "commit": commit,
    "parent": parent,
    "blobs": blobs,
    "compiler": subprocess.check_output([str(clang), "--version"], text=True).splitlines()[0],
    "ir_sha256": {side: hashlib.sha256((here / f"{side}.ll").read_bytes()).hexdigest()
                  for side in ("old", "new")},
    "public_call": "XXH_versionNumber()",
    "native_outputs": outputs,
    "alive2": {"forward": "incorrect transformation", "reverse": "incorrect transformation"},
    "verdict": "NOT_EQUIV",
    "scope": "public version-number call in the exact old/new C modules under Clang 20 x86-64-v3 -O2",
    "limits": "hash results, other configurations, and performance are not decided by this witness",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("XXH_versionNumber: old 604, new 605; Alive2 rejects both directions")
