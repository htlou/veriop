#!/usr/bin/env python3
"""Archive exact production diffs for confirmed and feature-only samples."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
sample = json.loads((root / "history-eq/results/pinned-samples.json").read_text())
sampled = next(item for item in sample["repos"] if item["repo"] == "RoaringBitmap")
ledger = json.loads((root / "history-eq/results/RoaringBitmap-pinned-sample-audit.json").read_text())
shorts = sorted({"07ec0dd3", "2884f89b", "39a6de27", "5d61acf4", "a068cf6a", "aa47718c", "b3c3edfe"}
                | {entry["commit"][:8] for entry in ledger["entries"]
                   if entry["screen"] == "confirmed_optimization"})
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


manifest = {"source_store": "benchmarks/repos/RoaringBitmap", "commits": {}}
for short in shorts:
    commit = next(item["commit"] for item in sampled["sample"] if item["commit"].startswith(short))
    assert git("rev-parse", commit).decode().strip() == commit
    parent = git("rev-parse", commit + "^").decode().strip()
    diff = git("diff", "--no-ext-diff", parent, commit, "--",
               "RoaringBitmap/src/main/java/", "roaringbitmap/src/main/java/")
    assert diff, commit
    (here / f"{short}.source.diff").write_bytes(diff)
    manifest["commits"][commit] = {"parent": parent, "diff_sha256": hashlib.sha256(diff).hexdigest()}

(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print(f"archived {len(shorts)} exact RoaringBitmap source diffs")
