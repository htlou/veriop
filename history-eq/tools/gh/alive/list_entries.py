#!/usr/bin/env python3
"""List not-yet-checked ledger entries with changed-file extension summary."""
import json, subprocess, sys, collections, os
ROOT = "/srv/home/hantaolou/code/veriop"
repo, ledger = sys.argv[1], sys.argv[2]
d = json.load(open(ledger))
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
for e in d["entries"]:
    if e.get("checker_status") == "checked":
        continue
    c = e["commit"]
    r = subprocess.run(["git", "-C", f"{ROOT}/benchmarks/repos/{repo}", "diff-tree", "-r", "--name-only", "--no-commit-id", f"{c}^1", c],
                       capture_output=True, text=True, env=env)
    files = r.stdout.split()
    ext = collections.Counter(os.path.splitext(f)[1] or os.path.basename(f) for f in files)
    print(c[:10], dict(ext), "|", e["subject"][:70])
