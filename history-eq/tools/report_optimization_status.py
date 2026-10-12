#!/usr/bin/env python3
"""Report confirmed optimization samples without conflating labels with checker runs."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
pins = json.loads((results / "pinned-samples.json").read_text())["repos"]
category = {
    "NOT_EQUIV": "unequal", "verified_inequal": "unequal",
    "verified_inequal_local": "unequal",
    "EQUIV": "equal_full", "REFINES": "equal_full",
    "EQUIV_PARTIAL": "equal_partial", "EQUIV_BOUNDED": "equal_partial",
    "REFINES_PARTIAL": "equal_partial",
    "EQUIV_UNDER_PRECOND": "equal_partial", "verified_equal_partial": "equal_partial",
    "UNKNOWN": "unknown", "unverified": "unknown",
    "UNSUPPORTED": "unsupported", "unsupported": "unsupported",
}
rows = []
for pinned in pins:
    repo = pinned["repo"]
    sample_name = "llama-optimization-sample.json" if repo == "llama.cpp" else f"{repo}-optimization-sample.json"
    sample_path = results / sample_name
    basis = "optimization sample"
    if repo == "SymCrypt":
        sample_path = results / "SymCrypt-partial.json"
        data = json.loads(sample_path.read_text())
        assert data["pin"] == pinned["pin"]
        sample = [{"commit": e["commit"], "verdict": e["commit_verdict"]} for e in data["commits"]]
        basis = "complete 17-source-commit screen"
    else:
        if not sample_path.exists():
            sample_path = results / f"{repo}-pinned-sample-audit.json"
            basis = "fixed keyword-candidate screen"
        data = json.loads(sample_path.read_text())
        assert data["pin"] == pinned["pin"], repo
        if "entries" in data:
            sample = [e for e in data["entries"] if e["screen"] == "confirmed_optimization"]
        else:
            sample = [{"commit": e["commit"], "verdict": e["checker_verdict"],
                       "checker_status": e.get("checker_status")}
                      for e in data["items"] if e["classification"].startswith("confirmed")]
    assert len(sample) == len({e["commit"] for e in sample}), repo
    assert all((root / e["evidence"]).exists() for e in sample if e.get("evidence")), repo
    assert all(e.get("checker_status") == "checked" and e.get("coverage") and e.get("evidence")
               for e in sample if e["verdict"] in ("NOT_EQUIV", "EQUIV", "REFINES")), repo
    verdicts = Counter(category[e["verdict"] + "_PARTIAL"
                                if e.get("coverage") == "partial" and e["verdict"] in ("EQUIV", "REFINES")
                                else e["verdict"]] for e in sample)
    statuses = Counter(e.get("checker_status", "unrecorded") or "unrecorded" for e in sample)
    unsupported_not_run = sum(e["verdict"] in ("UNSUPPORTED", "unsupported")
                              and e.get("checker_status") == "not_run" for e in sample)
    assert sum(verdicts.values()) == len(sample)
    assert sum(statuses.values()) == len(sample)
    assert unsupported_not_run <= verdicts["unsupported"]
    rows.append({"repo": repo, "pin": pinned["pin"], "basis": basis,
                 "evidence": str(sample_path.relative_to(root)), "sampled_optimizations": len(sample),
                 **{key: verdicts[key] for key in
                    ("unequal", "equal_full", "equal_partial", "unknown", "unsupported")},
                 "ledger_marked_checked": statuses["checked"],
                 "ledger_marked_not_run": statuses["not_run"],
                 "ledger_status_unrecorded": statuses["unrecorded"],
                 "unsupported_marked_not_run": unsupported_not_run})

assert len(rows) == len(pins) == 25
four_rows = [{"repo": r["repo"], "evidence": r["evidence"],
              "sampled_optimizations": r["sampled_optimizations"],
              "verified_inequal_scoped": r["unequal"],
              "verified_equal_or_refines_scoped": r["equal_full"],
              "unverified": r["unknown"] + r["equal_partial"],
              "unsupported": r["unsupported"],
              "partial_or_bounded_evidence": r["equal_partial"],
              "ledger_marked_not_run": r["ledger_marked_not_run"],
              "unsupported_marked_not_run": r["unsupported_marked_not_run"]} for r in rows]
assert all(r["sampled_optimizations"] == r["verified_inequal_scoped"]
           + r["verified_equal_or_refines_scoped"] + r["unverified"] + r["unsupported"]
           for r in four_rows)
(results / "FOUR_CATEGORY_STATUS.json").write_text(json.dumps({
    "scope": "selected historical optimization-intent commits; verdicts are scoped to recorded observations and configurations",
    "unverified_rule": "includes UNKNOWN and partial/bounded equality or refinement evidence, since those do not establish the whole selected comparison",
    "rows": four_rows,
}, indent=2) + "\n")
four_lines = ["# Four-category historical optimization results", "",
              "Partial or bounded equality evidence remains **unverified** for the full selected comparison. "
              "Verified labels apply only to each case's recorded observation and build configuration. "
              "A routing or scheduler-parameter counterexample does not establish different numerical outputs. "
              "Samples are reproducible seeded intent screens, mostly keyword-filtered rather than uniform draws "
              "from every historical optimization; only six repositories reached 200. "
              "See the [detailed report](CURRENT_OPTIMIZATION_STATUS.md) for proof scope and ledger status.", "",
              "| Repo | Samples | Verified unequal (scoped) | Verified equal/refinement (scoped) | Unverified | Unsupported | Partial evidence within unverified | Ledger marked not run | Unsupported marked not run |",
              "|---|---:|---:|---:|---:|---:|---:|---:|---:|"]
for r in four_rows:
    four_lines.append(f"| [{r['repo']}]({Path(r['evidence']).name}) | "
                      f"{r['sampled_optimizations']} | {r['verified_inequal_scoped']} | "
                      f"{r['verified_equal_or_refines_scoped']} | {r['unverified']} | "
                      f"{r['unsupported']} | {r['partial_or_bounded_evidence']} | "
                      f"{r['ledger_marked_not_run']} | {r['unsupported_marked_not_run']} |")
four_lines.append("| **Total** | " + " | ".join(str(sum(r[key] for r in four_rows)) for key in (
    "sampled_optimizations", "verified_inequal_scoped", "verified_equal_or_refines_scoped",
    "unverified", "unsupported", "partial_or_bounded_evidence",
    "ledger_marked_not_run", "unsupported_marked_not_run")) + " |")
four_lines += ["", f"The ledgers mark {sum(r['ledger_marked_not_run'] for r in rows)} selected cases `not_run`. "
              f"Of the {sum(r['unsupported'] for r in rows)} `UNSUPPORTED` labels, "
              f"{sum(r['unsupported_marked_not_run'] for r in rows)} are marked `not_run` in the ledgers. "
              "Those are scope classifications, not checker rejection results; the other ledger status labels do not by themselves establish a checker run."]
(results / "FOUR_CATEGORY_STATUS.md").write_text("\n".join(four_lines) + "\n")
exact_200 = sum(r["sampled_optimizations"] == 200 for r in rows)
(results / "CURRENT_OPTIMIZATION_STATUS.json").write_text(json.dumps({
    "selection_note": "Most optimization samples are reproducible seeded keyword draws after intent screening, not uniform draws from every historical optimization. Regex additionally screens all nonkeyword source commits. The table counts selected sample cases, not every optimization intent found outside a sample; repositories with fewer selected cases are not padded to 200.",
    "verdict_note": "All checker verdicts are limited to their recorded program scope and build configuration. Full means complete coverage within that recorded scope, not necessarily every platform or whole-library behavior. Partial/bounded records cover less. UNKNOWN includes unrun source-gap cases and attempted inconclusive checks. UNSUPPORTED can be scope triage without an executed checker.",
    "checker_status_note": "These counts reproduce ledger status labels, not actual checker executions: some older ledgers mark metadata/scope classification checked without a checker run. Unrecorded does not mean unrun.",
    "rows": rows,
}, indent=2) + "\n")

lines = [
    "# Current historical-optimization results across 25 repositories", "",
    f"These are **selected, confirmed optimization-intent commits**, not all keyword candidates or all intents found outside the samples. {exact_200} repositories currently have 200 selected optimizations. Most selection is seeded within the performance-keyword population after intent screening; regex additionally screens all nonkeyword source commits. Smaller histories are not padded to 200.", "",
    "Every `≢` or `≡/⊑` label has its recorded program scope and build configuration. `Full` means full coverage within that scope, not necessarily every platform or the whole library. `UNKNOWN` includes missing-source cases where the checker was never run; `UNSUPPORTED` can be a source/scope classification. The last three columns reproduce ledger status labels, **not actual checker-run counts**: some older ledgers mark a metadata/scope classification `checked` without invoking the checker. `Unrecorded` does not establish execution or nonexecution.", "",
    "A scoped `≢` result for a routing decision or scheduler parameter is not a counterexample to numerical output equality.", "",
    "| Repo | Basis | Optimizations | ≢ scoped | ≡/⊑ full | ≡/⊑ partial/bounded | Unknown | Unsupported | Marked checked | Marked not run | Unrecorded |",
    "|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
]
for r in rows:
    label = f"[{r['repo']}]({Path(r['evidence']).name})"
    lines.append(f"| {label} | {r['basis']} | {r['sampled_optimizations']} | {r['unequal']} | "
                 f"{r['equal_full']} | {r['equal_partial']} | {r['unknown']} | {r['unsupported']} | "
                 f"{r['ledger_marked_checked']} | {r['ledger_marked_not_run']} | {r['ledger_status_unrecorded']} |")
lines.append("| **Total** | | " + " | ".join(str(sum(r[key] for r in rows)) for key in (
    "sampled_optimizations", "unequal", "equal_full", "equal_partial", "unknown",
    "unsupported", "ledger_marked_checked", "ledger_marked_not_run",
    "ledger_status_unrecorded")) + " |")
lines += ["", "The [four-category report](FOUR_CATEGORY_STATUS.md) counts partial/bounded evidence as unverified. Source: [machine-readable rows](CURRENT_OPTIMIZATION_STATUS.json). The [sampling and source audit](SOURCE_AND_SAMPLING_COVERAGE.md) explains the draw and not-run coverage; the original [fixed-sample status](FIXED_SAMPLE_STATUS.md) counts keyword candidates before this optimization-only selection; the [progress log](PINNED_PROGRESS.md) records proof scope and individual cases.", ""]
(results / "CURRENT_OPTIMIZATION_STATUS.md").write_text("\n".join(lines))
print(json.dumps({"repos": len(rows), "exact_200": exact_200,
                  "selected_optimizations": sum(r["sampled_optimizations"] for r in rows),
                  "marked_not_run": sum(r["ledger_marked_not_run"] for r in rows)}, sort_keys=True))
