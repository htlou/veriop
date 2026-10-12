#!/usr/bin/env python3
"""Screen CUTLASS's first seeded nonkeyword source-commit draw."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "cutlass-nonkeyword-first200-blob-audit.json").read_text())
full_audit = json.loads((results / "cutlass-nonkeyword-first416-blob-audit.json").read_text())
fixed = json.loads((results / "cutlass-pinned-sample-audit.json").read_text())
assert audit["pin"] == full_audit["pin"] == fixed["pin"]
assert len(full_audit["entries"]) == 416
assert [e["commit"] for e in full_audit["entries"][:200]] == [e["commit"] for e in audit["entries"]]

confirmed = {3, 22, 55, 96, 114, 128, 132, 143, 151}
unresolved = {
    9: "Release adds raster-order scheduling but does not state a resource objective.",
    13: "Stream-K update has no stated resource objective or exact source locally.",
    80: "Fused-epilogue enhancements are unspecified in the message.",
    88: "Adds a cluster-launch configuration without a stated performance objective.",
    158: "Changes the device min helper without a stated speed or size objective.",
}
unsupported = {3, 22, 96, 128}
reasons = {
    3: "Enables fused convolution epilogues on Volta Tensor Cores, adding a new path.",
    22: "Lazily imports pydot to reduce Python startup work, outside PTX comparison.",
    55: "Enables L2 prefetch for Clang-compiled kernels.",
    96: "Lazily imports scipy to reduce Python startup work, outside PTX comparison.",
    114: "Repairs epilogue register spilling, a kernel resource issue.",
    128: "Adds CTA/cluster tile configurations to the kernel generator, with no old same-config pair.",
    132: "Enables L2 prefetch by default for cp.async.",
    143: "Replaces division with multiplication in the existing GELU path.",
    151: "Removes duplicate function calls in an existing source path.",
}
assert unsupported <= confirmed and not (confirmed & unresolved.keys())
screened = []
for entry in audit["entries"]:
    draw = entry["draw"]
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in unresolved else "excluded_non_optimization")
    item = {"draw": draw, "commit": entry["commit"], "subject": entry["subject"],
            "screen": status,
            "reason": reasons.get(draw, unresolved.get(draw,
                      "No performance or resource objective established for the changed behavior.")),
            "missing_changed_blobs": entry["missing_changed_blobs"]}
    if draw in confirmed:
        assert entry["missing_changed_blobs"], entry["commit"]
        item.update({"source_status": "missing_changed_blob", "checker_status": "not_run",
                     "verdict": "UNSUPPORTED" if draw in unsupported else "UNKNOWN",
                     "coverage": "metadata intent/scope screen; exact historical old/new source unavailable"})
    screened.append(item)

original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
added = [e for e in screened if e["screen"] == "confirmed_optimization"]
tail = json.loads((results / "cutlass-nonkeyword-tail-selection.json").read_text())["selected"]
extra = json.loads((results / "cutlass-nonkeyword-extra-screen.json").read_text())
by_draw = {e["draw"]: e for e in full_audit["entries"]}
assert [e["draw"] for e in tail] == [215, 313, 316]
assert all(e["commit"] == by_draw[e["draw"]]["commit"] and by_draw[e["draw"]]["missing_changed_blobs"] for e in tail)
assert extra["draw"] == 389 and extra["commit"] == by_draw[389]["commit"]
extra_item = {"draw": 389, "commit": extra["commit"], "subject": extra["subject"],
              "screen": "confirmed_optimization", "reason": extra["performance_intent"],
              "source_status": "missing_changed_blob", "checker_status": "not_run",
              "verdict": "UNSUPPORTED", "checker_target": "Volta",
              "coverage": "Python name-generation work lies outside the PTX kernel-pair relation",
              "selected_by": "seeded-nonkeyword",
              "evidence": "history-eq/results/cutlass-nonkeyword-extra-screen.json"}
hoist_source = by_draw[228]
assert hoist_source["commit"].startswith("e1b2ec57") and hoist_source["missing_changed_blobs"]
hoist = {"draw": 228, "commit": hoist_source["commit"], "subject": hoist_source["subject"],
         "screen": "confirmed_optimization", "reason": "Hoists waits in existing SM90 GEMM kernels.",
         "missing_changed_blobs": hoist_source["missing_changed_blobs"],
         "source_status": "missing_changed_blob", "checker_status": "not_run",
         "verdict": "UNKNOWN", "checker_target": "Volta",
         "coverage": "exact historical changed headers unavailable; no PTX pair built",
         "selected_by": "seeded-nonkeyword",
         "evidence": "history-eq/results/cutlass-nonkeyword-hoist-screen.md"}
additional = {
    262: ("UNKNOWN", "Removes a redundant definition and initialization from an existing shared-load iterator."),
    367: ("UNSUPPORTED", "Relaxes Stream-K alignment checks, making that optimized schedule applicable to more inputs."),
    387: ("UNKNOWN", "Removes redundant conjugation operations from existing matrix traits."),
    396: ("UNSUPPORTED", "Defers CUDA Python imports to reduce module startup work."),
}
new_items = []
for draw, (verdict, reason) in additional.items():
    source = by_draw[draw]
    assert source["missing_changed_blobs"], source["commit"]
    new_items.append({"draw": draw, "commit": source["commit"], "subject": source["subject"],
                      "message": source["message"], "screen": "confirmed_optimization",
                      "reason": reason, "missing_changed_blobs": source["missing_changed_blobs"],
                      "source_status": "missing_changed_blob", "checker_status": "not_run",
                      "verdict": verdict, "checker_target": "Volta",
                      "coverage": "historical changed source unavailable; Python/host dispatch changes exceed the PTX kernel-pair relation" if verdict == "UNSUPPORTED" else
                                  "historical changed source unavailable; no PTX pair built",
                      "selected_by": "seeded-nonkeyword",
                      "evidence": "history-eq/results/cutlass-nonkeyword-additional-screen.json"})
sample = original + added + tail + [extra_item, hoist] + new_items
assert len(screened) == 200 and len(original) == 25 and len(added) == len(confirmed) == 9
assert len({e["commit"] for e in sample}) == len(sample) == 43

(results / "cutlass-nonkeyword-first200-screen.json").write_text(json.dumps({
    "repo": "cutlass", "pin": audit["pin"], "draws_reviewed": len(screened),
    "confirmed_optimizations": len(added), "intent_unresolved": len(unresolved),
    "entries": screened,
}, indent=2) + "\n")
(results / "cutlass-nonkeyword-additional-screen.json").write_text(json.dumps({
    "repo": "cutlass", "pin": audit["pin"], "source_audit": "cutlass-nonkeyword-first416-blob-audit.json",
    "scope": "four explicit optimization intents in later seeded nonkeyword draws; all exact changed blobs missing",
    "entries": new_items,
}, indent=2) + "\n")
(results / "cutlass-optimization-sample.json").write_text(json.dumps({
    "repo": "cutlass", "pin": audit["pin"],
    "selection": "fixed keyword candidates plus screened seeded nonkeyword commits; later draws added only on explicit optimization intent, not a complete tail intent census",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": len(added) + len(tail) + 2 + len(new_items),
                  "sample": len(sample), "unsupported_scope": len(unsupported),
                  "intent_unresolved": len(unresolved)}))
