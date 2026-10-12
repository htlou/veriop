#!/usr/bin/env python3
"""Screen the complete seeded nonkeyword fast_float source history by intent."""
from collections import Counter
import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "fast_float-nonkeyword-first302-blob-audit.json").read_text())
fixed = json.loads((results / "fast_float-pinned-sample-audit.json").read_text())
assert audit["pin"] == fixed["pin"] and audit["draws_reviewed"] == audit["nonkeyword_commits"] == 302

confirmed = {
    77: "Moves a mode-independent mantissa bound before the rounding-mode probe on the parsing path.",
    83: "Enables the existing four-digit SWAR fraction fast path on compilers beyond Clang.",
    120: "Uses a compile-time predicate to gate a subnormal tie test on the conversion path.",
    181: "Skips leading-zero work during number parsing.",
    254: "Adds unlikely branch hints to parsing helpers.",
}
unresolved = {
    96: "Removing a fallback might avoid work, but the unavailable diff and message do not establish intent.",
    200: "The message says only 'Tuning'; the exact changed source is unavailable.",
    210: "The message says 'Simplified clinger' without a performance claim; exact changed source is unavailable.",
    283: "The message says only 'Minor tuning'; exact changed source is unavailable.",
}
excluded = {
    280: "Upstream's one-line diff replaces memmove with copy_backward for overlapping limbs; no runtime speed objective or measurement is stated.",
}
assert not (confirmed.keys() & unresolved.keys())
assert not (excluded.keys() & (confirmed.keys() | unresolved.keys()))
screened = []
for entry in audit["entries"]:
    draw = entry["draw"]
    if draw == 280:
        assert entry["commit"] == "e464bd77853c137aeaff388a3b9f578e35b74b36"
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in unresolved else "excluded_non_optimization")
    screened.append({"draw": draw, "commit": entry["commit"], "subject": entry["subject"],
                     "screen": status, "reason": confirmed.get(draw, unresolved.get(draw, excluded.get(draw,
                         "No runtime performance objective established by the commit message and changed-path audit."))),
                     "missing_changed_blobs": entry["missing_changed_blobs"]})
    if draw == 280:
        screened[-1]["source_review"] = "https://github.com/fastfloat/fast_float/commit/e464bd77853c137aeaff388a3b9f578e35b74b36"

verdict = {"verified_inequal": "NOT_EQUIV", "verified_equal_partial": "EQUIV_PARTIAL",
           "unverified": "UNKNOWN", "unsupported": "UNSUPPORTED"}
sample = [{"commit": item["commit"], "subject": item["subject"], "selected_by": "keyword",
           "screen": "confirmed_optimization", "verdict": verdict[item["checker_verdict"]],
           "coverage": item.get("coverage", "see per-case evidence"), "checker_target": "Alive2", "checker_status": "checked",
           "evidence": item["evidence"]}
          for item in fixed["items"] if item["classification"] == "confirmed_performance"]
public = json.loads((root / "history-eq/c/fast_float/265cb849/public-relation.json").read_text())
matched = [item for item in sample if item["commit"] == public["commit"]]
assert len(matched) == 1 and matched[0]["verdict"] == "EQUIV_PARTIAL"
assert public["verdict"] == "EQUIV" and public["bidirectional"]
assert public["alive2"] == {"c++11": 12, "c++14": 12, "c++17": 12, "c++20": 15}
matched[0].update({"verdict": "EQUIV", "checker_target": "exact-source public-call audit + Alive2",
                   "coverage": public["scope"],
                   "evidence": "history-eq/c/fast_float/265cb849/README.md"})
partial = json.loads((root / "history-eq/c/fast_float/a7249f86/revalidated-overflow.json").read_text())
assert partial["verdict"] == "EQUIV_PARTIAL" and len(partial["checks"]) == 2
matched = [item for item in sample if item["commit"] == partial["commit"]]
assert len(matched) == 1 and matched[0]["verdict"] == "UNKNOWN"
matched[0].update({"verdict": "EQUIV_PARTIAL",
                   "coverage": "source-mapped overflow predicate for canonical max-length integer digits, all bases 2..36; whole parser unproved",
                   "evidence": "history-eq/c/fast_float/a7249f86/revalidated-overflow.json"})
bridge_dir = root / "history-eq/c/fast_float/b14e6a4"
bridge = json.loads((bridge_dir / "entry.json").read_text())
proof = bridge["scoped_proof"]
matched = [item for item in sample if item["commit"] == bridge["commit"]]
assert len(matched) == 1 and matched[0]["verdict"] == "UNKNOWN"
assert proof["verdict"] == "EQUIV_PARTIAL"
assert all("1 correct transformations" in (bridge_dir / name).read_text() for name in
           ("bridge-target_public5-fwd.log", "bridge-target_public5-bwd.log"))
matched[0].update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"],
                   "evidence": "history-eq/c/fast_float/b14e6a4/entry.json"})
for item in screened:
    if item["screen"] == "confirmed_optimization":
        assert item["missing_changed_blobs"], item["commit"]
        sample.append({"commit": item["commit"], "subject": item["subject"],
                       "selected_by": "seeded-nonkeyword", "screen": "confirmed_optimization",
                       "verdict": "UNKNOWN", "coverage": "historical changed C++ blobs missing",
                       "checker_target": "Alive2", "checker_status": "not_run",
                       "evidence": "history-eq/results/fast_float-nonkeyword-full-screen.json"})
fraction = json.loads((root / "history-eq/c/fast_float/f4f36e04f7/result.json").read_text())
matched = [item for item in sample if item["commit"] == fraction["commit"]]
assert len(matched) == 1 and matched[0]["verdict"] == "UNKNOWN"
assert fraction["verdict"] == "EQUIV_PARTIAL"
assert fraction["alive2"]["parse4_forward"] == fraction["alive2"]["parse4_reverse"] == "correct"
assert set(fraction["z3_lemmas"].values()) == {"unsat"}
matched[0].update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                   "coverage": fraction["scope"],
                   "evidence": "history-eq/c/fast_float/f4f36e04f7/result.json"})
assert len(screened) == 302 and len(sample) == 34
assert len({item["commit"] for item in sample}) == 34
(results / "fast_float-nonkeyword-full-screen.json").write_text(json.dumps({
    "repo": "fast_float", "pin": audit["pin"], "selection_seed": audit["selection_seed"],
    "draws_reviewed": 302, "confirmed_optimizations": 5, "intent_unresolved": len(unresolved),
    "complete_changed_blobs": audit["complete_changed_blobs"], "entries": screened,
}, indent=2) + "\n")
(results / "fast_float-optimization-sample.json").write_text(json.dumps({
    "repo": "fast_float", "pin": audit["pin"],
    "selection": "all 66 keyword candidates plus all 302 seeded nonkeyword include/ commits after intent screening",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(item["verdict"] for item in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": 5, "sample_size": len(sample),
                  "unresolved_intent": len(unresolved)}, sort_keys=True))
