#!/usr/bin/env python3
"""Cross-reference EVM semantics' fixed sample with reviewed K changes."""

import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "evm-semantics")
source = next(r for r in availability["repos"] if r["repo"] == "evm-semantics")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}
lean_case = root / "history-eq/k/evm-semantics/bb3a2b89"
lean_proof = json.loads((lean_case / "lean-model-result.json").read_text())
assert lean_proof["child"] == "bb3a2b89e836baed498d06db54be11f3d18dd2ee"
assert lean_proof["verdict"] == "EQUIV_PARTIAL"
assert hashlib.sha256((lean_case / "JumpDestRelation.lean").read_bytes()).hexdigest() == lean_proof["lean_sha256"]
assert (lean_case / "lean-model.log").read_text().strip() == "exit_code=0"


reviewed = {
    "16dac735654df9593291de4bd0bceb729ebdeb02": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "all 11 edited optimization-rule trigger conditions in a stack-length abstraction, for valid DUP/SWAP indices",
        "reason": "Historical changed-file audit and Z3 guard-relation queries pass; unchanged 2024 K dependencies are unavailable, so full K semantics is not verified.",
        "evidence": "history-eq/k/evm-semantics/16dac735/README.md",
    },
    "66679e3856cad2420861507f0164a5535861d9f2": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "both added bool2Word simplification rules under the exact parent K semantics",
        "reason": "K proves both conditional rules against the parent definition (#Top); whole old/new KEVM proof search is not compared.",
        "evidence": "history-eq/k/evm-semantics/66679e38/README.md",
    },
    "a978756ffb2a6d66b45ced4df416bf8293492b00": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "two added Csstore comparison simplifications and two integer-inequality rewrites under their explicit K preconditions",
        "reason": "Historical K rules are source-audited; four direct Z3 counterexample queries are unsat. Whole-definition equivalence and proof-search behavior remain unchecked.",
        "evidence": "history-eq/k/evm-semantics/a978756f/README.md",
    },
    "bb3a2b89e836baed498d06db54be11f3d18dd2ee": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": lean_proof["scope"],
        "reason": "Lean proves all finite inputs for the source-mapped recursion; K relational claims still cover only bounded cases, and the complete K-function remains unproved.",
        "evidence": "history-eq/k/evm-semantics/bb3a2b89/README.md",
    },
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
assert len(entries) == 152
summary = {
    "confirmed_optimizations": 4,
    "checked_optimizations": 4,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 148,
    "verified_inequal": 0,
    "verified_equal_refinement_partial": 4,
    "unverified": 0,
    "unsupported": 0,
}
output = {
    "repo": "evm-semantics", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "evm-semantics-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
