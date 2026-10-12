#!/usr/bin/env python3
"""Archive exact historical production Java sources for the copy optimization."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "87a0309ac879596ca8b3a6358bb2f116d0c56e07"
paths = [
    "RoaringBitmap/src/main/java/org/roaringbitmap/BitmapContainer.java",
    "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MappeableBitmapContainer.java",
    "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MutableRoaringArray.java",
]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {"source.diff": git("diff", parent, commit, "--", *paths)}
for side, rev in (("old", parent), ("new", commit)):
    for path in paths:
        files[f"{Path(path).stem}.{side}.txt"] = git("show", f"{rev}:{path}")
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
