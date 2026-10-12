#!/usr/bin/env python3
"""Cross-reference HACL*'s fixed sample with screened F* changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "hacl-star")
source = next(r for r in availability["repos"] if r["repo"] == "hacl-star")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}


def evidence(commit):
    return f"history-eq/fstar/hacl-star/source-screening/{commit[:8]}.source.diff"


def pending(reason, commit):
    return {"screen": "confirmed_optimization", "checker_status": "pending", "reason": reason, "evidence": evidence(commit)}


def excluded(reason, commit):
    return {"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason, "evidence": evidence(commit)}


reviewed = {
    "011e8dc629848c8f382aa29da574f35329507e05": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "all eight changed Ed25519/K256 precomputation callback invocations under F* source-level state-transformer semantics",
        "reason": "Exact historical source audit matches the wrappers and F* proves the direct/wrapped calls equal; extraction and public APIs remain unchecked.",
        "evidence": "history-eq/fstar/hacl-star/011e8dc6/README.md",
    },
    "1bd334e9752b26664d30a884179aae4d2a40fdb2": excluded(
        "Adds a new SHA2 constants module in a snapshot; no existing computation is replaced.", "1bd334e9"),
    "1f18372ba66051d9a781ed8a75f5af441779bdd2": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "source-mapped P256 modp_inv2_pow arithmetic for every natural x and modulus greater than three",
        "reason": "Lean proves the historical pow and exp recurrences equal modulo n for every natural x; historical F* verification still times out.",
        "evidence": "history-eq/fstar/hacl-star/1f18372b/README.md",
    },
    "209cc840590640aedab066ac02955c53a338f6ca": excluded(
        "Adds a snapshot-building Dockerfile; no existing cryptographic implementation changes.", "209cc840"),
    "528a404ede9ff017edc5d0707e752bc648402350": excluded(
        "Adds an experimental incremental HMAC module from a branch; no old implementation path is optimized.", "528a404e"),
    "5c1882530f7d935330855424f9865b002798230c": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "exact old/new HPKE implementation blobs submitted to installed F* with the same current HACL* include paths",
        "reason": "Both checks stop on a mixed-revision HPKE interface before the historical target; the exact historical interface blob is unavailable locally.",
        "evidence": "history-eq/fstar/hacl-star/5c188253/README.md",
    },
    "6a279c30997faca82599a29ff89f6899ed2a9c3f": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "exact SHA2 hash_st historical interface blobs submitted separately to installed F*; extraction unverified",
        "reason": "The source type body is byte-identical apart from inline_for_extraction, but both F* runs stop at unavailable historical Spec.Hash.Common before the target; generated C is absent.",
        "evidence": "history-eq/fstar/hacl-star/6a279c30/README.md",
    },
    "a1aa8f9a547745a506dfddab34df668b0a88f4e4": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "SHA1 message schedule, historical parent/child F* modules",
        "reason": "Both installed-F* attempts fail in unchanged Spec.Lib dependency before the target optimization is checked.",
        "evidence": "history-eq/fstar/hacl-star/a1aa8f9a/README.md",
    },
    "b3a9efa8172956837172f41f8ef070a9601b4f93": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "exact historical HPKE F* blobs and both installed-F* compatibility attempts",
        "reason": "Ten changes only remove extraction annotations, but both F* runs stop in unchanged dependencies before extraction; generated-C equivalence is untested.",
        "evidence": "history-eq/fstar/hacl-star/b3a9efa81/README.md",
    },
}
assert len(reviewed) == 9
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
    "confirmed_optimizations": 6,
    "checked_optimizations": 6,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 3,
    "pending_intent_screening": 191,
    "verified_inequal": 0,
    "verified_equal_refinement_partial": 2,
    "unverified": 4,
    "unsupported": 0,
}
output = {
    "repo": "hacl-star", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "hacl-star-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
