#!/usr/bin/env python3
"""Archive the exact historical computeProcID optimization sources."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/scion"
commit = "4c9c342047d9bbaa1f8bb722cf55a29de581a669"
paths = ["router/dataplane.go", "router/fnv1aCheap.go", "router/dataplane_internal_test.go"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {"source.diff": git("diff", parent, commit, "--", *paths)}
for path in paths:
    name = Path(path).name
    files[f"{name}.old"] = git("show", f"{parent}:{path}") if path != "router/fnv1aCheap.go" else b""
    files[f"{name}.new"] = git("show", f"{commit}:{path}")
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
