#!/usr/bin/env python3
"""Archive the two exact production classes changed by the trim optimization."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "76cd34c685ce3027515711b332fe3c63b8f01c90"
paths = [
    "roaringbitmap/src/main/java/org/roaringbitmap/buffer/MutableRoaringArray.java",
    "roaringbitmap/src/main/java/org/roaringbitmap/buffer/MutableRoaringBitmap.java",
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
