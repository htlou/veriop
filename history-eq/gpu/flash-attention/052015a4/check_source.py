#!/usr/bin/env python3
"""Audit exact historical CuTe Python inputs for the Volta scope check."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/flash-attention"
screen = here.parent / "source-screening"
child = "052015a43fe9419f2ff5e30d6df5160b2b305c63"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
paths = (screen / "052015a4.paths.txt").read_text().splitlines()
assert paths and all(path.endswith(".py") for path in paths)
diff = git("diff", parent, child, "--", *paths)
assert diff == (screen / "052015a4.source.diff").read_bytes()
report = {"parent": parent, "child": child,
          "diff_sha256": hashlib.sha256(diff).hexdigest(), "files": {}}
for side, rev in (("old", parent), ("new", child)):
    report["files"][side] = {}
    for path in paths:
        data = git("show", f"{rev}:{path}")
        report["files"][side][path] = {
            "git_oid": git("rev-parse", f"{rev}:{path}").decode().strip(),
            "sha256": hashlib.sha256(data).hexdigest(),
        }
        if path == "flash_attn/cute/mask.py":
            (here / f"mask-{side}.py").write_bytes(data)

(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("six exact historical Python file pairs and archived diff audited")
