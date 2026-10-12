#!/usr/bin/env python3
"""Archive the exact changed historical Java sources and diff."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "d8dcfb17"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
full_commit = git("rev-parse", commit).decode().strip()
diff = git("diff", parent, full_commit, "--",
           "roaringbitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java",
           "roaringbitmap/src/main/java/org/roaringbitmap/buffer/ImmutableRoaringBitmap.java")
(here / "source.diff").write_bytes(diff)
manifest = {"commit": full_commit, "parent": parent,
            "source_sha256": {"source.diff": hashlib.sha256(diff).hexdigest()}}
for side, rev in (("old", parent), ("new", full_commit)):
    for name, path in (("RoaringBitmap", "roaringbitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java"),
                       ("ImmutableRoaringBitmap", "roaringbitmap/src/main/java/org/roaringbitmap/buffer/ImmutableRoaringBitmap.java")):
        data = git("show", f"{rev}:{path}")
        out = f"{name}.{side}.txt"
        (here / out).write_bytes(data)
        manifest["source_sha256"][out] = hashlib.sha256(data).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
