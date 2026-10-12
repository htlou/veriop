#!/usr/bin/env python3
"""Cross-reference s2n-bignum's fixed sample with screened assembly changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "s2n-bignum")
source = next(r for r in availability["repos"] if r["repo"] == "s2n-bignum")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}


def pending(reason, commit):
    return {
        "screen": "confirmed_optimization", "checker_status": "pending",
        "reason": reason,
        "evidence": f"history-eq/hol/s2n-bignum/source-screening/{commit[:8]}.source.diff",
    }


reviewed = {
    "0a681ce66047083a0c1a7de2d3747ca2dedcebb0": pending(
        "Rewrites ARM Curve25519 squaring and proof scripts; historical HOL Light relation unchecked.", "0a681ce6"),
    "19eac44af36f1043eef87db37892ad34d259d61a": pending(
        "Adds optimized 2048-bit squaring implementations; refinement to the existing squaring specification unchecked.", "19eac44a"),
    "7420a71733626356672b42a3939eb6882d579da0": pending(
        "Rewrites several x86 multiplication/squaring routines and proofs; relation unchecked.", "7420a717"),
    "91d4a8033cb8bad5504ffe3e58bb1dd7f67f3dcd": pending(
        "Adds alternate AVX2 Keccak X4 implementation and proof; historical theorem run unchecked.", "91d4a803"),
    "9f9dd0002c9ef5ab1db2ddb7d1fdaa26824c3b3b": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "x86 bignum_mul_8_16 changed assembly and its HOL Light proof script",
        "reason": "Both historical HOL Light runs stop in common libraries under installed OCaml 5.3.0 before target theorems.",
        "evidence": "history-eq/hol/s2n-bignum/9f9dd000/README.md",
    },
    "d1ef8cfa08845e4150f5b0a707a3b49f03f13055": pending(
        "Rewrites x86 modular-inverse inner loops and proof scripts; relation unchecked.", "d1ef8cfa"),
    "d830e3c5b91923fd1950bb30820bc4ae8dca3aa5": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "Eight x86 64-bit sign-magnitude rewrites: register outputs for all input words",
        "reason": "Source-matched QF_BV proof covers the local absolute-value idiom; flags, reordered arithmetic, full function, and HOL Light script remain unproved.",
        "evidence": "history-eq/hol/s2n-bignum/d830e3c5/README.md",
    },
    "f218286ceffe931fb295d8730eb105e871de4d6c": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "Both historical ARM P-256 montreds macros: four output words for all 64-bit input words under the mc constant",
        "reason": "Source-matched QF_BV proof covers each macro's outputs; changed scheduling, scratch registers, full functions, and HOL Light scripts remain unproved.",
        "evidence": "history-eq/hol/s2n-bignum/f218286c/README.md",
    },
}
assert len(reviewed) == 8
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
    "confirmed_optimizations": 8,
    "checked_optimizations": 3,
    "pending_checker_optimizations": 5,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 192,
    "verified_inequal": 0,
    "verified_equal_refine_partial": 2,
    "unverified": 1,
    "unsupported": 0,
}
output = {
    "repo": "s2n-bignum", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
target = results / "s2n-bignum-pinned-sample-audit.json"
if target.exists():
    current = json.loads(target.read_text())
    later_reviews = {e["commit"] for e in current["entries"] if e["screen"] != "intent_pending"} - reviewed.keys()
    assert not later_reviews, "bootstrap ledger generator would erase later reviews"
target.write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
