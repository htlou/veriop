#!/usr/bin/env python3
"""Audit exact historical changed blobs in one repository's seeded keyword top-up."""

import json
import os
from pathlib import Path
import subprocess
import sys


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
name = sys.argv[1] if len(sys.argv) == 2 else None
topup = json.loads((results / "topup-candidate-order.json").read_text())
item = next((x for x in topup["repos"] if x["repo"] == name), None)
assert item is not None, "Pass one repository name from topup-candidate-order.json"
pin = next(x for x in json.loads((results / "pinned-samples.json").read_text())["repos"]
           if x["repo"] == name)
assert pin["pin"] == item["pin"]
repo = root / "benchmarks/repos" / name
stores = [repo]
alternate = root / "history-eq/repos" / name
if (alternate / ".git").exists():
    stores.append(alternate)
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(store, *args, input=None):
    return subprocess.run(["git", "-C", str(store), *args], input=input,
                          capture_output=True, text=True, errors="replace",
                          check=True, env=env).stdout


assert git(repo, "rev-parse", "HEAD").strip() == pin["pin"]
entries, oids = [], set()
for draw, candidate in enumerate(item["order"]):
    commit = candidate["commit"]
    raw = git(repo, "diff-tree", "--no-commit-id", "--no-renames", "--raw", "-r",
              commit + "^", commit, "--", *pin["scope"]).splitlines()
    changed = []
    for line in raw:
        fields, path = line.split("\t", 1)
        for oid in fields.split()[2:4]:
            if oid.strip("0"):
                changed.append({"path": path, "blob": oid})
                oids.add(oid)
    assert changed, commit
    message = git(repo, "cat-file", "-p", commit).split("\n\n", 1)[1]
    entries.append({"draw": draw, "commit": commit, "subject": candidate["subject"],
                    "message": message, "changed": changed})

query = "".join(oid + "\n" for oid in sorted(oids))
missing = {}
for store in stores:
    check = git(store, "cat-file", "--batch-check", input=query)
    missing[store] = {line.split()[0] for line in check.splitlines() if line.endswith(" missing")}
for entry in entries:
    entry["missing_changed_blobs"] = [x for x in entry.pop("changed")
                                      if all(x["blob"] in missing[store] for store in stores)]

assert len(entries) == len({x["commit"] for x in entries}) == len(item["order"])
complete = sum(not x["missing_changed_blobs"] for x in entries)
(results / f"{name}-topup-blob-audit.json").write_text(json.dumps({
    "repo": name, "pin": pin["pin"], "selection_seed": topup["seed"],
    "stores": [str(x.relative_to(root)) for x in stores], "entries": entries,
    "complete_changed_blobs": complete,
}, indent=2) + "\n")
print(json.dumps({"repo": name, "audited": len(entries),
                  "complete_changed_blobs": complete,
                  "missing_changed_blobs": len(entries) - complete}))
