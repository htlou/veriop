#!/usr/bin/env python3
"""Archive changed Java-source diffs for Netty's locally available sample."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/netty"
commits = (
    "1c1570ffc43de209f46465c526faa891bd6e4a87",
    "59aec4b4dc61d3aeb6393d51a7155ef452fb29ee",
    "b2d2137c4404af425bf9d5d601a62576f5c06925",
    "fc28cbbc8839feacfa1cb7cfbda209d9ab8bad3b",
)


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


for commit in commits:
    parent = git("rev-parse", commit + "^").decode().strip()
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines()
    java_paths = [path for path in paths if path.endswith(".java") and "/src/main/" in path]
    assert java_paths
    patch = git("diff", parent, commit, "--", *java_paths)
    assert patch
    (here / f"{commit[:8]}.java.diff").write_bytes(patch)
    (here / f"{commit[:8]}.paths.txt").write_text("\n".join(java_paths) + "\n")
    print(f"{commit[:8]}: {len(java_paths)} Java files, {len(patch)} diff bytes")
