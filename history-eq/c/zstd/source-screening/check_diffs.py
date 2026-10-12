#!/usr/bin/env python3
"""Verify saved source diffs against the pinned zstd Git history."""

from pathlib import Path
import os
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/zstd"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

diffs = sorted(here.glob("*.source.diff"))
assert len(diffs) == 12, len(diffs)
for saved in diffs:
    commit = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", saved.name[:12]], env=env
    ).decode().strip()
    actual = subprocess.check_output(
        ["git", "-C", str(repo), "diff", commit + "^", commit, "--", "lib/"], env=env
    )
    assert saved.read_bytes() == actual, saved.name
print("12 source diffs match their historical Git parent/child commits")
