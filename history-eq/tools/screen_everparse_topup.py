#!/usr/bin/env python3
"""Screen all remaining seeded EverParse keyword candidates."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "everparse-topup-blob-audit.json").read_text())
fixed = json.loads((results / "everparse-pinned-sample-audit.json").read_text())
assert audit["pin"] == fixed["pin"]

# Positions in the pinned seeded order, reviewed from messages and changed paths.
confirmed = {
    16, 18, 23, 24, 26, 30, 51, 54, 55, 56, 59, 65, 71, 75,
    81, 82, 87, 90, 94, 99, 101, 109, 118, 122, 136, 139,
    148, 151, 152, 159, 168, 172, 187, 191, 193, 200, 202,
    204, 216, 218,
}
unresolved = {
    11: "Avoids an extraction blacklist without a stated speed or size objective.",
    68: "Changes count-sum computation without stating a resource objective.",
    131: "Makes generated helpers static inline to repair cross-unit linkage; speed intent is unclear.",
    142: "Disables read_header inlining without identifying the resource effect.",
    145: "Removes a duplicate validator without stating a resource objective.",
}
unsupported = {
    24, 54, 55, 56, 71, 90, 148, 151, 152, 191, 204, 218,
}
reasons = {
    18: "Introduces depth-first branch-trace search for proof exploration.",
    30: "Separates proof branches to reduce LoopBody verification memory.",
    54: "Reduces generated parser-kind terms after an extraction memory blowup.",
    55: "Avoids generating validation loops for unconstrained arrays.",
    71: "Bundled historical commit message explicitly includes a synth-case optimization.",
    75: "Inlines error-handler coercion lets to remove generated C locals.",
    90: "Replaces generated slice constructions and calls with direct pointer reads.",
    99: "Removes FStar.Bytes-based byte paths from generated Pulse code.",
    122: "Uses lemmas to reduce solver context pollution.",
    152: "Emits an already parsed CDDL AST instead of reparsing at verification time.",
    187: "Splits ParseBranch to reduce peak verification memory.",
    191: "Tunes ifuel for faster T8 verification.",
    193: "Splits LoopBody to reduce verification memory.",
    200: "Rewrites a lemma to reduce locally rather than issue an SMT query.",
    204: "Commit explicitly attempts to speed up dsum bytesize proof work.",
    218: "Emits runtime helpers as static inline to avoid a separate generated object.",
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
                      unresolved.get(draw, "No validator, proof, extraction, or runtime resource objective established.")),
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
assert len(screened) == 220 and len(original) == 41 and len(added) == len(confirmed) == 40
assert len({e["commit"] for e in sample}) == len(sample) == 81

(results / "everparse-topup-intent-screen.json").write_text(json.dumps({
    "repo": "everparse", "pin": audit["pin"], "draws_reviewed": len(screened),
    "confirmed_optimizations": len(added), "intent_unresolved": len(unresolved),
    "entries": screened,
}, indent=2) + "\n")
(results / "everparse-optimization-sample.json").write_text(json.dumps({
    "repo": "everparse", "pin": audit["pin"],
    "selection": "all fixed 200 and all 220 remaining seeded keyword candidates after intent screening",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": len(added),
                  "sample": len(sample), "unsupported_scope": len(unsupported),
                  "intent_unresolved": len(unresolved)}))
