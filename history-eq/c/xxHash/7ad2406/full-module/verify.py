#!/usr/bin/env python3
"""Check the exact 7ad2406 old/new x86-64 modules and public hashes."""

import hashlib
import json
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
case = here.parent
root = here.parents[4]
repo = root / "benchmarks/repos/xxHash"
commit = "7ad240669e11646a0926ce55ade753d59f21b837"
parent = "efc5403144dce34e5440564889e7bb8145f0ed83"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True).strip()


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


assert git("rev-parse", commit + "^") == parent
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == ["xxhash.c"]
blobs = {}
for side, rev in (("old", parent), ("new", commit)):
    blobs[side] = {}
    for name in ("xxhash.c", "xxhash.h"):
        content = (case / side / name).read_bytes()
        expected = git("rev-parse", rev + ":" + name)
        assert oid(content) == expected, (side, name)
        blobs[side][name] = expected

ir = {}
for side in ("old", "new"):
    output = here / f"{side}.ll"
    command = [str(clang), "-O2", "-march=x86-64-v3", "-fno-strict-aliasing",
               "-I", str(case / side), "-S", "-emit-llvm", "-x", "c", "-", "-o", str(output)]
    run = subprocess.run(command, input=(case / side / "xxhash.c").read_bytes(), capture_output=True)
    assert run.returncode == 0, run.stderr.decode()
    ir[side] = output.read_bytes()

assert ir["old"] == ir["new"]
definitions = re.findall(rb"^define dso_local .*? @([^(]+)\(", ir["old"], re.M)
assert len(definitions) == 17 and {b"XXH32", b"XXH64"} <= set(definitions)

checks = {}
for function in ("XXH32", "XXH64"):
    for direction, source, target in (("forward", "old", "new"), ("reverse", "new", "old")):
        command = [str(alive), "--func=" + function, "--always-verify",
                   str(here / f"{source}.ll"), str(here / f"{target}.ll")]
        run = subprocess.run(command, capture_output=True, text=True, timeout=60)
        log = run.stdout + run.stderr
        (here / f"{function}-{direction}.log").write_text(log)
        assert run.returncode == 0 and all(s in log for s in (
            "1 correct transformations", "0 incorrect transformations",
            "0 failed-to-prove transformations", "0 Alive2 errors")), (function, direction, log[-800:])
        checks[f"{function}_{direction}"] = "correct"

result = {
    "commit": commit,
    "parent": parent,
    "blobs": blobs,
    "compiler": subprocess.check_output([str(clang), "--version"], text=True).splitlines()[0],
    "flags": ["-O2", "-march=x86-64-v3", "-fno-strict-aliasing"],
    "full_module_ir_sha256": hashlib.sha256(ir["old"]).hexdigest(),
    "identical_exported_definitions": [name.decode() for name in definitions],
    "alive2": checks,
    "verdict": "EQUIV",
    "scope": "complete compiled xxhash.c module under Clang 20 x86-64-v3 -O2, default alignment macros; same externals and defined inputs",
    "limits": "other architectures, external macro overrides, source-level undefined behavior, and performance are not checked",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("17 identical exported LLVM definitions; 4/4 bidirectional public-hash Alive2 checks pass")
