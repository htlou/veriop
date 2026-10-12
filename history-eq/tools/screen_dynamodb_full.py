#!/usr/bin/env python3
"""Screen the complete pinned DynamoDB Encryption SDK source history."""

from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/aws-database-encryption-sdk-dynamodb"
report = root / "history-eq/dafny/aws-database-encryption-sdk-dynamodb/full-source-screening.md"
pin = next(r for r in json.loads((results / "pinned-samples.json").read_text())["repos"]
           if r["repo"] == "aws-database-encryption-sdk-dynamodb")
fixed = json.loads((results / "aws-database-encryption-sdk-dynamodb-pinned-sample-audit.json").read_text())
assert pin["pin"] == fixed["pin"] and pin["source_commits"] == 270
fixed_entries = {e["commit"]: e for e in fixed["items"]}
assert len(fixed_entries) == 29
partial_root = root / "history-eq/dafny/aws-database-encryption-sdk-dynamodb"
partials = {entry["commit"]: entry for entry in
            json.loads((partial_root / "partial-helper-proofs.json").read_text())["cases"]}
assert len(partials) == 6
additional = {
    "ec22b7d3": ("UNKNOWN", "checked", "Converts runtime cursors and counts from arbitrary-precision nat to uint64; ConstantTimeCompare is locally proved equal, the commit is not."),
    "07dd24df": ("UNKNOWN", "not_run", "Caches beacon keys using LocalCMC instead of obtaining them on each use; exact changed source is incomplete."),
    "46076f86": ("UNSUPPORTED", "not_run", "Adds a shared-cache mode absent from the parent interface; a whole-feature before/after relation needs an explicit old-side specification."),
}
unresolved = {
    "1da5fcdf": "Removes recursion from FilterItems, but available metadata does not establish whether this targets runtime cost or stack behavior.",
    "a70a569d": "Simplifies structured encryption across many files, but available metadata does not establish a runtime-speed objective.",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env, text=True)


def missing_changed_blobs(commit):
    raw = git("diff-tree", "--raw", "--no-abbrev", "--no-commit-id", "-r", commit,
              "--", *pin["scope"])
    oids = [oid for line in raw.splitlines() for oid in line.split("\t", 1)[0].split()[2:4]
            if oid.strip("0")]
    assert oids, commit
    return [oid for oid in oids if subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-e", oid], env=env,
        capture_output=True).returncode]


def apply_partial(entry):
    proof = partials[entry["commit"]]
    case = partial_root / proof["case"]
    source_diff = (case / "source-scoped.diff").read_text()
    model = (case / proof["model"]).read_text()
    assert hashlib.sha256(source_diff.encode()).hexdigest() == proof["source_diff_sha256"]
    assert hashlib.sha256(model.encode()).hexdigest() == proof["model_sha256"]
    assert not re.search(r"\b(?:assume|axiom)\b", model)
    assert f'{proof["verified_goals"]} verified, 0 errors' in (case / "recheck.log").read_text()
    paths = re.findall(r"^diff --git a/(.*?) b/", source_diff, re.M)
    assert paths
    historical = git("diff", entry["commit"] + "^", entry["commit"], "--", *paths)
    changed = lambda text: [line for line in text.splitlines()
                            if line.startswith(("+", "-")) and not line.startswith(("+++", "---"))]
    assert changed(source_diff) == changed(historical)
    entry.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                  "checker_target": "Dafny", "coverage": proof["scope"] + "; whole commit unproved",
                  "reason": "Dafny proves a source-mapped local relation; other changed paths remain unverified.",
                  "evidence": str((case / "README.md").relative_to(root))})


rows = git("log", pin["pin"], "--no-merges", "--min-parents=1", "--format=%H%x09%aI%x09%s",
           "--", *pin["scope"]).splitlines()
assert len(rows) == 270 and len({row.split("\t", 1)[0] for row in rows}) == 270
assert set(fixed_entries) <= {row.split("\t", 1)[0] for row in rows}
assert not (set(additional) & set(unresolved))
entries = []
table = ["# DynamoDB Encryption SDK complete pinned source-history intent screen", "",
         "All 270 non-merge commits touching `DynamoDbEncryption/` at the pinned revision received a "
         "commit-message and changed-path intent screen. The 29 fixed keyword candidates retain "
         "their prior source-audited classifications. Three further commits have an identifiable "
         "runtime-performance purpose; two more have unresolved intent. This screen cannot exclude "
         "unstated performance effects in the other commits.", "",
         "The `ec22b7d3` old/new source is complete at the changed-blob level and has a "
         "[Dafny proof for one helper](ec22b7d/README.md). The caching commits lack historical "
         "changed source; no old/new checker or official benchmark was run for them. The shared-cache "
         "commit adds an interface without an old counterpart.", "",
         "| # | Commit | Subject | Intent screen | Changed paths |",
         "|---:|---|---|---|---:|"]
for index, row in enumerate(rows, 1):
    commit, date, subject = row.split("\t", 2)
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit,
                "--", *pin["scope"]).splitlines()
    assert paths, commit
    entry = {"commit": commit, "date": date, "subject": subject, "history_index": index,
             "changed_paths": paths}
    if commit in fixed_entries:
        old = fixed_entries[commit]
        entry.update({"screen": "confirmed_optimization" if old["classification"] == "confirmed_performance"
                      else "excluded_non_optimization", "reason": old["reason"],
                      "evidence": old.get("evidence")})
        if entry["screen"] == "confirmed_optimization":
            verdict = {"verified_inequal_local": "NOT_EQUIV", "unverified": "UNKNOWN",
                       "unsupported": "UNSUPPORTED"}[old["checker_verdict"]]
            entry.update({"verdict": verdict, "checker_status": "checked",
                          "coverage": "prior scoped source/checker audit"})
            if commit in partials:
                apply_partial(entry)
        label = entry["screen"] + ("; " + entry["verdict"] if entry.get("verdict") else "")
    elif commit[:8] in additional:
        verdict, checker_status, reason = additional[commit[:8]]
        missing = missing_changed_blobs(commit)
        assert bool(missing) == (commit[:8] != "ec22b7d3"), commit
        entry.update({"screen": "confirmed_optimization", "verdict": verdict,
                      "checker_status": checker_status, "checker_target": "Dafny",
                      "source_status": "missing_changed_blob" if missing else "changed_blobs_available",
                      "missing_changed_blobs": len(missing), "reason": reason,
                      "coverage": "one source-mapped helper proof" if commit[:8] == "ec22b7d3"
                      else "intent and source-availability screen; no checker run",
                      "evidence": "history-eq/dafny/aws-database-encryption-sdk-dynamodb/ec22b7d/README.md"
                      if commit[:8] == "ec22b7d3" else
                      "history-eq/dafny/aws-database-encryption-sdk-dynamodb/full-source-screening.md"})
        if commit in partials:
            apply_partial(entry)
        label = "confirmed_optimization; " + entry["verdict"]
    elif commit[:8] in unresolved:
        entry.update({"screen": "intent_unresolved", "reason": unresolved[commit[:8]]})
        label = "intent_unresolved"
    else:
        entry.update({"screen": "excluded_non_optimization",
                      "reason": "No distinct runtime-performance objective established by commit-message/path screen."})
        label = "excluded_non_optimization"
    entries.append(entry)
    url = f"https://github.com/aws/aws-database-encryption-sdk-dynamodb/commit/{commit}"
    table.append(f"| {index} | [`{commit[:8]}`]({url}) | {subject.replace('|', '&#124;')} | {label} | {len(paths)} |")

sample = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert len(sample) == len({e["commit"] for e in sample}) == 11
assert Counter(e["screen"] for e in entries) == {
    "confirmed_optimization": 11, "intent_unresolved": 2, "excluded_non_optimization": 257}
(results / "aws-database-encryption-sdk-dynamodb-full-source-audit.json").write_text(json.dumps({
    "repo": pin["repo"], "pin": pin["pin"], "source_commits": 270,
    "entries": entries, "summary": dict(Counter(e["screen"] for e in entries))}, indent=2) + "\n")
(results / "aws-database-encryption-sdk-dynamodb-optimization-sample.json").write_text(json.dumps({
    "repo": pin["repo"], "pin": pin["pin"],
    "selection": "all identified runtime-performance commits after complete pinned source-history message/path screen",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
report.write_text("\n".join(table) + "\n")
print(json.dumps({"source_commits": len(entries), "additional_optimizations": len(additional),
                  "sample_size": len(sample), "verdicts": dict(Counter(e["verdict"] for e in sample))},
                 sort_keys=True))
