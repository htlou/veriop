#!/usr/bin/env python3
"""Cross-reference the fixed OpenZeppelin sample with source-audited proofs."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "openzeppelin-contracts")
source = next(r for r in availability["repos"] if r["repo"] == "openzeppelin-contracts")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}

reviewed = {
    "005a35b02a9469579f86a2ae5bec50882a191eb1": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV",
        "coverage": "both changed executable max functions, arbitrary uint256/int256 inputs",
        "reason": "Source-audited Z3 256-bit inequivalence queries are UNSAT; remaining change is a changelog.",
        "evidence": "history-eq/solidity/openzeppelin-contracts/005a35b0/README.md",
    },
    "17a8955cd8ed2c9a269421a11c2e2774b796e305": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "complete Math.log2(uint256) and Math.log256(uint256) functions for arbitrary 256-bit input",
        "reason": "Source-audited Z3 stage relations are UNSAT; changed rounding and mulDiv functions remain unchecked.",
        "evidence": "history-eq/solidity/openzeppelin-contracts/17a8955c/README.md",
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
assert len(entries) == 200
summary = {
    "confirmed_optimizations": 2,
    "checked_optimizations": 2,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 198,
    "verified_inequal": 0,
    "verified_equal_or_refinement_full": 1,
    "verified_equal_or_refinement_partial": 1,
    "unverified": 0,
    "unsupported": 0,
}
output = {
    "repo": "openzeppelin-contracts", "pin": sample["pin"],
    "sample_seed": samples["seed"], "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "openzeppelin-contracts-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
