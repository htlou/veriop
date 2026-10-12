#!/usr/bin/env python3
"""Audit the entire historical header and translation unit for an inlining-only edit."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/bin/clang-20"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, text=True, env=env).stdout.strip()


full = git("rev-parse", "c5a6a14^{commit}")
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", full).splitlines() == ["xxhash.h"]
blobs = {}
for side, rev in (("old", full + "^"), ("new", full)):
    blobs[side] = {}
    for name in ("xxhash.h", "xxhash.c"):
        path = here / side / name
        oid = subprocess.run(["git", "hash-object", str(path)], check=True,
                             capture_output=True, text=True).stdout.strip()
        assert oid == git("rev-parse", f"{rev}:{name}")
        blobs[side][name] = oid
assert blobs["old"]["xxhash.c"] == blobs["new"]["xxhash.c"]

old = (here / "old/xxhash.h").read_text()
new = (here / "new/xxhash.h").read_text()
macro = """#if defined(XXH_INLINE_ALL)
#  define XXH_STATIC XXH_FORCE_INLINE
#else
#  define XXH_STATIC static
#endif

"""
needle = "XXH_FORCE_INLINE XXH_PUREF xxh_u64\nXXH64_finalize("
assert old.count("#if XXH3_INLINE_SECRET\n") == 1
assert old.count(needle) == 1
expected = old.replace("#if XXH3_INLINE_SECRET\n", macro + "#if XXH3_INLINE_SECRET\n", 1)
expected = expected.replace(needle, "XXH_STATIC XXH_PUREF xxh_u64\nXXH64_finalize(", 1)
assert expected == new
assert len(re.findall(r"\bXXH_STATIC\b", new)) == 3  # two definitions and one declaration
assert all(line.split("XXH_FORCE_INLINE ", 1)[1].startswith("static")
           for line in old.splitlines() if "define XXH_FORCE_INLINE " in line)


def preprocess(side, flags):
    return subprocess.run([str(clang), "-std=c99", "-Drestrict=", "-E", "-P", *flags,
                           "xxhash.c"], cwd=here / side, check=True,
                          capture_output=True, text=True).stdout


modes = {}
for name, flags in (("default", []), ("forced_hints", ["-DXXH_NO_INLINE_HINTS=0"]),
                    ("inline_all", ["-DXXH_INLINE_ALL"]),
                    ("inline_all_no_hints", ["-DXXH_INLINE_ALL", "-DXXH_NO_INLINE_HINTS=1"])):
    before = preprocess("old", flags)
    after = preprocess("new", flags)
    head = before.split("\nXXH64_finalize(", 1)[0].splitlines()[-1]
    tail = after.split("\nXXH64_finalize(", 1)[0].splitlines()[-1]
    if "inline_all" in name:
        assert before == after
    else:
        assert head.startswith("static ") and tail == "static __attribute__((__pure__)) xxh_u64"
        assert before.count(head + "\nXXH64_finalize(") == 1
        assert before.replace(head + "\nXXH64_finalize(",
                              tail + "\nXXH64_finalize(", 1) == after
    assert before.replace("XXH64_finalize(", "XXH64_finalize_changed(", 1) != after
    modes[name] = {"flags": flags, "old_preprocessed_sha256": hashlib.sha256(before.encode()).hexdigest(),
                   "new_preprocessed_sha256": hashlib.sha256(after.encode()).hexdigest(),
                   "difference": "none" if before == after else "XXH64_finalize declaration attributes only"}

(here / "declaration-proof.json").write_text(json.dumps({
    "commit": full, "changed_paths": ["xxhash.h"], "historical_blob_oids": blobs,
    "source_audit": "the complete header changes only an XXH_STATIC macro and the XXH64_finalize declaration; the function body and callers are unchanged",
    "preprocessor": "Clang 20 x86-64 -std=c99 -Drestrict=; complete xxhash.c translation unit",
    "modes": modes,
    "negative_control": "renaming the function in one preprocessed unit breaks equality",
    "verdict": "EQUIV",
    "scope": "functional XXH64 outputs and defined memory writes for valid C calls in normal implementation and XXH_INLINE_ALL modes; excludes compile-time macro inspection, compiler diagnostics, timing, and undefined C executions",
}, indent=2) + "\n")
print("whole-header edit and four complete Clang translation units audited; negative control differs")
