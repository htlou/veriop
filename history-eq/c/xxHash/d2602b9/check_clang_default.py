#!/usr/bin/env python3
"""Replay the source-locked whole-TU Clang equivalence check for d2602b9."""

import json
import os
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
OUT = HERE / "clang-default-proof"
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
REV = "d2602b9"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, **kwargs):
    return subprocess.run(args, check=True, capture_output=True, text=True, env=ENV, **kwargs)


parent = run(["git", "-C", str(REPO), "rev-parse", REV + "^"]).stdout.strip()
child = run(["git", "-C", str(REPO), "rev-parse", REV]).stdout.strip()
changed = run(["git", "-C", str(REPO), "diff-tree", "--no-commit-id", "--name-only",
               "-r", parent, child]).stdout.splitlines()
assert changed == ["xxhash.h"]
blobs = {}
for name in ("xxhash.h", "xxhash.c"):
    for side, rev in (("old", parent), ("new", child)):
        expected = run(["git", "-C", str(REPO), "rev-parse", f"{rev}:{name}"]).stdout.strip()
        actual = run(["git", "hash-object", str(HERE / side / name)]).stdout.strip()
        assert actual == expected, (side, name)
        blobs[f"{side}/{name}"] = actual

old_header = (HERE / "old/xxhash.h").read_text()
new_header = (HERE / "new/xxhash.h").read_text()
old_guard = '#ifdef __GNUC__\n#  define XXH_COMPILER_GUARD(var) __asm__ __volatile__("" : "+r" (var))'
new_guard = '#if defined(__GNUC__) || defined(__clang__)\n#  define XXH_COMPILER_GUARD(var) __asm__ __volatile__("" : "+r" (var))'
assert old_header.count(old_guard) == 1
assert old_header.replace(old_guard, new_guard, 1) == new_header
assert blobs["old/xxhash.c"] == blobs["new/xxhash.c"]

macros = run([str(CLANG), "-dM", "-E", "-x", "c", "/dev/null"]).stdout
assert "#define __GNUC__ " in macros and "#define __clang__ 1" in macros
OUT.mkdir(exist_ok=True)
for side in ("old", "new"):
    run([str(CLANG), "-std=c99", "-O0", "-Drestrict=", "-E", "-P",
         "xxhash.c", "-o", str(OUT / f"{side}.i")], cwd=HERE / side)
assert (OUT / "old.i").read_bytes() == (OUT / "new.i").read_bytes()

for side in ("old", "new"):
    run([str(CLANG), "-std=c99", "-O0", "-Drestrict=", "-S", "-emit-llvm",
         "-fno-ident", "xxhash.c", "-o", str(OUT / f"{side}.ll")], cwd=HERE / side)
    ll = (OUT / f"{side}.ll").read_text()
    # Source-location metadata on inline asm is non-executable and unsupported by this Alive2 pin.
    assert len(re.findall(r", !srcloc !5\b", ll)) == 1
    assert len(re.findall(r"(?m)^!5 = !\{i64 \d+\}$", ll)) == 1
    ll = re.sub(r", !srcloc !5\b", "", ll)
    ll = re.sub(r"(?m)^!5 = !\{i64 \d+\}\n", "", ll)
    (OUT / f"{side}.ll").write_text(ll)
assert (OUT / "old.ll").read_bytes() == (OUT / "new.ll").read_bytes()
names = re.findall(r"(?m)^define .*?@([^ (]+)\(", (OUT / "old.ll").read_text())
assert len(names) == len(set(names)) == 111

for direction, first, second in (("forward", "old", "new"), ("backward", "new", "old")):
    result = run([str(ALIVE), str(OUT / f"{first}.ll"), str(OUT / f"{second}.ll"),
                  "--smt-to", "10000"])
    (OUT / f"alive-{direction}.log").write_text(result.stdout + result.stderr)
    assert "111 correct transformations" in result.stdout
    assert all(f"0 {kind}" in result.stdout for kind in
               ("incorrect transformations", "failed-to-prove transformations", "Alive2 errors"))

(OUT / "audit.json").write_text(json.dumps({
    "parent": parent, "child": child, "changed_paths": changed, "git_blobs": blobs,
    "compiler": "Clang 20 -std=c99 -O0 -Drestrict= on x86-64",
    "preprocessor": "whole xxhash.c translation units are byte-identical; __GNUC__ and __clang__ defined",
    "ir": "whole translation units byte-identical after removing only inline-asm source-location metadata",
    "functions": len(names), "forward": "111 correct", "backward": "111 correct",
    "scope": "Clang configurations defining __GNUC__; does not cover __clang__ without __GNUC__",
}, indent=2) + "\n")
(OUT / "result.json").write_text(json.dumps({
    "verdict": "EQUIV", "functions": {name: {"fwd": "correct", "bwd": "correct"} for name in names},
}, indent=2) + "\n")
print("111/111 whole-TU functions pass Alive2 in both directions under default Clang macros")
