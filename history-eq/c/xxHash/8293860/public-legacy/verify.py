#!/usr/bin/env python3
"""Check the exact historical XXH32/XXH64 one-shot paths for symbolic lengths."""

import hashlib
import json
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
case = here.parent
root = here.parents[4]
repo = root / "benchmarks/repos/xxHash"
commit = "829386063b27065e6fe2b3e88623f15c4903e785"
parent = "1c9f6ef789ac5cd2201e44848789a21b25730307"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
definition = re.compile(rb"(?ms)^define [^\n]+ @([^\(\n]+)\([^\n]*\) [^\n]*\{\n.*?^\}\n")


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True).strip()


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


assert git("rev-parse", commit + "^") == parent
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == ["xxhash.c"]
blobs = {}
modules = {}
for side, rev in (("old", parent), ("new", commit)):
    blobs[side] = {}
    for name in ("xxhash.c", "xxhash.h", "xxh3.h"):
        data = (case / side / name).read_bytes()
        expected = git("rev-parse", rev + ":" + name)
        assert oid(data) == expected, (side, name)
        blobs[side][name] = expected
    output = here / f"{side}.ll"
    command = [str(clang), "-O2", "-march=x86-64-v3", "-fno-strict-aliasing",
               "-I", str(case / side), "-S", "-emit-llvm", "-x", "c", "-", "-o", str(output)]
    run = subprocess.run(command, input=(case / side / "xxhash.c").read_bytes(), capture_output=True)
    assert run.returncode == 0, run.stderr.decode()
    modules[side] = output.read_bytes()
    checker_ir = output.read_text().replace(" nocapture", "")
    checker_ir = re.sub(r", !(?:noalias|alias\.scope|llvm\.loop|srcloc) !\d+", "", checker_ir)
    (here / f"{side}-tv.ll").write_text(checker_ir)

functions = [{m.group(1).decode(): m.group(0) for m in definition.finditer(modules[side])}
             for side in ("old", "new")]
for old, new in (("XXH32", "XXH32_finalize"), ("XXH64", "XXH64_finalize")):
    assert functions[0][new] == functions[1][new]
    expected_calls = {new, "llvm.fshl.i32" if old == "XXH32" else "llvm.fshl.i64"}
    for module in functions:
        calls = {x.decode() for x in re.findall(rb"\bcall\b[^\n]*?@([^\(\s]+)", module[old])}
        assert calls == expected_calls, (old, calls)

checks = {}
for name in ("XXH32", "XXH64"):
    for direction, source, target in (("forward", "old", "new"), ("reverse", "new", "old")):
        command = [str(alive), "--func=" + name, "--always-verify", "--smt-to=10000",
                   str(here / f"{source}-tv.ll"), str(here / f"{target}-tv.ll")]
        run = subprocess.run(command, capture_output=True, text=True, timeout=20)
        log = run.stdout + run.stderr
        (here / f"{name}-{direction}.log").write_text(log)
        assert run.returncode == 0 and all(s in log for s in (
            "1 correct transformations", "0 incorrect transformations",
            "0 failed-to-prove transformations", "0 Alive2 errors")), (name, direction, log[-800:])
        checks[f"{name}_{direction}"] = "correct"

result = {
    "commit": commit,
    "parent": parent,
    "blobs": blobs,
    "compiler": subprocess.check_output([str(clang), "--version"], text=True).splitlines()[0],
    "flags": ["-O2", "-march=x86-64-v3", "-fno-strict-aliasing"],
    "ir_sha256": {side: hashlib.sha256(modules[side]).hexdigest() for side in ("old", "new")},
    "unchanged_callees": ["XXH32_finalize", "XXH64_finalize"],
    "alive2": checks,
    "verdict": "EQUIV_PARTIAL",
    "scope": "public XXH32 and XXH64 one-shot return values for symbolic lengths, pointers, and seeds in defined Clang 20 x86-64-v3 C executions",
    "limits": "XXH3 and streaming functions, other targets/configurations, and whole-commit behavior remain unproved",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("public XXH32/XXH64 symbolic-length outputs: 4/4 bidirectional Alive2 checks pass")
