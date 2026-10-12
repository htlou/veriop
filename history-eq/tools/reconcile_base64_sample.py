#!/usr/bin/env python3
"""Reconcile the complete Aeneas base64 study with the pinned src/ scope."""

from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/rust-base64"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
pin = next(r["pin"] for r in json.loads((results / "pinned-samples.json").read_text())["repos"]
           if r["repo"] == "rust-base64")
original = json.loads((results / "rust-base64.json").read_text())
fixed = json.loads((results / "rust-base64-pinned-sample-audit.json").read_text())
assert fixed["pin"] == pin and len(original["commits"]) == 25


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                          env=env, check=True).stdout


common = ["log", pin, "--no-merges", "--min-parents=1", "--format=%H"]
all_source = set(git(*common, "--", "src/").splitlines())
production = set(git(*common, "--", "src/", ":(exclude)src/**/*tests*.rs",
                     ":(exclude)src/tests.rs", ":(exclude)src/bin", ":(exclude)src/main.rs").splitlines())
assert len(all_source) == 256 and len(production) == 239 and len(all_source - production) == 17
scope_only = []
for commit in sorted(all_source - production):
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit, "--", "src/").splitlines()
    assert paths and all(path == "src/main.rs" or path.startswith("src/bin/") or
                         path.endswith("tests.rs") for path in paths), (commit, paths)
    scope_only.append({"commit": commit, "subject": git("show", "-s", "--format=%s", commit).strip(),
                       "changed_paths": paths, "reason": "test or binary entry source only"})

sample = []
for prior in original["commits"]:
    full = git("rev-parse", prior["commit"] + "^{commit}").strip()
    assert full in production and git("merge-base", "--is-ancestor", full, pin) == ""
    sample.append({"commit": full, "subject": prior["subject"], "selected_by": prior["selected_by"],
                   "screen": "confirmed_optimization", "verdict": prior["commit_verdict"],
                   "coverage": prior["coverage"], "checker_target": "Aeneas + Lean",
                   "checker_status": "checked", "artifact_dirs": sorted({u["artifact_dir"] for u in prior["units"]
                                                                       if u.get("artifact_dir")}),
                   "evidence": "history-eq/results/rust-base64.json",
                   **({"proof_recheck_log": f"history-eq/rust/rust-base64/work/{prior['commit']}/proof-recheck.log"}
                      if prior["commit"] in {"fa6a11f", "5c043f9"} else {})})
    if prior["commit"] == "3c9bc2b":
        case = root / "history-eq/rust/rust-base64/3c9bc2b"
        assert prior["commit_verdict"] == "UNSUPPORTED"
        for side, rev in (("old", full + "^"), ("new", full)):
            assert git("hash-object", str(case / f"lib.{side}.rs")).strip() == git(
                "rev-parse", rev + ":src/lib.rs").strip()
        proof = (case / "ErrorScanEquivalence.lean").read_text()
        assert "theorem first_invalid_error_equal" in proof
        assert "sorry" not in proof and "admit" not in proof
        assert "error:" not in (case / "lean-proof.log").read_text()
        sample[-1].update({"verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNSUPPORTED",
                           "coverage": "Aeneas/Lean equality of the first invalid byte index and value in one eight-byte fast-loop chunk for arbitrary lookup results; buffer writes, full decoder, and public API unproved",
                           "evidence": "history-eq/rust/rust-base64/3c9bc2b/README.md",
                           "proof_recheck_log": "history-eq/rust/rust-base64/3c9bc2b/lean-proof.log"})
    if prior["commit"] == "61ddf26":
        case = root / "history-eq/rust/rust-base64/61ddf26"
        proof = json.loads((case / "result.json").read_text())
        assert prior["commit_verdict"] == "UNSUPPORTED" and proof["commit"] == full
        assert (proof["old_blob"], proof["new_blob"]) == (
            git("rev-parse", full + "^:src/lib.rs").strip(),
            git("rev-parse", full + ":src/lib.rs").strip())
        assert proof["lean_sha256"] == hashlib.sha256((case / "IteratorRelation.lean").read_bytes()).hexdigest()
        assert proof["lean_log_sha256"] == hashlib.sha256((case / "lean.log").read_bytes()).hexdigest()
        assert "sorryAx" not in (case / "lean.log").read_text()
        sample[-1].update({"coverage": "exact-source Lean equality for indexed versus iterator byte order and arbitrary early-error loop state; full historical Aeneas translation unsupported",
                           "checker_target": "Aeneas unsupported; independent Lean source relation",
                           "evidence": "history-eq/rust/rust-base64/61ddf26/README.md"})
    if prior["commit"] == "7509b25":
        case = root / "history-eq/rust/rust-base64/7509b25"
        test = json.loads((case / "result.json").read_text())
        assert prior["commit_verdict"] == "UNSUPPORTED" and test["commit"] == full
        assert test["verdict"].startswith("bounded native equality")
        assert test["source_blobs"] == {
            side: git("rev-parse", full + ("^:" if side == "old" else ":") + "src/encode.rs").strip()
            for side in ("old", "new")}
        assert all(run["cases"] == 12312 and run["differences"] == 0 and
                   run["old_sha256"] == run["new_sha256"] for run in test["runs"].values())
        sample[-1].update({"coverage": "Aeneas cannot model full String/Vec relation; native public encode_config text, length, and capacity agree in 12312 debug and 12312 release cases across all 12 public Config combinations",
                           "evidence": "history-eq/rust/rust-base64/7509b25/README.md"})
    if prior["commit"] in {"ce2281b", "d021c39"}:
        name = "C" + prior["commit"]
        proof = root / "history-eq/rust/rust-base64/lean" / name / "Proof.lean"
        log = root / "history-eq/rust/rust-base64/work" / prior["commit"] / "proof-current.log"
        proved = [u for u in prior["units"] if u["level"] == "api" and u["verdict"] == "EQUIV"]
        assert prior["commit_verdict"] == "UNSUPPORTED" and len(proved) == (
            1 if prior["commit"] == "ce2281b" else 4)
        assert proof.is_file() and log.is_file() and "sorry" not in proof.read_text()
        assert "admit" not in proof.read_text() and "error:" not in log.read_text()
        assert all(u["evidence"].split(".", 1)[1].split()[0].rstrip(":") in log.read_text()
                   for u in proved)
        sample[-1].update({
            "verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNSUPPORTED",
            "coverage": "GeneralPurpose scalar internal_encode for all slices under equal encode tables; new SIMD and decode paths unproved"
                        if prior["commit"] == "ce2281b" else
                        "four public Engine methods under stated cross-version engine and external-function hypotheses; encode_string and raw decode-slice translations unsupported",
            "evidence": f"history-eq/rust/rust-base64/lean/{name}/Proof.lean",
            "proof_recheck_log": f"history-eq/rust/rust-base64/work/{prior['commit']}/proof-current.log",
        })
    if prior["commit"] == "a8a60f4":
        witness = json.loads((root / "history-eq/rust/rust-base64/a8a60f4/result.json").read_text())
        assert witness["commit"] == full and witness["verdict"].startswith("NOT_EQUIV")
        sample[-1].update({"verdict": "NOT_EQUIV", "coverage": "public decode error value counterexample",
                           "checker_target": "exact historical native execution; Aeneas translation unsupported",
                           "aeneas_verdict": prior["commit_verdict"],
                           "evidence": "history-eq/rust/rust-base64/a8a60f4/result.json"})
    if prior["commit"] == "b681bb6":
        witness = json.loads((root / "history-eq/rust/rust-base64/b681bb6/result.json").read_text())
        assert prior["commit_verdict"] == "UNSUPPORTED" and witness["commit"] == full
        assert witness["verdict"] == "NOT_EQUIV" and witness["aeneas_verdict"] == "UNSUPPORTED"
        assert witness["outputs"]["old"][0] == '"Y=Q=" -> Ok([97])'
        assert witness["outputs"]["new"][0] == '"Y=Q=" -> Err(InvalidByte(1, 61))'
        sample[-1].update({"verdict": "NOT_EQUIV",
                           "coverage": "public base64::decode(Y=Q=) returned value differs; valid controls agree",
                           "checker_target": "exact historical native execution; Aeneas translation unsupported",
                           "aeneas_verdict": prior["commit_verdict"],
                           "artifact_dirs": sample[-1]["artifact_dirs"] + ["rust/rust-base64/b681bb6"],
                           "evidence": "history-eq/rust/rust-base64/b681bb6/result.json"})
    if prior["commit"] == "f775196":
        witness = json.loads((root / "history-eq/rust/rust-base64/f775196/result.json").read_text())
        assert prior["commit_verdict"] == "UNSUPPORTED" and witness["commit"] == full
        assert witness["verdict"] == "NOT_EQUIV" and witness["aeneas_verdict"] == "UNSUPPORTED"
        assert witness["outputs"]["old"][0] == "len=154 capacity=156 wrap=true"
        assert witness["outputs"]["new"][0] == "len=154 capacity=154 wrap=true"
        assert witness["outputs"]["old"][1] == witness["outputs"]["new"][1]
        sample[-1].update({"verdict": "NOT_EQUIV",
                           "coverage": "public MIME encode_config returns equal text but String::capacity differs for one 112-byte input under Rust 1.99 and cached compatible dependencies",
                           "checker_target": "source-locked native execution; Aeneas translation unsupported",
                           "aeneas_verdict": prior["commit_verdict"],
                           "artifact_dirs": sample[-1]["artifact_dirs"] + ["rust/rust-base64/f775196"],
                           "evidence": "history-eq/rust/rust-base64/f775196/result.json"})
    if prior["commit"] == "9979cc3":
        proof = json.loads((root / "history-eq/rust/rust-base64/9979cc33/result.json").read_text())
        assert proof["commit"] == full and proof["verdict"] == "EQUIV"
        assert len(proof["checks"]) == 8
        sample[-1].update({"verdict": "EQUIV", "whole_commit_verdict": "UNSUPPORTED",
                           "coverage": "runtime decode result through the unchanged GeneralPurpose and Naive callers for all caller-reachable suffix counts; direct helper on unreachable counts differs",
                           "checker_target": "direct Z3 source-mapped lemma; Aeneas translation unsupported",
                           "evidence": "history-eq/rust/rust-base64/9979cc33/README.md"})
    if prior["commit"] == "9687b03":
        proof = root / "history-eq/rust/rust-base64/lean/C9687b03/Proof.lean"
        log = root / "history-eq/rust/rust-base64/work/9687b03/proof-recheck-current.log"
        assert proof.is_file() and log.is_file() and "encode_with_padding_equiv" in proof.read_text()
        assert "error:" not in log.read_text() and "sorry" not in proof.read_text()
        sample[-1].update({"verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNSUPPORTED",
                           "coverage": "Aeneas/Lean equality of changed generic encode_with_padding under cross-version Engine-operation equality and the documented unpadded-length contract; ChunkedEncoder and concrete public engine unproved",
                           "evidence": "history-eq/rust/rust-base64/9687b03/README.md",
                           "proof_recheck_log": "history-eq/rust/rust-base64/work/9687b03/proof-recheck-current.log"})
    if prior["commit"] == "dfb2864":
        witness_path = root / "history-eq/rust/rust-base64/dfb28641/result.json"
        witness = json.loads(witness_path.read_text())
        assert witness["commit"] == full and witness["verdict"] == "NOT_EQUIV"
        sample[-1].update({"verdict": "NOT_EQUIV", "coverage": "public API counterexample",
                           "checker_target": "exact historical native execution; Aeneas translation unsupported",
                           "aeneas_verdict": prior["commit_verdict"],
                           "artifact_dirs": sample[-1]["artifact_dirs"] + ["rust/rust-base64/dfb28641"],
                           "evidence": "history-eq/rust/rust-base64/dfb28641/result.json",
                           "aeneas_evidence": "history-eq/results/rust-base64.json"})
    if prior["commit"] == "f977b8e":
        witness = json.loads((root / "history-eq/rust/rust-base64/f977b8e/result.json").read_text())
        assert witness["commit"] == full and witness["verdict"].startswith("NOT_EQUIV")
        assert witness["observations"]["old"]["capacity"] >= 4
        assert witness["observations"]["new"]["capacity"] == 0
        sample[-1].update({"verdict": "NOT_EQUIV",
                           "coverage": "public encode_mode(empty) returns equal text but observably different String capacity under Rust 1.99",
                           "checker_target": "exact historical native execution + Aeneas/Lean private-helper counterexample",
                           "aeneas_verdict": prior["commit_verdict"],
                           "artifact_dirs": sample[-1]["artifact_dirs"] + ["rust/rust-base64/f977b8e"],
                           "evidence": "history-eq/rust/rust-base64/f977b8e/result.json",
                           "aeneas_evidence": "history-eq/rust/rust-base64/lean/Cf977b8e/Proof.lean"})
screen = json.loads((results / "rust-base64-nonkeyword-full-screen.json").read_text())
assert screen["pin"] == pin and screen["draws_reviewed"] == 215
for entry in screen["entries"]:
    if entry["screen"] != "confirmed_optimization" or entry["commit"] in {e["commit"] for e in sample}:
        continue
    assert entry["exact_changed_blobs_available"] and entry["commit"] in production
    witness = json.loads((root / "history-eq/rust/rust-base64/de3a1f04/result.json").read_text())
    assert entry["commit"] == witness["commit"] and witness["verdict"] == "NOT_EQUIV"
    sample.append({"commit": entry["commit"], "subject": entry["subject"],
                   "selected_by": "seeded-nonkeyword", "screen": "confirmed_optimization",
                   "verdict": "NOT_EQUIV", "coverage": "public API counterexample",
                   "checker_target": "exact historical native execution; Aeneas translation unsupported",
                   "checker_status": "checked", "artifact_dirs": ["rust/rust-base64/de3a1f04",
                                                              "rust/rust-base64/work/de3a1f0"],
                   "evidence": "history-eq/rust/rust-base64/de3a1f04/result.json",
                   "aeneas_verdict": "UNSUPPORTED"})
assert len(sample) == len({e["commit"] for e in sample}) == 26
fixed_confirmed = {e["commit"] for e in fixed["entries"] if e["screen"] == "confirmed_optimization"}
assert len(fixed_confirmed) == 16 and fixed_confirmed <= {e["commit"] for e in sample}

(results / "rust-base64-scope-reconciliation.json").write_text(json.dumps({
    "repo": "rust-base64", "pin": pin, "pinned_src_commits": len(all_source),
    "production_pathspec_commits": len(production), "test_or_entry_only": scope_only,
    "prior_funnel_source_count": original["funnel"]["commits_touching_scope"],
    "note": "The prior 240-commit funnel used a nearby but non-identical source pathspec; current exact pin/pathspec counts are authoritative."},
    indent=2) + "\n")
(results / "rust-base64-optimization-sample.json").write_text(json.dumps({
    "repo": "rust-base64", "pin": pin,
    "selection": "all 41 keyword candidates plus all 215 seeded nonkeyword src/ commits screened for optimization intent",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
print(json.dumps({"pinned_source": len(all_source), "test_or_entry_only": len(scope_only),
                  "sample_size": len(sample), "verdicts": dict(Counter(e["verdict"] for e in sample))}, sort_keys=True))
