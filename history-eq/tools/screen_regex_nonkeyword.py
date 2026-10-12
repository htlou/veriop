#!/usr/bin/env python3
"""Screen all seeded nonkeyword regex commits for optimization intent."""

from collections import Counter
import hashlib
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
source = json.loads((results / "regex-nonkeyword-source-availability.json").read_text())
fixed = json.loads((results / "regex-pinned-sample-audit.json").read_text())
assert fixed["pin"] == source["pin"]
by_commit = {e["commit"]: e for e in source["entries"]}

# Subjects and bodies were screened; ambiguous changes were read in full.
optimizations = {
    12: "Implements a no-captures option that can remove capture-state memory.",
    36: "Returns the borrowed original string when replacement finds no match, avoiding allocation.",
    46: "Selects the literal matching engine in more cases.",
    59: "Removes a dependency to reduce regex-syntax's build/package footprint.",
    97: "Avoids slow Aho-Corasick memchr selection for non-ASCII prefixes.",
    104: "Re-enables Tuned Boyer-Moore search after testing.",
    144: "Adds a lazy regex construction macro so one compilation serves repeated uses.",
    148: "Avoids expensive c_literal/c_bytes allocations by calling c_char/c_byte directly, as stated in the full commit message.",
    151: "Flattens HIR concatenations and combines adjacent literals to reduce tree size.",
    177: "Removes a boxed iterator and its allocation.",
    206: "Boxes HIR properties to shrink each HIR value, with an allocation tradeoff.",
    222: "Starts end-anchored searches from the end to avoid scanning long haystacks.",
    271: "Disables unusable capture storage in RegexSet, fixing MB-scale cache allocation.",
    295: "Compresses DFA states to reduce automaton memory use.",
    332: "Shrinks each Inst from 40 to 32 bytes on 64-bit systems.",
    392: "Boxes Ast values to reduce space used by concatenation and alternation vectors.",
    408: "Makes Unicode data optional so callers can reduce binary size.",
    419: "Shrinks selected vectors to decrease automaton memory use.",
    428: "Tracks DFA cache size more accurately to respect memory limits.",
    472: "Skips instructions already visited before executing them again.",
    478: "Bounds capture search so backtracking applies more often and clears less memory.",
    498: "Removes Ast indirection after finding heap-allocation cost outweighed space savings.",
    521: "Forces prefilter inlining after profiling found an avoidable call.",
    542: "Exposes no-capture configuration to avoid unnecessary capture state.",
}
pending = {
    105: "The regex-automata engine cutover may affect performance, but the message gives no optimization claim and exact source is missing.",
    131: "Replacing the memory pool with thread-local storage may change overhead, but the message gives no objective or measurements.",
    181: "Removing last_match fields may shrink state, but the message gives no optimization objective.",
    238: "Aho-Corasick's leftmost-first mode removes preprocessing, but the message frames this as a semantics integration change.",
    288: "Set iterator size_hint may help consumers allocate, but no performance objective is stated.",
    321: "Using Arc for named groups may share storage, but no performance objective is stated.",
    343: "Flattening HIR alternations may reduce tree size, but no performance objective is stated.",
    379: "Small HIR simplifications may help compilation, but no performance objective is stated.",
    449: "Switching to a TLS-backed mempool may change overhead, but no performance objective is stated.",
    508: "Single-character alternation simplification may change compilation or matching cost, but no performance objective is stated.",
}
assert not (optimizations.keys() & pending.keys())
entries = []
for draw, commit in enumerate(source["seeded_nonkeyword_order"]):
    src = by_commit[commit]
    if draw in optimizations:
        assert src["missing_changed_blob_ids"], commit
    status = ("confirmed_optimization" if draw in optimizations else
              "intent_unresolved" if draw in pending else "excluded_non_optimization")
    entries.append({"draw": draw, "commit": commit, "subject": src["subject"],
                    "changed_paths": src["changed_paths"],
                    "missing_changed_blob_ids": src["missing_changed_blob_ids"],
                    "screen": status,
                    "reason": optimizations.get(draw, pending.get(draw,
                        "No performance objective established by the commit message and changed-path metadata.")),
                    **({"checker_status": "not_run", "verdict": "UNKNOWN",
                        "coverage": "metadata intent screen; exact historical changed Rust source missing"}
                       if draw in optimizations else {})})
    if draw == 148:
        assert commit == "a0e72bc0c3b0fa652100e133a6cfe6e041eaf589"
        entries[-1].update({"coverage": "full-message optimization-intent screen; exact old/new Rust blobs missing; no Aeneas relation run",
                            "evidence": "history-eq/results/regex-nonkeyword-full-message-correction.md"})
    if draw == 271:
        assert commit == "930770bb8b4811b80a9cfbd0237d1f225e7c7c20"
        case = root / "history-eq/rust/regex/930770bb8b"
        assert "old a0f9b28b528f3fe19311f8a58d70447c6be98ffe" in (case / "source-recovery.log").read_text()
        assert "new 46c4824c560b1ec3dfbb76a4eda18bfe03238e87" in (case / "source-recovery.log").read_text()
        assert "Exact source hashes and Aeneas/Lean configuration relation checked." in (case / "recheck.log").read_text()
        entries[-1].update({
            "checker_status": "checked", "checker_target": "exact-source config fragment; Aeneas + Lean",
            "coverage": "old/new RegexSet builder configuration relation; public match-set equality unproved",
            "evidence": "history-eq/rust/regex/930770bb8b/README.md",
        })
    if draw == 521:
        assert commit.startswith("cfd0ca24")
        case = root / "history-eq/rust/regex/cfd0ca24"
        assert "child adds only six" in (case / "verification.log").read_text()
        entries[-1].update({"checker_status": "checked", "verdict": "EQUIV",
                            "checker_target": "exact historical source identity; Rust code-generation hints",
                            "coverage": "complete one-file commit; Rust-level matching behavior",
                            "evidence": "history-eq/rust/regex/cfd0ca24/README.md"})

fixed_verdict = {"unverified": "UNKNOWN", "unsupported": "UNSUPPORTED",
                 "verified_equal_partial": "EQUIV_PARTIAL"}
fixed_optimizations = [
    {**e, "screen": "confirmed_optimization", "verdict": fixed_verdict[e["checker_verdict"]],
     **({"checker_status": "checked"} if e["commit"].startswith(("0f32c039", "5e987889")) else {})}
    for e in fixed["items"] if e["classification"] == "confirmed_performance"
]
for entry in fixed_optimizations:
    if entry["commit"].startswith("0f32c039"):
        case = root / "history-eq/rust/regex/0f32c039"
        proof = json.loads((case / "entry.json").read_text())
        assert proof["commit"] == entry["commit"] and proof["verdict"] == "EQUIV_PARTIAL"
        assert proof["whole_commit_verdict"] == "UNKNOWN"
        assert proof["checks"] == {"historical_source_and_diff": "exact",
                                   "lean_generated_no_sorry_admit": True,
                                   "schedule_step_equal": "proved"}
        assert all(hashlib.sha256((case / name).read_bytes()).hexdigest() == digest
                   for name, digest in proof["sha256"].items())
        assert "Historical diff, Aeneas step model, and scheduling lemma checked." in (case / "recheck.log").read_text()
        entry.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                      "checker_target": "Aeneas + Lean",
                      "coverage": proof["scope"] + "; full DFA and public regex unproved",
                      "evidence": "history-eq/rust/regex/0f32c039/README.md"})
    if entry["commit"].startswith("5e987889"):
        case = root / "history-eq/rust/regex/5e987889"
        lean = (case / "Equivalence.lean").read_text()
        assert all(f"theorem {name}" in lean for name in
                   ("literal_path_equal", "dfa_nonquit_equal", "dfa_quit_equal_iff"))
        assert "sorry" not in lean and "admit" not in lean
        assert not (case / "lean-proof.log").read_text().strip()
        entry.update({"coverage": "exact historical byte/Unicode wrappers plus source-indexed literal and DFA Match/NoMatch dispatch model; NFA fallback and whole-program relation unproved",
                      "reason": "Aeneas/Lean proves the wrapper relation and the source-indexed literal/DFA non-Quit cases; exact historical exec.rs bytes are unavailable, and NFA fallback plus public API equivalence remain unresolved."})
    if entry["commit"].startswith("9c139f4f"):
        case = root / "history-eq/rust/regex/9c139f4f"
        assert "PASS" in (case / "dot-exhaustive.log").read_text()
        assert "ae3ba318ee74cdbb824dc4657d39342135681bf5" in (case / "source-recovery.log").read_text()
        assert "5db78438894bbf387fb6760386b62cd90ebdd0c3" in (case / "source-recovery.log").read_text()
        entry.update({"verdict": "EQUIV", "checker_status": "checked",
                      "checker_target": "exact-source Rust-level semantics and exhaustive native finite-input test",
                      "coverage": "complete one-file Hir::dot change; matching class ranges and flags",
                      "evidence": "history-eq/rust/regex/9c139f4f/README.md"})
    if not entry["commit"].startswith("9825c741"):
        continue
    witness = json.loads((root / "history-eq/rust/regex/9825c741/entry.json").read_text())
    assert witness["commit"] == entry["commit"] and witness["commit_verdict"] == "NOT_EQUIV"
    assert witness["witness"]["parent"] != witness["witness"]["child"]
    entry.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                  "checker_target": "exact historical Rust witness; Aeneas unsupported",
                  "coverage": "public ClassBytes Debug output after case_fold_simple and duplicate push; regex matching unproved; Aeneas unsupported",
                  "reason": "Exact historical public ClassBytes Debug witness differs after duplicate push: folded false before, true after; Aeneas still cannot translate the parent canonicalize dependency."})
added = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert len(entries) == source["nonkeyword_commits"] == 548
assert len(fixed_optimizations) == 92 and len(added) == 24
assert len({e["commit"] for e in fixed_optimizations + added}) == 116
(results / "regex-nonkeyword-full-screen.json").write_text(json.dumps({
    "repo": "regex", "pin": source["pin"], "selection_seed": source["selection_seed"],
    "draws_reviewed": len(entries), "confirmed_optimizations": len(added),
    "intent_unresolved": len(pending), "entries": entries,
}, indent=2) + "\n")
(results / "regex-optimization-sample.json").write_text(json.dumps({
    "repo": "regex", "pin": source["pin"],
    "selection": "all 162 keyword candidates, plus all 548 randomly ordered nonkeyword source commits after intent screening",
    "sample_size": 116, "entries": fixed_optimizations + added,
    "summary": dict(Counter(e["verdict"] for e in fixed_optimizations + added)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(entries), "added": len(added), "sample_size": 116,
                  "unresolved_intent": len(pending)}, sort_keys=True))
