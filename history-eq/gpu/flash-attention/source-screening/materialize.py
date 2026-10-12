#!/usr/bin/env python3
"""Archive source/config diffs for locally available FlashAttention samples."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/flash-attention"
commits = (
    "002cce0a1068f8c07dfccb5a1d232b9a3276947c",
    "052015a43fe9419f2ff5e30d6df5160b2b305c63",
    "0823cf7b5d96499c1c79a4f64b1e256a035ba4b4",
    "1c523c1ce1139a73a00818183a9a992238c849bf",
    "25e6d94496fa5d4eb39a0ee28884fc8f142af1e5",
    "6c73fb506fa84424c3fa04880f85c789b4a498e2",
    "73bd3f3bbb6775c5286e4b095efbc62d9fd4e5dd",
    "8d454a3a9336954dae75013958dc3903ce781b66",
    "df5fe55264e4b59dcb1ce8e83f2e900bba164e92",
)
extensions = (".py", ".cu", ".cuh", ".cpp", ".hpp", ".h", ".toml")


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


for commit in commits:
    parent = git("rev-parse", commit + "^").decode().strip()
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines()
    selected = [path for path in paths if path.endswith(extensions) and not path.startswith("benchmarks/")]
    assert selected, commit
    diff = git("diff", parent, commit, "--", *selected)
    assert diff, commit
    (here / f"{commit[:8]}.source.diff").write_bytes(diff)
    (here / f"{commit[:8]}.paths.txt").write_text("\n".join(selected) + "\n")
    print(f"{commit[:8]}: {len(selected)} files, {len(diff)} diff bytes")
