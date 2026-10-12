#!/usr/bin/env python3
"""Archive F*/build source diffs for HACL*'s locally available sample."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/hacl-star"
commits = (
    "011e8dc62", "1bd334e97", "1f18372ba", "209cc8405", "528a404ed",
    "5c1882530", "6a279c309", "a1aa8f9a5", "b3a9efa81",
)


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


for short in commits:
    commit = git("rev-parse", short).decode().strip()
    parent = git("rev-parse", commit + "^").decode().strip()
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines()
    selected = [
        path for path in paths
        if path.endswith((".fst", ".fsti")) or path.endswith(("/Makefile", "/Dockerfile"))
    ]
    assert selected, commit
    diff = git("diff", parent, commit, "--", *selected)
    assert diff, commit
    (here / f"{short[:8]}.source.diff").write_bytes(diff)
    (here / f"{short[:8]}.paths.txt").write_text("\n".join(selected) + "\n")
    print(f"{short[:8]}: {len(selected)} files, {len(diff)} diff bytes")
