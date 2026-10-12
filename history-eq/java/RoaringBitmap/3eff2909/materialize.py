#!/usr/bin/env python3
"""Archive exact historical FastAggregation sources and diff."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "3eff2909"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
full_commit = git("rev-parse", commit).decode().strip()
paths = ["roaringbitmap/src/main/java/org/roaringbitmap/FastAggregation.java",
         "roaringbitmap/src/main/java/org/roaringbitmap/buffer/BufferFastAggregation.java"]
dependency = "roaringbitmap/src/main/java/org/roaringbitmap/Util.java"
diff = git("diff", parent, full_commit, "--", *paths)
(here / "source.diff").write_bytes(diff)
manifest = {"commit": full_commit, "parent": parent,
            "source_sha256": {"source.diff": hashlib.sha256(diff).hexdigest()}}
for side, rev in (("old", parent), ("new", full_commit)):
    for path in [*paths, dependency]:
        data = git("show", f"{rev}:{path}")
        name = Path(path).stem + "." + side + ".txt"
        (here / name).write_bytes(data)
        manifest["source_sha256"][name] = hashlib.sha256(data).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
