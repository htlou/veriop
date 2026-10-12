#!/usr/bin/env python3
"""Cross-reference Netty's fixed sample with source-screened historical changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "netty")
source = next(r for r in availability["repos"] if r["repo"] == "netty")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}

reviewed = {
    "1c1570ffc43de209f46465c526faa891bd6e4a87": {
        "screen": "confirmed_optimization", "checker_status": "pending",
        "reason": "Removes redundant ByteBuf read/write boundary checks across ten production classes; no pair-level checker result yet.",
        "evidence": "history-eq/java/netty/source-screening/1c1570ff.java.diff",
    },
    "59aec4b4dc61d3aeb6393d51a7155ef452fb29ee": {
        "screen": "confirmed_optimization", "checker_status": "pending",
        "reason": "Repairs and restores CompositeByteBuf's component-search fast path; no pair-level checker result yet.",
        "evidence": "history-eq/java/netty/source-screening/59aec4b4.java.diff",
    },
    "b2d2137c4404af425bf9d5d601a62576f5c06925": {
        "screen": "excluded_non_optimization", "checker_status": "not_run",
        "reason": "Reverts the component-search fast path and its branch-avoidance code; this is a rollback, not a new optimization.",
        "evidence": "history-eq/java/netty/source-screening/b2d2137c.java.diff",
    },
    "c2de195f872506dacd5df5cd5507b49e1669790d": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "NOT_EQUIV",
        "coverage": "public ByteString.equals on a valid subclass overriding hashCode to throw",
        "reason": "Exact historical equals bodies: old returns false on unequal lengths; child calls virtual hashCode and throws.",
        "evidence": "history-eq/java/netty/c2de195f/README.md",
    },
    "f3ef94d35edb7bc46013711a74343062bcca0878": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "IntObjectHashMap.hashIndex helper for a non-null positive-length keys array, sequential Java semantics",
        "reason": "KeY closes the exact historical helper-expression relation with 0 open goals; whole commit is not proved.",
        "evidence": "history-eq/java/netty/f3ef94d3/README.md",
    },
    "fc28cbbc8839feacfa1cb7cfbda209d9ab8bad3b": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "one-polled-handle Recycler claim transition when a non-null handle is AVAILABLE and no concurrent write races the old CAS",
        "reason": "KeY closes the exact-source-mapped local return/state relation with zero open goals; queue and concurrent behavior are unproved.",
        "evidence": "history-eq/java/netty/fc28cbbc/README.md",
    },
}
assert len(reviewed) == 6
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
            "reason": "At least one changed production-source blob is missing locally; optimization intent and checker scope have not been reviewed.",
        })
    entries.append(entry)
assert len(entries) == 200
summary = {
    "confirmed_optimizations": 5,
    "checked_optimizations": 3,
    "pending_checker_optimizations": 2,
    "excluded_non_optimizations": 1,
    "pending_intent_screening": 194,
    "verified_inequal": 1,
    "verified_equal_or_refinement_partial": 2,
    "unverified": 0,
    "unsupported": 0,
}
output = {
    "repo": "netty", "pin": sample["pin"], "sample_seed": samples["seed"],
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "sample_size": len(entries), "summary": summary, "entries": entries,
}
(results / "netty-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
