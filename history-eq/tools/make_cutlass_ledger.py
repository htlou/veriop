#!/usr/bin/env python3
"""Cross-reference CUTLASS's fixed sample with reviewed GPU changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "cutlass")
source = next(r for r in availability["repos"] if r["repo"] == "cutlass")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}
reviewed = {
    "1ab1027954bafc513cef2d3ca673d0e2c1eebb24": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "one historical SM80 f16 MMA specialization compiled to PTX",
        "reason": "Volta parses both PTX versions but rejects packed-f16 fragment loads before a semantic decision.",
        "evidence": "history-eq/gpu/cutlass/1ab10279/README.md",
    },
    "ade6376fa075df782e012457751169fe2a5a53b4": {
        "screen": "confirmed_optimization", "checker_status": "pending",
        "reason": "SM90 register-allocation change screened; exact changed headers are local, but the historical GEMM example and essential unchanged headers are missing from the object store, so no faithful instantiated kernel pair has been built or checked.",
        "evidence": "history-eq/gpu/cutlass/ade6376f/README.md",
    },
}
assert len(reviewed) == 2
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
assert len(entries) == 47
summary = {
    "confirmed_optimizations": 2,
    "checked_optimizations": 1,
    "pending_checker_optimizations": 1,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 45,
    "verified_inequal": 0,
    "unverified": 0,
    "unsupported": 1,
}
output = {
    "repo": "cutlass", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "cutlass-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
