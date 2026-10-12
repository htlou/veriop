#!/usr/bin/env python3
"""Cross-reference Kontrol's fixed sample with reviewed performance changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "kontrol")
source = next(r for r in availability["repos"] if r["repo"] == "kontrol")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}


def pending(reason, commit):
    return {
        "screen": "confirmed_optimization", "checker_status": "pending",
        "reason": reason,
        "evidence": f"history-eq/k/kontrol/source-screening/{commit[:8]}.source.diff",
    }


reviewed = {
    "1c2e6775f2938aec5ec8c001b0662a53199f2bf1": pending(
        "Changes Kontrol compilation optimization flags; no before/after program relation check yet.",
        "1c2e6775",
    ),
    "7c6fac72b72bac71b563ae9d8781daafbef8b5d6": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "Python proof-loading optimization; K kprove attempted on historical Python source",
        "reason": "kprove rejects Python source before semantic relation checking.",
        "evidence": "history-eq/k/kontrol/7c6fac72/README.md",
    },
    "a70c6644cebd354dfacac3a383e1147235758dab": pending(
        "Adds K EVM no-stack-checks and related proof/compilation optimizations; semantic relation unchecked.",
        "a70c6644",
    ),
    "c8906a194631e4b959458abdef5cf9da31bdc002": pending(
        "Prebuilds optimized K definition and changes Kontrol build/loading source; semantic relation unchecked.",
        "c8906a19",
    ),
}
assert len(reviewed) == 4
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
assert len(entries) == 70
summary = {
    "confirmed_optimizations": 4,
    "checked_optimizations": 1,
    "pending_checker_optimizations": 3,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 66,
    "verified_inequal": 0,
    "unverified": 0,
    "unsupported": 1,
}
output = {
    "repo": "kontrol", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "kontrol-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
