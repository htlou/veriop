#!/usr/bin/env python3
"""Stage selected historical 3D F* sources with recorded newer fallbacks."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

base = Path(__file__).resolve().parent.parent
case = sys.argv[1] if len(sys.argv) > 1 else "c4139dc2"
cases = {
    "c4139dc2": ("c4139dc250ffe7d875ee0693a253aa50f11cdd22", 7, "c413"),
    "1b7a2d7b": ("1b7a2d7b6f31c0f986f20b595267219950f7b791", 6, "1b7"),
}
assert case in cases and len(sys.argv) <= 2
here = base / case
here.mkdir(exist_ok=True)
root = here.parents[3]
repo = root / "benchmarks/repos/everparse"
screen = base / "source-screening"
child, changed_count, stage_id = cases[case]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
changed = (screen / f"{case}.paths.txt").read_text().splitlines()
assert len(changed) == changed_count and all(p.startswith("src/3d/") and p.endswith((".fst", ".fsti")) for p in changed)
diff = git("diff", parent, child, "--", *changed)
assert diff == (screen / f"{case}.source.diff").read_bytes()
report = {"parent": parent, "child": child,
          "changed_diff_sha256": hashlib.sha256(diff).hexdigest(),
          "newer_support_revision": git("rev-parse", "HEAD").decode().strip(),
          "sides": {}}

for side, rev in (("old", parent), ("new", child)):
    stage = Path(f"/tmp/veriop-everparse-{stage_id}-{side}")
    if stage.exists():
        shutil.rmtree(stage)
    stage.mkdir()
    listing = git("ls-tree", "-r", rev, "--", "src/3d").decode().splitlines()
    files = [(line.split("\t", 1)[1], line.split("\t", 1)[0].split()[-1])
             for line in listing if line.endswith((".fst", ".fsti"))]
    status = {"exact": {}, "newer_fallback": [], "newer_extra": [], "unavailable": []}
    for path, oid in files:
        dst = stage / Path(path).relative_to("src/3d")
        dst.parent.mkdir(parents=True, exist_ok=True)
        available = subprocess.run(["git", "-C", str(repo), "cat-file", "-e", oid],
                                   env=env, stderr=subprocess.DEVNULL).returncode == 0
        if not available:
            fallback = repo / path
            if fallback.exists():
                dst.symlink_to(fallback)
                status["newer_fallback"].append(path)
            else:
                status["unavailable"].append(path)
        else:
            dst.write_bytes(git("show", oid))
            status["exact"][path] = oid
    assert all(p in status["exact"] for p in changed)
    for current in (repo / "src/3d").iterdir():
        if current.is_file() and current.name.endswith((".fst", ".fsti")):
            dst = stage / current.name
            if not dst.exists():
                dst.symlink_to(current)
                status["newer_extra"].append(current.name)
    report["sides"][side] = status

(here / "staging-manifest.json").write_text(json.dumps(report, indent=2) + "\n")
for side, status in report["sides"].items():
    print(side, "exact", len(status["exact"]), "newer fallbacks", len(status["newer_fallback"]),
          "newer extras", len(status["newer_extra"]), "unavailable", len(status["unavailable"]))
