#!/usr/bin/env python3
"""Archive the exact ART leaf-key rewrite and its source files."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "50904527"
paths = {
    "LeafNode": "roaringbitmap/src/main/java/org/roaringbitmap/art/LeafNode.java",
    "LongUtils": "roaringbitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


child = git("rev-parse", commit).decode().strip()
parent = git("rev-parse", commit + "^").decode().strip()
diff = git("diff", "--no-ext-diff", parent, child, "--", "roaringbitmap/src/main/java/")
assert diff
(here / "production.diff").write_bytes(diff)
record = {"parent": parent, "child": child, "diff_sha256": hashlib.sha256(diff).hexdigest(), "sources": {}}
for side, revision in (("old", parent), ("new", child)):
    record["sources"][side] = {}
    for name, path in paths.items():
        source = git("show", revision + ":" + path)
        (here / f"{name}.{side}.txt").write_bytes(source)
        record["sources"][side][name] = {"path": path, "sha256": hashlib.sha256(source).hexdigest()}
(here / "source_manifest.json").write_text(json.dumps(record, indent=2) + "\n")
print(child, "source archive complete")
