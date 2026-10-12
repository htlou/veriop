#!/usr/bin/env python3
"""Archive the exact old/new source of the array-append optimization."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "2f3b4093"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
child = git("rev-parse", commit).decode().strip()
changed = ["roaringbitmap/src/main/java/org/roaringbitmap/ArrayContainer.java",
           "roaringbitmap/src/main/java/org/roaringbitmap/buffer/MappeableArrayContainer.java"]
dependency = "roaringbitmap/src/main/java/org/roaringbitmap/Util.java"
diff = git("diff", parent, child, "--", *changed)
(here / "source.diff").write_bytes(diff)
manifest = {"commit": child, "parent": parent,
            "source_sha256": {"source.diff": hashlib.sha256(diff).hexdigest()}}
for side, rev in (("old", parent), ("new", child)):
    for path in [*changed, dependency]:
        data = git("show", f"{rev}:{path}")
        name = Path(path).stem + "." + side + ".txt"
        (here / name).write_bytes(data)
        manifest["source_sha256"][name] = hashlib.sha256(data).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
