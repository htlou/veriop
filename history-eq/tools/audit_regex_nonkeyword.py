#!/usr/bin/env python3
"""Record exact changed-blob availability outside regex's fixed keyword sample."""

import json
import os
from pathlib import Path
import random
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/regex"
pin_record = next(x for x in json.loads((results / "pinned-samples.json").read_text())["repos"]
                  if x["repo"] == "regex")
fixed = json.loads((results / "regex-pinned-sample-audit.json").read_text())
assert fixed["pin"] == pin_record["pin"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                          check=True, env=env).stdout.strip()


fixed_ids = {e["commit"] for e in fixed["items"]}
history = git("log", pin_record["pin"], "--no-merges", "--min-parents=1", "--format=%H",
              "--", *pin_record["scope"]).splitlines()
assert len(history) == 710 and len(fixed_ids) == 162
nonkeyword = [commit for commit in history if commit not in fixed_ids]
assert len(nonkeyword) == 548
entries = []
for commit in nonkeyword:
    message = git("cat-file", "-p", commit).split("\n\n", 1)[1]
    raw = git("diff-tree", "--no-commit-id", "--raw", "-r", commit,
              "--", *pin_record["scope"]).splitlines()
    paths, blobs = [], []
    for line in raw:
        if not line.startswith(":"):
            continue
        ids, path = line.split("\t", 1)
        paths.append(path)
        blobs.extend(sha for sha in ids.split()[2:4] if sha != "0" * 40)
    missing = [sha for sha in blobs if subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-e", sha], capture_output=True, env=env
    ).returncode]
    assert paths and blobs, commit
    entries.append({"commit": commit, "subject": message.splitlines()[0],
                    "changed_paths": paths, "changed_blob_count": len(blobs),
                    "missing_changed_blob_ids": missing})

complete = [e for e in entries if not e["missing_changed_blob_ids"]]
assert len(complete) == 6
random_order = [e["commit"] for e in entries]
random.Random("veriop-history-v1:regex:nonkeyword").shuffle(random_order)
(results / "regex-nonkeyword-source-availability.json").write_text(json.dumps({
    "repo": "regex", "pin": pin_record["pin"], "source_commits": len(history),
    "fixed_keyword_candidates": len(fixed_ids), "nonkeyword_commits": len(entries),
    "changed_blobs_complete": len(complete), "selection_seed": "veriop-history-v1:regex:nonkeyword",
    "seeded_nonkeyword_order": random_order, "entries": entries,
}, indent=2) + "\n")
print(json.dumps({"source": len(history), "nonkeyword": len(entries),
                  "complete": len(complete), "gapped": len(entries) - len(complete)}))
