#!/usr/bin/env python3
"""Cross-reference EverParse's fixed sample with screened changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "everparse")
source = next(r for r in availability["repos"] if r["repo"] == "everparse")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}


def evidence(commit):
    return f"history-eq/fstar/everparse/source-screening/{commit[:8]}.source.diff"


def pending(reason, commit):
    return {"screen": "confirmed_optimization", "checker_status": "pending", "reason": reason, "evidence": evidence(commit)}


def excluded(reason, commit):
    return {"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason, "evidence": evidence(commit)}


reviewed = {
    "1b7a2d7b6f31c0f986f20b595267219950f7b791": pending(
        "Optimizes compile-time constant-size pairs in the 3D frontend; semantic relation unchecked.", "1b7a2d7b"),
    "60eee74821554e01ac0391af9ed445a417d8ce3c": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "historical OCaml F* validator/jumper generator source",
        "reason": "Selected F* checker rejects both OCaml generator revisions before semantic checking.",
        "evidence": "history-eq/fstar/everparse/60eee748/README.md",
    },
    "7d00c1b01527cd52bedc8ae3fa53c1d3961324de": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "two historical CBOR interface versions and their shared cbor_map_defined_alt lemma",
        "reason": "F* verifies both old/new interfaces; the shared lemma statement and body are unchanged after removing the old SMT trigger. Other changed modules and whole-commit behavior remain unchecked.",
        "evidence": "history-eq/fstar/everparse/7d00c1b0/README.md",
    },
    "ac8fab45b315593f461f8fb92b8586bd2844b8c4": excluded(
        "Adds lemmas about an existing CBOR uint64 optimization; no new optimized implementation path.", "ac8fab45"),
    "c4139dc250ffe7d875ee0693a253aa50f11cdd22": pending(
        "Removes redundant 3D frontend coercion reads; semantic relation unchecked.", "c4139dc2"),
    "e62a2dfecbbbbbc8fa2624ba7512bc215a2b360b": excluded(
        "Adds a correctness lemma for an existing CBOR uint64 optimization; no new optimized implementation path.", "e62a2dfe"),
    "e7707ba308df57467cccfd0f53fff60a2de29e92": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "historical Rust public CBORDet validator Aeneas attempt; historical C build attempt",
        "reason": "Aeneas rejects nested borrows in both public Rust validator dependency closures; C comparison cannot start because the exact historical header blob is unavailable locally.",
        "evidence": "history-eq/fstar/everparse/e7707ba3/README.md",
    },
    "eb2c2b44776fec3c03be861ddff8b736713285cc": excluded(
        "Adds existing CBOR optimization proof lemmas and fixes a validity predicate; no new performance implementation.", "eb2c2b44"),
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
    "confirmed_optimizations": 5,
    "checked_optimizations": 3,
    "pending_checker_optimizations": 2,
    "excluded_non_optimizations": 3,
    "pending_intent_screening": 192,
    "verified_inequal": 0,
    "verified_equal_partial": 1,
    "unverified": 0,
    "unsupported": 2,
}
output = {
    "repo": "everparse", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "everparse-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
