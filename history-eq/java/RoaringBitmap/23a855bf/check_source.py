#!/usr/bin/env python3
"""Check that the archived LongUtils sources match the sampled Git pair."""

from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[4]
repo = root / "benchmarks/repos/RoaringBitmap"
here = Path(__file__).resolve().parent
src = "RoaringBitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java"
commit = "23a855bf2c1d31d6e29143c699a8219a17ca0d75"

for revision, filename in ((commit + "^", "LongUtils.old.txt"), (commit, "LongUtils.new.txt")):
    historical = subprocess.check_output(["git", "-C", str(repo), "show", f"{revision}:{src}"])
    assert historical == (here / filename).read_bytes(), filename

historical_diff = subprocess.check_output(
    ["git", "-C", str(repo), "diff", f"{commit}^", commit, "--", src]
)
assert historical_diff == (here / "longutils.diff").read_bytes()
print("Exact LongUtils parent, child, and diff match Git")
