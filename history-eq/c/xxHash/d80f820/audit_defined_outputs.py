#!/usr/bin/env python3
"""Audit the complete historical edit and the changed SIMD output checks."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

case = Path(__file__).resolve().parent
root = case.parents[3]
repo = root / "benchmarks/repos/xxHash"
commit = "d80f820834517bbc5beff82a08971196774debad"
old = (case / "old/xxhash.h").read_text()
new = (case / "new/xxhash.h").read_text()

def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, text=True,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout.strip()

assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == "xxhash.h"
blobs = {}
for side, rev in (("old", commit + "^:xxhash.h"), ("new", commit + ":xxhash.h")):
    blobs[side] = git("hash-object", str(case / side / "xxhash.h"))
    assert blobs[side] == git("rev-parse", rev)

# These six declaration-only replacements must account for every changed byte.
replacements = [
    ("XXH_ALIGN(64) const __m512i* const src  =", "const __m512i* const src  ="),
    ("XXH_ALIGN(64)       __m512i* const dest =", "      __m512i* const dest ="),
    ("XXH_ALIGN(64) const __m512i* cp;", "const __m512i* cp;"),
    ("XXH_ALIGN(64) void* p;", "void* p;"),
    ("XXH_ALIGN(64) const __m256i* const src  =", "const __m256i* const src  ="),
    ("XXH_ALIGN(64)       __m256i*       dest =", "      __m256i*       dest ="),
]
for before, after in replacements:
    assert old.count(before) == 1, before
    old = old.replace(before, after)
assert old == new
assert "#  define XXH_ALIGN(n)      __attribute__ ((aligned(n)))" in new
assert '#  define XXH_COMPILER_GUARD(var) __asm__ __volatile__("" : "+r" (var))' in new

avx2 = json.loads((case / "initsec-avx2/result.json").read_text())
assert avx2["functions"]["target_initsec"] == {
    "verdict": "EQUIV", "fwd": "correct", "bwd": "correct"}
for side in ("old", "new"):
    assert hashlib.sha256((case / "initsec-avx2" / f"{side}.ll").read_bytes()).hexdigest() == avx2[f"{side}_ll_sha256"]

avx512 = json.loads((case / "initsec-avx512/result.json").read_text())
assert avx512["old_ll_sha256"] == avx512["new_ll_sha256"]
assert avx512["functions"]["target_initsec"]["verdict"] == "UNSUPPORTED"
for side in ("old", "new"):
    raw = (case / "initsec-avx512" / f"{side}.ll").read_text()
    assert hashlib.sha256(raw.encode()).hexdigest() == avx512[f"{side}_ll_sha256"]
    normalized, removed = re.subn(r", !(?:nontemporal|noalias) !\d+", "", raw)
    assert removed == 6
    assert normalized == (case / "initsec-avx512" / f"{side}-normalized.ll").read_text()
for direction in ("fwd", "bwd"):
    log = (case / "initsec-avx512" / f"{direction}-normalized.log").read_text()
    assert "1 correct transformations" in log and "0 Alive2 errors" in log
assert (case / "initsec-avx512/old-normalized.ll").read_bytes() == (case / "initsec-avx512/new-normalized.ll").read_bytes()

result = {
    "commit": commit, "blobs": blobs, "changed_file": "xxhash.h",
    "source_edit": "six local pointer declarations lose XXH_ALIGN(64); complete remaining header is byte-identical",
    "avx2": "bidirectional Alive2, complete 192-byte secret for every 64-bit seed",
    "avx512": "old/new LLVM IR byte-identical; bidirectional Alive2 after symmetric metadata removal",
    "verdict": "EQUIV",
    "scope": "functional XXH3 outputs and streaming state for defined C executions; compiler diagnostics, generated machine code and timing excluded",
}
(case / "defined-outputs-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"], result["scope"])
