#!/usr/bin/env python3
"""Archive the exact source changed by RoaringBitmap 9079e41f."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "9079e41f913842d4ce53eec4f36c0c14e41dd587"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/RunContainer.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
diff = git("diff", parent, commit, "--", path)
files = {"source.diff": diff}
for side, rev in (("old", parent), ("new", commit)):
    files[f"RunContainer.{side}.txt"] = git("show", f"{rev}:{path}")
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(
    json.dumps({"commit": commit, "parent": parent,
                "source_sha256": {name: hashlib.sha256(data).hexdigest()
                                  for name, data in files.items()}}, indent=2) + "\n"
)
