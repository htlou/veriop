#!/usr/bin/env python3
"""Check the complete old/new d2df04e C++17 module in one build scope."""

import hashlib
import json
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
case = here.parent
root = here.parents[4]
repo = root / "benchmarks/repos/xxHash"
commit = "d2df04efcbef7d7f6886d345861e5dfda4edacc1"
parent = "386a634f787ba728ef0aa50601514db74cf3b3f4"
clang = root / "alive2/toolchain/usr/bin/clang++-20"
alive = root / "alive2/build/alive2/alive-tv"
definition = re.compile(rb"(?ms)^define [^\n]+ @([^\(\n]+)\([^\n]*\) [^\n]*\{\n.*?^\}\n")
changed = {b"XXH32_update", b"XXH32_digest", b"XXH64_update", b"XXH64_digest"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True).strip()


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


assert git("rev-parse", commit + "^") == parent
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == ["xxhash.c"]
blobs = {}
ir = {}
for side, rev in (("old", parent), ("new", commit)):
    blobs[side] = {}
    for name in ("xxhash.c", "xxhash.h"):
        data = (case / side / name).read_bytes()
        expected = git("rev-parse", rev + ":" + name)
        assert oid(data) == expected, (side, name)
        blobs[side][name] = expected
    output = here / f"{side}.ll"
    command = [str(clang), "-std=c++17", "-O2", "-march=x86-64-v3", "-fno-strict-aliasing",
               "-I", str(case / side), "-S", "-emit-llvm", "-x", "c++", "-", "-o", str(output)]
    run = subprocess.run(command, input=(case / side / "xxhash.c").read_bytes(), capture_output=True)
    assert run.returncode == 0, run.stderr.decode()
    ir[side] = output.read_bytes()

definitions = [{m.group(1): m.group(0) for m in definition.finditer(ir[side])}
               for side in ("old", "new")]
assert len(definitions[0]) == len(definitions[1]) == 19
assert definitions[0].keys() == definitions[1].keys()
assert {name for name in definitions[0] if definitions[0][name] != definitions[1][name]} == changed


def mask_changed(module):
    return definition.sub(lambda m: b"define <checked " + m.group(1) + b">\n"
                          if m.group(1) in changed else m.group(0), module)


assert mask_changed(ir["old"]) == mask_changed(ir["new"])
# Alive2 cannot translate this historical Clang's nocapture hint; removing it on both sides broadens the checked inputs.
for side in ("old", "new"):
    (here / f"{side}-tv.ll").write_bytes(ir[side].replace(b" nocapture", b""))

checks = {}
for function in sorted(name.decode() for name in changed):
    for direction, source, target in (("forward", "old", "new"), ("reverse", "new", "old")):
        command = [str(alive), "--func=" + function, "--always-verify", "--smt-to=10000",
                   str(here / f"{source}-tv.ll"), str(here / f"{target}-tv.ll")]
        run = subprocess.run(command, capture_output=True, text=True, timeout=30)
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
    "flags": ["-std=c++17", "-O2", "-march=x86-64-v3", "-fno-strict-aliasing"],
    "ir_sha256": {side: hashlib.sha256(ir[side]).hexdigest() for side in ("old", "new")},
    "exported_definitions": len(definitions[0]),
    "changed_ir_definitions": sorted(name.decode() for name in changed),
    "alive2": checks,
    "verdict": "EQUIV",
    "scope": "complete compiled xxhash.c C++17 module under Clang 20 x86-64-v3 -O2, default macros; same externals and defined inputs",
    "limits": "other compilers, architectures, external macro overrides, ABI and performance are not checked",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("19 exported LLVM definitions; four changed definitions pass 8/8 bidirectional Alive2 checks")
