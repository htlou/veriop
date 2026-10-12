#!/usr/bin/env python3
"""Recover and verify both exact historical Util.java files."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "12f1d205b475fe39c7ee31fada2c3811dc61c0e8"
source = "RoaringBitmap/src/main/java/org/roaringbitmap/Util.java"

for revision, name in ((commit + "^", "Util.old.txt"), (commit, "Util.new.txt")):
    data = subprocess.check_output(["git", "-C", str(repo), "show", f"{revision}:{source}"])
    target = here / name
    if target.exists():
        assert target.read_bytes() == data, name
    else:
        target.write_bytes(data)

diff = subprocess.check_output(["git", "-C", str(repo), "diff", commit + "^", commit])
target = here / "source.diff"
if target.exists():
    assert target.read_bytes() == diff
else:
    target.write_bytes(diff)
changed = subprocess.check_output(
    ["git", "-C", str(repo), "diff", "--name-only", commit + "^", commit]
).decode().splitlines()
assert changed == [source], changed
print("Both exact Util.java revisions and the sole production diff match Git")
