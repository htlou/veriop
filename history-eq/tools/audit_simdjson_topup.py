#!/usr/bin/env python3
"""Audit exact changed source blobs for simdjson's seeded keyword top-up."""

import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/simdjson"
topup = next(x for x in json.loads((results / "topup-candidate-order.json").read_text())["repos"]
             if x["repo"] == "simdjson")
fixed = json.loads((results / "simdjson-pinned-sample-audit.json").read_text())
pin_record = next(x for x in json.loads((results / "pinned-samples.json").read_text())["repos"]
                  if x["repo"] == "simdjson")
assert fixed["pin"] == topup["pin"] and len(topup["order"]) == 148
assert pin_record["pin"] == topup["pin"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True,
                          text=True, check=True, env=env).stdout


assert git("rev-parse", "HEAD").strip() == topup["pin"]
entries, oids = [], set()
for draw, item in enumerate(topup["order"]):
    commit = item["commit"]
    raw = git("diff-tree", "--no-commit-id", "--no-renames", "--raw", "-r",
              commit + "^", commit, "--", *pin_record["scope"]).splitlines()
    changed = []
    for line in raw:
        fields, path = line.split("\t", 1)
        for oid in fields.split()[2:4]:
            if oid.strip("0"):
                changed.append({"path": path, "blob": oid})
                oids.add(oid)
    assert changed, commit
    message = git("cat-file", "-p", commit).split("\n\n", 1)[1]
    entries.append({"draw": draw, "commit": commit, "subject": item["subject"],
                    "message": message, "changed": changed})

check = subprocess.run(["git", "-C", str(repo), "cat-file", "--batch-check"],
                       input="".join(oid + "\n" for oid in sorted(oids)),
                       capture_output=True, text=True, check=True, env=env)
missing = {line.split()[0] for line in check.stdout.splitlines() if line.endswith(" missing")}
for entry in entries:
    entry["missing_changed_blobs"] = [x for x in entry.pop("changed") if x["blob"] in missing]

assert len(entries) == len({e["commit"] for e in entries}) == 148
complete = sum(not e["missing_changed_blobs"] for e in entries)
(results / "simdjson-topup-blob-audit.json").write_text(json.dumps({
    "repo": "simdjson", "pin": topup["pin"], "selection_seed": "veriop-history-v1",
    "entries": entries, "complete_changed_blobs": complete,
}, indent=2) + "\n")
print(json.dumps({"audited": len(entries), "complete_changed_blobs": complete,
                  "missing_changed_blobs": len(entries) - complete}))
