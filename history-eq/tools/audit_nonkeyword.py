#!/usr/bin/env python3
"""Audit a seeded draw of source commits outside the keyword population."""

import hashlib
import json
import os
from pathlib import Path
import random
import subprocess
import sys


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
name = sys.argv[1] if len(sys.argv) in (2, 3) else None
pins = json.loads((results / "pinned-samples.json").read_text())["repos"]
assert name in {item["repo"] for item in pins}
limit = int(sys.argv[2]) if len(sys.argv) == 3 else 200
assert limit > 0
fixed = next(x for x in pins if x["repo"] == name)
topup = next(x for x in json.loads((results / "topup-candidate-order.json").read_text())["repos"]
             if x["repo"] == name)
assert fixed["pin"] == topup["pin"]
repo = root / "benchmarks/repos" / name
stores = [repo]
for base in ("history-eq/repos", "aeneas/repos", "alive2/repos", "cuda/repos"):
    alternate = root / base / name
    if (alternate / ".git").exists():
        stores.append(alternate)
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args, input=None):
    return subprocess.run(["git", "-C", str(repo), *args], input=input,
                          capture_output=True, text=True, errors="replace", check=True, env=env).stdout


assert git("rev-parse", "HEAD").strip() == fixed["pin"]
keyword = {x["commit"] for x in fixed["sample"]} | {x["commit"] for x in topup["order"]}
assert len(keyword) == fixed["keyword_candidates"]
history = [line.split("\t", 1) for line in git(
    "log", fixed["pin"], "--no-merges", "--min-parents=1", "--format=%H%x09%s",
    "--", *fixed["scope"]).splitlines()]
assert len(history) == fixed["source_commits"]
nonkeyword = [(sha, subject) for sha, subject in history if sha not in keyword]
seed = f"veriop-history-v1:{name}:nonkeyword"
random.Random(int.from_bytes(hashlib.sha256(seed.encode()).digest(), "big")).shuffle(nonkeyword)
selected = nonkeyword[:limit]
assert len(selected) == min(limit, len(nonkeyword))

entries, oids = [], set()
for draw, (commit, subject) in enumerate(selected):
    raw = git("diff-tree", "--no-commit-id", "--no-renames", "--raw", "-r",
              commit + "^", commit, "--", *fixed["scope"]).splitlines()
    changed = []
    for line in raw:
        fields, path = line.split("\t", 1)
        for oid in fields.split()[2:4]:
            if oid.strip("0"):
                changed.append({"path": path, "blob": oid})
                oids.add(oid)
    assert changed, commit
    message = git("cat-file", "-p", commit).split("\n\n", 1)[1]
    entries.append({"draw": draw, "commit": commit, "subject": subject,
                    "message": message, "changed": changed})

query = "".join(oid + "\n" for oid in sorted(oids))
missing = []
for store in stores:
    check = subprocess.run(["git", "-C", str(store), "cat-file", "--batch-check"],
                           input=query, capture_output=True, text=True, errors="replace",
                           check=True, env=env).stdout
    missing.append({line.split()[0] for line in check.splitlines() if line.endswith(" missing")})
for entry in entries:
    entry["missing_changed_blobs"] = [x for x in entry.pop("changed")
                                      if all(x["blob"] in unavailable for unavailable in missing)]

assert len({e["commit"] for e in entries}) == len(selected)
complete = sum(not e["missing_changed_blobs"] for e in entries)
(results / f"{name}-nonkeyword-first{len(selected)}-blob-audit.json").write_text(json.dumps({
    "repo": name, "pin": fixed["pin"], "selection_seed": seed,
    "stores": [str(x.relative_to(root)) for x in stores],
    "source_commits": len(history), "keyword_candidates": len(keyword),
    "nonkeyword_commits": len(nonkeyword), "draws_reviewed": len(entries),
    "complete_changed_blobs": complete, "entries": entries,
}, indent=2) + "\n")
print(json.dumps({"repo": name, "nonkeyword": len(nonkeyword), "drawn": len(entries),
                  "complete_changed_blobs": complete}))
