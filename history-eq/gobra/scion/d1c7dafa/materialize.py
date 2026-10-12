#!/usr/bin/env python3
"""Archive the exact Decoded.Reverse loop simplification."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/scion"
commit = "d1c7dafa2f499a775c2561aa6801ff678783923b"
path = "pkg/slayers/path/scion/decoded.go"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {"source.diff": git("diff", parent, commit, "--", path),
         "decoded.old.go": git("show", f"{parent}:{path}"),
         "decoded.new.go": git("show", f"{commit}:{path}")}
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
