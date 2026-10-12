#!/usr/bin/env python3
"""Archive the exact BitmapContainer source around historical ior change."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "bc06196c13e212cfbd1f740cdd9b98c6dd4e50d3"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/BitmapContainer.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {
    "source.diff": git("diff", parent, commit, "--", path),
    "BitmapContainer.old.txt": git("show", f"{parent}:{path}"),
    "BitmapContainer.new.txt": git("show", f"{commit}:{path}"),
}
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
