#!/usr/bin/env python3
"""Archive production-source diffs for locally available simdjson samples."""

import os
import json
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/simdjson"
commits = (
    "06856ec92",
    "12b518578",
    "1421ae9ce",
    "1a195623a",
    "314356d56",
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
    production = [path for path in paths if path.startswith(("include/", "src/"))]
    assert production, commit
    diff = git("diff", parent, commit, "--", *production)
    assert diff, commit
    (here / f"{short[:8]}.source.diff").write_bytes(diff)
    (here / f"{short[:8]}.paths.txt").write_text("\n".join(production) + "\n")
    print(f"{short[:8]}: {len(production)} files, {len(diff)} diff bytes")

missing_full_source = {}
for short in ("12b518578", "1a195623a"):
    commit = git("rev-parse", short).decode().strip()
    sides = {}
    for side, revision in (("old", commit + "^"), ("new", commit)):
        tree = git("ls-tree", "-r", revision, "--", "include", "src").decode().splitlines()
        missing = {}
        for item in tree:
            header, path = item.split("\t", 1)
            oid = header.split()[2]
            available = subprocess.run(
                ["git", "-C", str(repo), "cat-file", "-e", oid],
                capture_output=True, env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
            )
            if available.returncode:
                missing[path] = oid
        sides[side] = {"revision": git("rev-parse", revision).decode().strip(),
                       "source_files": len(tree), "missing_unchanged_blobs": missing}
    assert sides["old"]["missing_unchanged_blobs"] == sides["new"]["missing_unchanged_blobs"]
    missing_full_source[commit] = sides
(here / "missing-full-source.json").write_text(json.dumps(missing_full_source, indent=2) + "\n")
