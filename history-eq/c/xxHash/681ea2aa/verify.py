#!/usr/bin/env python3
"""Compare the exact historical XXH32 implementations on x86-64 with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
OLD = "107fd8f2a60611afd641aa4b53521ac042e533ec"
NEW = "681ea2aad6367279f8b82149de8657e9b17be8d6"
EXPECTED = {
    "old": {"xxhash.c": "3c5f560925617934c521db3e4d34d0eb8a19c395",
            "xxhash.h": "afdf243d5e108cb70f61df8a55d6ea26365480bc"},
    "new": {"xxhash.c": "6dacdcbc87b834f348c653a0710db50fb7473edb",
            "xxhash.h": "8cb06d39a0a826b92351b2732e7aad0815231c41"},
}
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
OPT = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"

assert subprocess.check_output(["git", "-C", str(REPO), "rev-parse", NEW + "^"], env=ENV, text=True).strip() == OLD
for side, revision in (("old", OLD), ("new", NEW)):
    for name, expected in EXPECTED[side].items():
        oid = subprocess.check_output(["git", "-C", str(REPO), "rev-parse", f"{revision}:{name}"], env=ENV, text=True).strip()
        assert oid == expected, (side, name, oid)
        blob = subprocess.check_output(["git", "-C", str(REPO), "cat-file", "blob", oid], env=ENV)
        assert subprocess.check_output(["git", "hash-object", "--stdin"], input=blob).decode().strip() == expected
        (HERE / side / name).write_bytes(blob)
    raw = HERE / f"{side}.ll"
    subprocess.run([str(CLANG), "-std=gnu11", "-O2", "-S", "-emit-llvm", str(HERE / side / "xxhash.c"), "-o", str(raw)], check=True)
    subprocess.run([str(OPT), "-passes=verify", "-disable-output", str(raw)], check=True)
    ir = raw.read_text()
    assert 'target triple = "x86_64-pc-linux-gnu"' in ir
    normalized = re.sub(r", ![A-Za-z0-9_.]+ !\d+", "", ir.replace(" nocapture", "").replace(" noalias", ""))
    normalized = "\n".join(line for line in normalized.splitlines() if not line.startswith("!")) + "\n"
    proof_ir = HERE / f"{side}-alive.ll"
    proof_ir.write_text(normalized)
    subprocess.run([str(OPT), "-passes=verify", "-disable-output", str(proof_ir)], check=True)
    function = re.search(r"^define[^\n]*@XXH32\([^\n]*\{.*?^\}", normalized, re.M | re.S)
    assert function, side
    (HERE / f"{side}-xxh32.ir").write_text(function.group())

assert (HERE / "old/xxhash.c").read_bytes() != (HERE / "new/xxhash.c").read_bytes()
assert (HERE / "old-xxh32.ir").read_bytes() == (HERE / "new-xxh32.ir").read_bytes()
assert all("@llvm.fshl.i32" in line for line in (HERE / "old-xxh32.ir").read_text().splitlines() if " call " in line)
(HERE / "source.diff").write_bytes(subprocess.check_output(["git", "-C", str(REPO), "show", "--format=", NEW], env=ENV))

checks = {}
for label, source, target in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
    result = subprocess.run([str(ALIVE), "--func=XXH32", "--always-verify", "--smt-to=120000", "-quiet",
                             str(HERE / f"{source}-alive.ll"), str(HERE / f"{target}-alive.ll")],
                            capture_output=True, text=True, timeout=180)
    log = result.stdout + result.stderr
    (HERE / f"{label}.log").write_text(log)
    assert result.returncode == 0 and "1 correct transformations" in log and "0 Alive2 errors" in log, (label, log)
    checks[label] = "correct"

result = {
    "commit": NEW, "parent": OLD, "verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNKNOWN",
    "scope": "XXH32 output and memory effects for the exact historical C implementations compiled for x86-64 by Clang 20 at -O2, over inputs defined in both LLVM modules",
    "source_blobs": EXPECTED, "normalized_xxh32_ir": "identical", "checks": checks,
    "sha256": {name: hashlib.sha256((HERE / name).read_bytes()).hexdigest()
               for name in ("old.ll", "new.ll", "old-alive.ll", "new-alive.ll", "old-xxh32.ir", "new-xxh32.ir")},
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "checks": checks}))
