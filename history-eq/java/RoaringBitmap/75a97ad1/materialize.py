#!/usr/bin/env python3
"""Save the exact before/after RoaringBitSet sources from local Git objects."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "75a97ad1e509e1e8765def1be2216aed99cc1009"
source_path = "RoaringBitmap/src/main/java/org/roaringbitmap/RoaringBitSet.java"
bitset_util_path = "RoaringBitmap/src/main/java/org/roaringbitmap/BitSetUtil.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "source_sha256": {}}
diff = git("diff", parent, commit, "--", source_path)
(here / "source.diff").write_bytes(diff)
manifest["source_sha256"]["source.diff"] = hashlib.sha256(diff).hexdigest()
for side, rev in (("old", parent), ("new", commit)):
    for name, path in (("RoaringBitSet", source_path), ("BitSetUtil", bitset_util_path)):
        data = git("show", f"{rev}:{path}")
        out = here / side / f"org/roaringbitmap/{name}.java"
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_bytes(data)
        manifest["source_sha256"][f"{side}/org/roaringbitmap/{name}.java"] = hashlib.sha256(data).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
