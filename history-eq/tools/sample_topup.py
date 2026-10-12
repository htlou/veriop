#!/usr/bin/env python3
"""Order unreviewed performance-keyword candidates reproducibly after the fixed draw."""

import hashlib
import json
from pathlib import Path
import random

from sample_pinned import BENCH, KEYWORDS, SCOPE, SEED, git


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
fixed = json.loads((results / "pinned-samples.json").read_text())
assert fixed["seed"] == SEED and fixed["keyword_regex"] == KEYWORDS
output = {"seed": SEED, "method": "remaining keyword candidates shuffled after reproducing fixed draw",
          "scope": "keyword candidates, not confirmed optimizations", "repos": []}

for item in fixed["repos"]:
    name = item["repo"]
    repo = BENCH / "repos" / name
    assert git(repo, "rev-parse", "HEAD") == item["pin"]
    lines = git(repo, "log", "HEAD", "--no-merges", "--min-parents=1", "--format=%H%x09%aI%x09%s",
                "-i", "-E", f"--grep={KEYWORDS}", "--", *SCOPE[name]).splitlines()
    candidates = sorted(line.split("\t", 2) for line in lines)
    assert len(candidates) == item["keyword_candidates"]
    rng = random.Random(int.from_bytes(hashlib.sha256(f"{SEED}/{name}".encode()).digest(), "big"))
    chosen = rng.sample(candidates, min(200, len(candidates)))
    fixed_commits = {x["commit"] for x in item["sample"]}
    assert {x[0] for x in chosen} == fixed_commits
    remaining = [x for x in candidates if x[0] not in fixed_commits]
    rng.shuffle(remaining)
    ledger = json.loads((results / f"{name}-pinned-sample-audit.json").read_text())
    confirmed = sum(x.get("screen", x.get("classification")) in ("confirmed_optimization", "confirmed_performance")
                    for x in ledger.get("entries", ledger.get("items", [])))
    output["repos"].append({"repo": name, "pin": item["pin"], "source_commits": item["source_commits"],
                            "fixed_confirmed": confirmed, "remaining_keyword_candidates": len(remaining),
                            "max_keyword_confirmed": confirmed + len(remaining),
                            "keyword_deficit_to_200": max(0, 200 - confirmed),
                            "order": [{"commit": sha, "date": date, "subject": subject}
                                      for sha, date, subject in remaining]})

path = results / "topup-candidate-order.json"
path.write_text(json.dumps(output, indent=2, ensure_ascii=False) + "\n")
print(f"{len(output['repos'])} pinned repositories; {sum(len(x['order']) for x in output['repos'])} remaining keyword candidates")
