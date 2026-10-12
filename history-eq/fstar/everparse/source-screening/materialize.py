#!/usr/bin/env python3
"""Archive EverParse production/spec diffs for locally available samples."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/everparse"
commits = (
    "1b7a2d7b6", "60eee7482", "7d00c1b01", "ac8fab45b",
    "c4139dc25", "e62a2dfec", "e7707ba30", "eb2c2b447",
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
    selected = [path for path in paths if path.startswith("src/")]
    assert selected, commit
    diff = git("diff", parent, commit, "--", *selected)
    assert diff, commit
    (here / f"{short[:8]}.source.diff").write_bytes(diff)
    (here / f"{short[:8]}.paths.txt").write_text("\n".join(selected) + "\n")
    print(f"{short[:8]}: {len(selected)} files, {len(diff)} diff bytes")
