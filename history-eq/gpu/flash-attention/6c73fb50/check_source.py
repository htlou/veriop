#!/usr/bin/env python3
"""Audit the two exact historical CuTe Python file pairs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/flash-attention"
screen = here.parent / "source-screening"
child = "6c73fb506fa84424c3fa04880f85c789b4a498e2"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
paths = (screen / "6c73fb50.paths.txt").read_text().splitlines()
assert len(paths) == 2 and all(path.endswith(".py") for path in paths)
diff = git("diff", parent, child, "--", *paths)
assert diff == (screen / "6c73fb50.source.diff").read_bytes()
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
        if path.endswith("sm100_hd256_2cta_fmha_forward.py"):
            (here / f"hd256-{side}.py").write_bytes(data)

assert b"ex2_emulation_2" not in (here / "hd256-old.py").read_bytes()
assert b"ex2_emulation_2" in (here / "hd256-new.py").read_bytes()
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("two exact historical Python file pairs and archived diff audited")
