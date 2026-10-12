#!/usr/bin/env python3
"""Screen FlashAttention's first seeded nonkeyword source-commit draw."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "flash-attention-nonkeyword-first200-blob-audit.json").read_text())
fixed = json.loads((results / "flash-attention-pinned-sample-audit.json").read_text())
assert audit["pin"] == fixed["pin"]

confirmed = {
    19, 20, 48, 55, 61, 73, 75, 78, 79, 84, 95, 98,
    99, 103, 106, 117, 119, 139, 151, 154, 186, 187,
}
unresolved = {
    41: "GEMM PTX tweak has no stated resource objective.",
    137: "Shared-memory address adjustment has no stated resource objective.",
    166: "Scheduler margin change has no stated resource objective.",
}
unsupported = {20, 75, 117, 119, 139}
reasons = {
    19: "Changes producer/consumer wait ordering in the forward kernel pipeline.",
    20: "Adds precomputed scheduler metadata; this changes host launch state beyond a kernel pair.",
    48: "Avoids register spilling in SM100 softmax warps.",
    55: "Uses warp reduction primitives in the forward combine and softmax paths.",
    73: "Splits the backward accumulator layout across two warp groups.",
    75: "Tunes tile sizes for compilation, outside a PTX output-equivalence relation.",
    78: "Reduces barrier-signalling threads to one per warp.",
    79: "Introduces TMA and warp specialization in SM90 attention forward.",
    84: "Introduces intra-warpgroup overlap in SM90 attention forward.",
    95: "Combines the dK and dV backward pipelines.",
    103: "Uses one Q stage for inference and repurposes softmax warps for loads.",
    106: "Uses a two-stage head-dimension-256 config alongside a backward-layout fix.",
    117: "Parallelizes split-KV templated kernel compilation.",
    119: "Enables 2-CTA backward execution, outside Volta's CTA-0 comparison.",
    139: "Adds programmatic dependent launch between preprocessing and backward kernels.",
    187: "Removes an unneeded predicated PTX instruction.",
}
assert unsupported <= confirmed and not (confirmed & unresolved.keys())
screened = []
for entry in audit["entries"]:
    draw = entry["draw"]
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in unresolved else "excluded_non_optimization")
    item = {"draw": draw, "commit": entry["commit"], "subject": entry["subject"],
            "screen": status,
            "reason": reasons.get(draw, entry["subject"] if draw in confirmed else
                      unresolved.get(draw, "No old-path performance or resource objective established.")),
            "missing_changed_blobs": entry["missing_changed_blobs"]}
    if draw in confirmed:
        assert entry["missing_changed_blobs"], entry["commit"]
        item.update({"source_status": "missing_changed_blob", "checker_status": "not_run",
                     "verdict": "UNSUPPORTED" if draw in unsupported else "UNKNOWN",
                     "coverage": "metadata intent/scope screen; exact historical old/new source unavailable"})
    screened.append(item)

original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
added = [e for e in screened if e["screen"] == "confirmed_optimization"]
sample = original + added
assert len(screened) == 200 and len(original) == 72 and len(added) == len(confirmed) == 22
assert len({e["commit"] for e in sample}) == len(sample) == 94

(results / "flash-attention-nonkeyword-first200-screen.json").write_text(json.dumps({
    "repo": "flash-attention", "pin": audit["pin"], "draws_reviewed": len(screened),
    "confirmed_optimizations": len(added), "intent_unresolved": len(unresolved),
    "entries": screened,
}, indent=2) + "\n")
(results / "flash-attention-optimization-sample.json").write_text(json.dumps({
    "repo": "flash-attention", "pin": audit["pin"],
    "selection": "all fixed keyword candidates plus first 200 seeded nonkeyword source commits after intent screening",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": len(added),
                  "sample": len(sample), "unsupported_scope": len(unsupported),
                  "intent_unresolved": len(unresolved)}))
