#!/usr/bin/env python3
"""Screen every pinned AWS Encryption SDK source commit for runtime optimization."""

from collections import Counter
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/aws-encryption-sdk"
evidence = root / "history-eq/dafny/aws-encryption-sdk/full-source-screening.md"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
manifest = json.loads((results / "pinned-samples.json").read_text())
target = next(r for r in manifest["repos"] if r["repo"] == "aws-encryption-sdk")
fixed = json.loads((results / "aws-encryption-sdk-pinned-sample-audit.json").read_text())
assert target["pin"] == fixed["pin"] and target["source_commits"] == 138
fixed_by_commit = {e["commit"]: e for e in fixed["entries"]}
performance = {
    "79e13061": ("UNSUPPORTED", "checked", "Dafny serializers and Go interop are changed; targeted Dafny refinement checks do not cover the whole commit."),
    "ffc1e2de": ("UNSUPPORTED", "not_run", "Changes generated Go array conversion, outside the Dafny-source checker."),
    "2ea5e47a": ("UNSUPPORTED", "not_run", "Enables an external Rust small-int runtime feature, outside a source-matched Dafny/Aeneas comparison."),
    "dbe55d7f": ("UNKNOWN", "checked", "Replaces BigInteger paths; two local sequence rewrites verify, but no whole-commit relation is proved."),
}
special_exclusions = {
    "8133da80": "Dependency updates and example test blocking changes; no production speed change identified.",
    "fad048c4": "Changes Rust async compatibility and dependencies; no production speed gain identified.",
    "bc46d0f7": "Changes Dafny proof structure to avoid a verification timeout, without an executable speed change.",
    "f41a689d": "Adds a shared-cache example; it does not optimize existing SDK production code.",
    "d8ca214c": "Adds a shared-cache example; it does not optimize existing SDK production code.",
    "65447369": "Changes .NET project metadata only.",
    "0cc745d8": "Changes .NET project metadata only.",
    "11da1824": "Changes .NET project metadata only.",
}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True, env=env, check=True).stdout


lines = git("log", target["pin"], "--no-merges", "--min-parents=1", "--format=%H%x09%aI%x09%s",
            "--", *target["scope"]).splitlines()
assert len(lines) == target["source_commits"] == len({line.split("\t", 1)[0] for line in lines})
entries = []
table = [
    "# AWS Encryption SDK complete pinned source-history screen", "",
    "All 138 non-merge commits touching the pinned source scope received a commit-message and changed-path "
    "intent screen at the exact pin; ambiguous changes were inspected in their diffs. Four identified commits "
    "change runtime paths for performance; the other 134 show features, fixes, proof/build/test changes, "
    "dependency updates, or refactors without an identified runtime-speed optimization. All four identified "
    "optimizations are retained; this screen cannot rule out every unstated performance effect in other commits.", "",
    "The verdicts for the four optimizations retain the scope of the [earlier source and Dafny audit](README.md). "
    "Dafny's local target checks do not prove whole-commit equivalence, and upstream performance claims are not "
    "locally measured official benchmark scores.", "",
    "| History # | Commit | Subject | Decision | Changed paths |", "|---:|---|---|---|---:|",
]
for index, line in enumerate(lines, 1):
    commit, date, subject = line.split("\t", 2)
    paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit, "--", *target["scope"]).splitlines()
    assert paths, (index, commit)
    entry = {"commit": commit, "date": date, "subject": subject, "history_index": index,
             "changed_paths": paths}
    if commit[:8] in performance:
        verdict, checker_status, reason = performance[commit[:8]]
        raw = git("diff-tree", "--raw", "--no-abbrev", "--no-commit-id", "-r", commit, "--", *target["scope"])
        blobs = [oid for item in raw.splitlines() for oid in item.split("\t", 1)[0].split()[2:4] if oid.strip("0")]
        assert blobs and all(subprocess.run(["git", "-C", str(repo), "cat-file", "-e", oid],
                                            capture_output=True, env=env).returncode == 0 for oid in blobs)
        entry.update({"screen": "confirmed_optimization", "verdict": verdict,
                      "checker_status": checker_status, "source_status": "changed_blobs_available",
                      "reason": reason, "evidence": "history-eq/dafny/aws-encryption-sdk/README.md"})
        decision = f"optimization; {verdict}"
    else:
        earlier = fixed_by_commit.get(commit)
        reason = (earlier or {}).get("reason") or special_exclusions.get(commit[:8]) or (
            "Commit message and changed paths show a feature, correctness/compatibility change, "
            "dependency/build/test/proof update, or refactor without an identified runtime-speed optimization.")
        entry.update({"screen": "excluded_non_optimization", "reason": reason})
        decision = "excluded"
    if commit in fixed_by_commit:
        assert entry["screen"] == fixed_by_commit[commit]["screen"], commit
    entries.append(entry)
    url = f"https://github.com/aws/aws-encryption-sdk/commit/{commit}"
    table.append(f"| {index} | [`{commit[:8]}`]({url}) | {subject.replace('|', '&#124;')} | {decision} | {len(paths)} |")

assert Counter(e["screen"] for e in entries) == {"confirmed_optimization": 4, "excluded_non_optimization": 134}
sample = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert {e["commit"][:8] for e in sample} == set(performance)
(results / "aws-encryption-sdk-full-source-audit.json").write_text(json.dumps({
    "repo": target["repo"], "pin": target["pin"], "source_commits": len(entries), "entries": entries,
    "summary": dict(Counter(e["screen"] for e in entries))}, indent=2) + "\n")
(results / "aws-encryption-sdk-optimization-sample.json").write_text(json.dumps({
    "repo": target["repo"], "pin": target["pin"],
    "selection": "all identified runtime optimizations after screening all pinned source-changing non-merge commits",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
evidence.write_text("\n".join(table) + "\n")
print(json.dumps({"source_commits": len(entries), "optimization_sample": len(sample),
                  "verdicts": dict(Counter(e["verdict"] for e in sample))}, sort_keys=True))
