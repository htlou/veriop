#!/usr/bin/env python3
"""Archive semantic/proof-source diffs for locally available EVM samples."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/evm-semantics"
commits = ("16dac7356", "66679e385", "a978756ff", "bb3a2b89e")


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
        if path.endswith((".k", ".md", ".py", ".toml")) and "/tests/" not in path and not path.startswith("tests/")
    ]
    assert selected, commit
    diff = git("diff", parent, commit, "--", *selected)
    assert diff, commit
    (here / f"{short[:8]}.source.diff").write_bytes(diff)
    (here / f"{short[:8]}.paths.txt").write_text("\n".join(selected) + "\n")
    print(f"{short[:8]}: {len(selected)} files, {len(diff)} diff bytes")
