#!/usr/bin/env python3
"""Cross-reference aws-lc's fixed sample with reviewed historical changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "aws-lc")
source = next(r for r in availability["repos"] if r["repo"] == "aws-lc")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}
reviewed = {
    "17cd6574bdb89744df61920efbe49d383963d8a2": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "direct poly_tomsg differs on unrestricted int16 input; reduced normal decryption path has a local equality proof; full API unchecked",
        "reason": "Alive2/native direct-function mismatch does not establish a reachable public API mismatch; no whole-API proof exists.",
        "evidence": "history-eq/c/aws-lc/17cd6574/README.md",
    },
}
entries = []
for item in sample["sample"]:
    commit = item["commit"]
    source_item = source_by_commit[commit]
    entry = {**item, "source_status": source_item["status"]}
    if commit in reviewed:
        assert source_item["status"] == "changed_blobs_available"
        entry.update(reviewed[commit])
    else:
        assert source_item["status"] == "missing_changed_blob"
        entry.update({
            "screen": "intent_pending", "checker_status": "not_run",
            "reason": "At least one changed source blob is missing locally; optimization intent and checker scope have not been reviewed.",
        })
    entries.append(entry)
assert len(entries) == 200
summary = {
    "confirmed_optimizations": 1,
    "checked_optimizations": 1,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 199,
    "verified_inequal": 0,
    "unverified": 1,
    "unsupported": 0,
}
output = {
    "repo": "aws-lc", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "aws-lc-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
