#!/usr/bin/env python3
"""Cross-reference the fixed compress sample with reviewed historical changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "compress")
source = next(r for r in availability["repos"] if r["repo"] == "compress")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}

reviewed = {
    "301db50e8be5c5c3b2f4d07c8530024cdd8a7dd6": {
        "screen": "confirmed_optimization",
        "checker_status": "checked",
        "verdict": "EQUIV_PARTIAL",
        "coverage": "constructed hcode bit length and post-write nbytes/error update; complete flate writer unchecked",
        "reason": "Gobra verifies both source-audited local relations, not whole compressed output.",
        "evidence": "history-eq/gobra/compress/301db50e/README.md",
    },
    "31b99fb25891c5029c4ce786455141372f0de6c3": {
        "screen": "confirmed_optimization",
        "checker_status": "checked",
        "verdict": "UNKNOWN",
        "coverage": "load3232/load6432 three-index-slice rewrite",
        "reason": "Gobra accepts the historical slice syntax but cannot establish permissions for the sliced view.",
        "evidence": "history-eq/gobra/compress/31b99fb/README.md",
    },
    "42f9d969024a20735148e3577d4b602ed4d0590a": {
        "screen": "excluded_non_optimization",
        "checker_status": "not_run",
        "reason": "Adds a new xpress decompression package and tests; no existing decompressor before/after path is optimized.",
        "evidence": "history-eq/gobra/compress/source-screening/42f9d969.source.diff",
    },
}
assert len(reviewed) == 3
entries = []
for item in sample["sample"]:
    commit = item["commit"]
    source_item = source_by_commit[commit]
    entry = {**item, "source_status": source_item["status"]}
    if commit in reviewed:
        assert source_item["status"] == "changed_blobs_available"
        entry.update(reviewed[commit])
    else:
        entry.update({
            "screen": "intent_pending",
            "checker_status": "not_run",
            "reason": "At least one changed source blob is missing locally; optimization intent and checker scope have not been reviewed.",
        })
        assert source_item["status"] == "missing_changed_blob"
    entries.append(entry)
assert len(entries) == 200
summary = {
    "confirmed_optimizations": 2,
    "checked_optimizations": 2,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 1,
    "pending_intent_screening": 197,
    "verified_inequal": 0,
    "verified_equal_or_refinement_partial": 1,
    "unverified": 1,
    "unsupported": 0,
}
output = {
    "repo": "compress",
    "pin": sample["pin"],
    "sample_seed": samples["seed"],
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "sample_size": len(entries),
    "summary": summary,
    "entries": entries,
}
(results / "compress-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
