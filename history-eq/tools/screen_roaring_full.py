#!/usr/bin/env python3
"""Screen the pinned RoaringBitmap source history beyond keyword matches."""

from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/RoaringBitmap"
evidence = root / "history-eq/java/RoaringBitmap/full-source-screening.md"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
manifest = json.loads((results / "pinned-samples.json").read_text())
target = next(r for r in manifest["repos"] if r["repo"] == "RoaringBitmap")
fixed = json.loads((results / "RoaringBitmap-pinned-sample-audit.json").read_text())
assert target["pin"] == fixed["pin"] and target["source_commits"] == 309
fixed_entries = {e["commit"]: e for e in fixed["entries"]}
additional = {
    8: "46d5e104", 22: "a698be65", 25: "6aa9546c", 27: "ea3bcaa8", 34: "462a9035",
    51: "79f1debc", 58: "45d9c57c", 76: "e7bfb1b4", 91: "0be3468e", 92: "ae1ff83c",
    104: "418a2929", 109: "6a23ee08", 119: "b2ad9b33", 141: "d2b1384a",
    145: "7c75138d", 146: "918a374f", 152: "5eb5c2b1", 162: "0c90ddff",
    179: "5f24b720", 198: "baf283d3", 202: "f7b0874f", 206: "cb709932",
    229: "ee879373", 237: "a36e73cf", 253: "8800009c", 264: "fa8233e2",
    282: "60048a62", 287: "33200d55", 288: "cc4e5199",
}
assert len(additional) == 29
special_exclusions = {
    "921047c8": "Adds a new SuccinctRank implementation rather than replacing an existing rank path.",
    "e4f74a24": "Clone-property correction; no distinct performance intent established.",
    "54d06b81": "Adds contextual range-query behavior rather than replacing an existing input path.",
    "00fcd5fb": "Uninformative commit title and missing historical changed blob; performance intent cannot be established.",
    "7c145e2c": "Uninformative commit title and missing historical changed blob; performance intent cannot be established.",
}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                          env=env, check=True).stdout


rows = git("log", target["pin"], "--no-merges", "--min-parents=1", "--format=%H%x09%aI%x09%s",
           "--", *target["scope"]).splitlines()
assert len(rows) == target["source_commits"] == len({row.split("\t", 1)[0] for row in rows})
assert set(fixed_entries) <= {row.split("\t", 1)[0] for row in rows}
entries = []
table = [
    "# RoaringBitmap pinned source-history screen", "",
    "All 309 non-merge commits touching the two historical source-directory spellings received a commit-message "
    "and changed-path intent screen at the pinned revision. The fixed 88 keyword candidates retain their "
    "existing source-audited verdicts. Twenty-nine further commits have identifiable existing-path allocation, "
    "copy, scan, or dispatch optimizations. Five have scoped KeY results, one has an exact-source native counterexample, and 23 have `not_run` status. This metadata screen may miss "
    "unstated performance effects and is not a proof that no other optimization exists.", "",
    "The 89 identified optimization commits are all retained because fewer than 200 have been identified. "
    "There is no locally measured official historical before/after benchmark score for the added cases.", "",
    "| History # | Commit | Subject | Decision | Exact changed blobs |", "|---:|---|---|---|---|",
]
for index, row in enumerate(rows, 1):
    commit, date, subject = row.split("\t", 2)
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit, "--", *target["scope"]).splitlines()
    assert paths, (index, commit)
    entry = {"commit": commit, "date": date, "subject": subject, "history_index": index,
             "changed_paths": paths}
    if commit in fixed_entries:
        entry.update(fixed_entries[commit])
        if commit.startswith("23a855bf"):
            assert entry["verdict"] == "UNKNOWN"
            proof = json.loads((root / "history-eq/java/RoaringBitmap/23a855bf/binary-result.json").read_text())
            path = "RoaringBitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java"
            assert proof["commit"] == commit and proof["verdict"] == "NOT_EQUIV"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", f"{commit}^:{path}").strip(),
                "new": git("rev-parse", f"{commit}:{path}").strip()}
            assert all(proof["runs"][f"old-{action}"]["exit_code"] == 0 and
                       proof["runs"][f"new-{action}"]["exit_code"] != 0 and
                       "NoSuchMethodError" in proof["runs"][f"new-{action}"]["stderr"] and
                       f"LongUtils.{method}" in proof["runs"][f"new-{action}"]["stderr"]
                       for action, method in (("compare", "compareHigh"), ("max", "isMaxHigh")))
            entry.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                          "checker_target": "exact historical Java binary client + KeY attempt + Z3 lemma",
                          "coverage": proof["scope"] + "; other changed APIs and files unverified",
                          "reason": "Old binary client returns normally with exact parent LongUtils but throws NoSuchMethodError for two removed public signatures with exact child LongUtils; KeY toLong goal remains open.",
                          "evidence": "history-eq/java/RoaringBitmap/23a855bf/README.md"})
        if commit.startswith("6d5dcff3"):
            proof_dir = root / "history-eq/java/RoaringBitmap/6d5dcff3"
            proof = subprocess.run([sys.executable, "-B", str(proof_dir / "check_source.py")],
                                   capture_output=True, text=True, check=True, env=env)
            assert proof.stdout.strip() == "full-file source audit and 64-bit equivalence proof passed"
            entry.update({"verdict": "EQUIV", "checker_target": "Z3 QF_BV + exact Git source audit",
                          "checker_status": "checked",
                          "coverage": "all three changed Java long expressions and the sole changed file; Java source semantics",
                          "reason": "Exact historical file differs only by three De Morgan replacements; Z3 proves their 64-bit operands equal for every input. KeY remains open independently.",
                          "evidence": "history-eq/java/RoaringBitmap/6d5dcff3/README.md"})
        if commit.startswith("684531c1"):
            path = "roaringbitmap/src/main/java/org/roaringbitmap/ArrayContainer.java"
            for side, rev in (("old", commit + "^"), ("new", commit)):
                data = (root / "history-eq/java/RoaringBitmap/684531c1" / side / "ArrayContainer.java").read_bytes()
                oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
                assert oid == git("rev-parse", f"{rev}:{path}").strip()
            query = root / "history-eq/java/RoaringBitmap/684531c1/rank-max.smt2"
            z3 = root / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
            checks = subprocess.run([str(z3), "-smt2", str(query)], capture_output=True,
                                    text=True, check=True).stdout.splitlines()
            assert checks == ["unsat"] * 7
            entry.update({"verdict": "EQUIV_PARTIAL", "checker_target": "Z3 QF_BV source-mapped lemma",
                          "checker_status": "checked",
                          "coverage": "well-formed ArrayContainer.rank(0xFFFF); five other changed container classes unproved",
                          "reason": "Seven Z3 obligations prove the old rank search returns cardinality for well-formed ArrayContainer state; KeY remains open.",
                          "evidence": "history-eq/java/RoaringBitmap/684531c1/README.md"})
        label = entry["screen"] + ("; " + entry["verdict"] if entry.get("verdict") else "")
        source = "see fixed ledger"
    elif index in additional:
        assert commit.startswith(additional[index]), (index, commit)
        raw = git("diff-tree", "--raw", "--no-abbrev", "--no-commit-id", "-r", commit,
                  "--", *target["scope"])
        blobs = [oid for item in raw.splitlines() for oid in item.split("\t", 1)[0].split()[2:4]
                 if oid.strip("0")]
        missing = [oid for oid in blobs if subprocess.run(["git", "-C", str(repo), "cat-file", "-e", oid],
                                                         capture_output=True, env=env).returncode]
        source = "available" if not missing else "missing"
        entry.update({"screen": "confirmed_optimization", "verdict": "UNKNOWN", "checker_status": "not_run",
                      "checker_target": "KeY", "source_status": "changed_blobs_available" if not missing else "missing_changed_blob",
                      "reason": "Commit message and changed Java paths identify an optimization of an existing operation; no old/new KeY relation has run.",
                      "evidence": str(evidence.relative_to(root))})
        if index == 22:
            proof = json.loads((root / "history-eq/java/RoaringBitmap/a698be65/result.json").read_text())
            assert proof["commit"] == commit and proof["verdict"] == "NOT_EQUIV" and proof["open_goals"] == 0
            entry.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                          "reason": "Exact historical BranchNode native pair (false/true) and KeY prove fresh old zero-prefix arrays versus a shared new prefix; a same-package subclass observes protected array identity.",
                          "coverage": "protected prefix identity for two zero-length Node4 instances; bitmap contents untested",
                          "evidence": "history-eq/java/RoaringBitmap/a698be65/README.md"})
        if index == 104:
            case = root / "history-eq/java/RoaringBitmap/418a2929"
            proof = json.loads((case / "dead-store-result.json").read_text())
            audit = json.loads((case / "source-audit.json").read_text())
            assert proof["commit"] == commit and proof["verdict"] == "EQUIV" and proof["open_goals"] == 0
            assert (proof["old_sha256"], proof["new_sha256"], proof["source_diff_sha256"]) == (
                audit["old_sha256"], audit["new_sha256"], audit["diff_sha256"])
            for key, file in (("model_sha256", "FirstVRelation.java"), ("key_log_sha256", "key.log"),
                              ("key_proof_sha256", "FirstVRelation.java.auto.proof")):
                assert proof[key] == hashlib.sha256((case / file).read_bytes()).hexdigest()
            assert "Number of goals remaining open: 0" in (case / "key.log").read_text()
            entry.update({"verdict": "EQUIV", "checker_status": "checked",
                          "reason": "Exact one-line source deletion and KeY's zero-goal dead-store lemma show equal complete return state for normally completing Node16.insert calls.",
                          "coverage": proof["scope"] + "; " + proof["limits"],
                          "evidence": "history-eq/java/RoaringBitmap/418a2929/README.md"})
        if index == 109:
            case = root / "history-eq/java/RoaringBitmap/6a23ee08"
            proof = json.loads((case / "full-buffer-result.json").read_text())
            audit = json.loads((case / "source-audit.json").read_text())
            assert proof["commit"] == commit and proof["verdict"] == "EQUIV" and proof["open_goals"] == 0
            assert (proof["old_blob"], proof["new_blob"], proof["source_diff_sha256"]) == (
                audit["old_blob"], audit["new_blob"], audit["diff_sha256"])
            assert proof["model_sha256"] == hashlib.sha256((case / "FullBufferRelation.java").read_bytes()).hexdigest()
            assert proof["key_log_sha256"] == hashlib.sha256((case / "full-buffer-key.log").read_bytes()).hexdigest()
            assert proof["key_proof_sha256"] == hashlib.sha256((case / "FullBufferRelation.java.auto.proof").read_bytes()).hexdigest()
            assert "Number of goals remaining open: 0" in (case / "full-buffer-key.log").read_text()
            entry.update({"verdict": "EQUIV", "checker_status": "checked",
                          "reason": "Exact one-call source substitution and KeY prove the entire valid buffer state equal after the private zero-index decrement.",
                          "coverage": proof["scope"] + "; " + proof["limits"],
                          "evidence": "history-eq/java/RoaringBitmap/6a23ee08/README.md"})
        if index == 119:
            proof = json.loads((root / "history-eq/java/RoaringBitmap/b2ad9b33/native-result.json").read_text())
            assert proof["commit"] == commit and proof["verdict"] == "NOT_EQUIV"
            assert proof["sides"]["old"]["stdout"] == "empty=true,scratch=0\nshort=IllegalArgumentException"
            assert proof["sides"]["new"]["stdout"] == "empty=true,scratch=7\nshort=returned"
            entry.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                          "reason": "Exact historical FastAggregation native pair changes caller-visible scratch-buffer clearing and short-buffer exception behavior for three empty bitmaps.",
                          "coverage": "FastAggregation.and(long[], RoaringBitmap...) with three empty bitmaps; common current built dependencies; buffer counterpart and whole commit untested",
                          "evidence": "history-eq/java/RoaringBitmap/b2ad9b33/README.md"})
        if index == 229:
            proof = json.loads((root / "history-eq/java/RoaringBitmap/ee879373/result.json").read_text())
            assert proof["commit"] == commit and proof["verdict"] == "NOT_EQUIV" and proof["open_goals"] == 0
            assert (proof["old_output"], proof["new_output"]) == ("9", "4")
            entry.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                          "reason": "Exact historical writer/appender native pair and KeY show changed capture timing; an overridden createUnderlying observes capacity 9 before versus 4 after reset.",
                          "coverage": "Wizard.get/initialCapacity and ContainerAppender.reset callback argument; bitmap contents untested",
                          "evidence": "history-eq/java/RoaringBitmap/ee879373/README.md"})
        if index == 264:
            case = root / "history-eq/java/RoaringBitmap/fa8233e2"
            proof = json.loads((case / "result.json").read_text())
            assert proof["commit"] == commit and proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["open_goals"] == 0 and len(proof["missing_historical_java_blobs"]) == 6
            assert hashlib.sha256((case / "SparseBranch.java").read_bytes()).hexdigest() == proof["key_model_sha256"]
            assert "Proved" in (case / "key.log").read_text()
            entry.update({"checker_status": "checked", "checker_target": "KeY source-mapped branch projection",
                          "reason": "Exact historical source and KeY prove the descending-key branch switches from throw to underlying insertion; full add and whole commit are unproved.",
                          "coverage": "SparseOrderedWriter.add at currentKey=1,value=1: branch choice only; historical dependency build incomplete",
                          "evidence": "history-eq/java/RoaringBitmap/fa8233e2/README.md"})
        label = "optimization; " + entry["verdict"]
    else:
        entry.update({"screen": "excluded_non_optimization", "reason": special_exclusions.get(commit[:8],
                      "No existing-path performance optimization identified in commit message and changed-path screen.")})
        source = "not audited"
        label = "excluded"
    entries.append(entry)
    url = f"https://github.com/RoaringBitmap/RoaringBitmap/commit/{commit}"
    table.append(f"| {index} | [`{commit[:8]}`]({url}) | {subject.replace('|', '&#124;')} | {label} | {source} |")

assert Counter(e["screen"] for e in entries) == {"confirmed_optimization": 89, "excluded_non_optimization": 220}
sample = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert len(sample) == len({e["commit"] for e in sample}) == 89
assert all(e.get("verdict") for e in sample)
(results / "RoaringBitmap-full-source-audit.json").write_text(json.dumps({
    "repo": target["repo"], "pin": target["pin"], "source_commits": len(entries),
    "entries": entries, "summary": dict(Counter(e["screen"] for e in entries))}, indent=2) + "\n")
(results / "RoaringBitmap-optimization-sample.json").write_text(json.dumps({
    "repo": target["repo"], "pin": target["pin"],
    "selection": "all identified performance commits after screening all pinned source-changing non-merge commits",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
evidence.write_text("\n".join(table) + "\n")
print(json.dumps({"source_commits": len(entries), "additional_optimizations": len(additional),
                  "sample_size": len(sample), "verdicts": dict(Counter(e["verdict"] for e in sample))}, sort_keys=True))
