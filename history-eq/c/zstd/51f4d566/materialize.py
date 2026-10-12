#!/usr/bin/env python3
"""Archive the exact changed zstd sources for static DTable inspection."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "51f4d566c231"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
child = git("rev-parse", commit).decode().strip()
paths = ["lib/common/zstd_internal.h", "lib/decompress/zstd_decompress.c"]
diff = git("diff", parent, child, "--", *paths)
(here / "source.diff").write_bytes(diff)
manifest = {"commit": child, "parent": parent,
            "source_sha256": {"source.diff": hashlib.sha256(diff).hexdigest()}}
for side, rev in (("old", parent), ("new", child)):
    for path in paths:
        data = git("show", f"{rev}:{path}")
        name = side + "-" + Path(path).name
        (here / name).write_bytes(data)
        manifest["source_sha256"][name] = hashlib.sha256(data).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
