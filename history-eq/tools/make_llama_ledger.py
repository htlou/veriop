#!/usr/bin/env python3
"""Cross-reference llama.cpp's fixed sample with its Volta case study."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "llama.cpp")
source = next(r for r in availability["repos"] if r["repo"] == "llama.cpp")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}
reviewed = {
    "661ae31c9c68201577e70278285b349a5a662caf": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "unfused 256-column RMS_NORM specialization, all 256 outputs, Volta real-number model",
        "reason": "Volta reports EQUIVALENT for the selected historical PTX pair; fused paths and other shapes remain unchecked.",
        "evidence": "history-eq/gpu/llama.cpp/661ae31c/README.md",
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
    "verified_equal_or_refinement_partial": 1,
    "unverified": 0,
    "unsupported": 0,
}
output = {
    "repo": "llama.cpp", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "llama.cpp-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
