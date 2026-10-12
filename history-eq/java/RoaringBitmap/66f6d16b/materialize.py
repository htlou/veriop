#!/usr/bin/env python3
"""Archive the exact ixor optimization and locally available dependencies."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "66f6d16b4e15718e41b3e7a45b092654d0f7d8b4"
base = "RoaringBitmap/src/main/java/org/roaringbitmap/"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {
    "source.diff": git("diff", parent, commit, "--", base + "BitmapContainer.java"),
    "BitmapContainer.old.txt": git("show", f"{parent}:{base}BitmapContainer.java"),
    "BitmapContainer.new.txt": git("show", f"{commit}:{base}BitmapContainer.java"),
    "ArrayContainer.shared.txt": git("show", f"{parent}:{base}ArrayContainer.java"),
    "Util.shared.txt": git("show", f"{parent}:{base}Util.java"),
}
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
