#!/usr/bin/env python3
"""Screen all pinned v4-core src/ commits beyond the fixed keyword draw."""

from collections import Counter
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/v4-core"
report = root / "history-eq/solidity/v4-core/full-source-screening.md"
pin = next(r for r in json.loads((results / "pinned-samples.json").read_text())["repos"]
           if r["repo"] == "v4-core")
fixed = json.loads((results / "v4-core-pinned-sample-audit.json").read_text())
assert pin["pin"] == fixed["pin"] and pin["source_commits"] == 232
fixed_entries = {e["commit"]: e for e in fixed["entries"]}
confirmed = {
    "0f5d7394": "Moves an arithmetic result into an unchecked block to avoid overflow-check gas.",
    "d087b73d": "Caches liquidity in donate to avoid repeated loads.",
    "3fd55459": "Moves reserve accounting to transient storage and reduces sync work.",
    "9f50d5df": "Replaces modulo with bit operations in production math paths.",
    "0cd09ba4": "Moves currency-delta accounting to transient storage.",
    "eff96c17": "Hardcodes production storage constants instead of recomputing them.",
}
unresolved = {
    "32f5c852", "9b17e038", "354c34df", "e3247e73", "702f547b",
    "0e8e6c91", "0147af87", "b8a333b0", "a65bdfb2",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env, text=True)


rows = git("log", pin["pin"], "--no-merges", "--min-parents=1", "--format=%H%x09%aI%x09%s",
           "--", *pin["scope"]).splitlines()
assert len(rows) == 232 and len({row.split("\t", 1)[0] for row in rows}) == 232
assert set(fixed_entries) <= {row.split("\t", 1)[0] for row in rows}
assert len(confirmed) == 6 and not (set(confirmed) & unresolved)
entries = []
table = ["# v4-core complete pinned source-history intent screen", "",
         "All 232 non-merge commits touching `src/` at the pinned revision received a message/path "
         "intent screen. The 82 fixed keyword candidates retain their prior source-audited labels. "
         "Six additional nonkeyword commits explicitly change gas-relevant arithmetic, repeated loads, "
         "or storage operations. Historical changed blobs for all six are missing locally, so no "
         "Certora old/new comparison or official gas benchmark has run for them. The screen may miss "
         "unstated gas effects; unresolved intent is not counted as an optimization.", "",
         "| # | Commit | Subject | Intent screen |", "|---:|---|---|---|"]
for index, row in enumerate(rows, 1):
    commit, date, subject = row.split("\t", 2)
    if commit in fixed_entries:
        entry = dict(fixed_entries[commit])
        label = entry["screen"] + ("; " + entry["verdict"] if entry.get("verdict") else "")
    elif commit[:8] in confirmed:
        raw = git("diff-tree", "--raw", "--no-abbrev", "--no-commit-id", "-r", commit,
                  "--", *pin["scope"])
        blobs = [oid for line in raw.splitlines() for oid in line.split("\t", 1)[0].split()[2:4]
                 if oid.strip("0")]
        missing = [oid for oid in blobs if subprocess.run(
            ["git", "-C", str(repo), "cat-file", "-e", oid], env=env,
            capture_output=True).returncode]
        assert blobs and missing, commit
        entry = {"commit": commit, "date": date, "subject": subject,
                 "screen": "confirmed_optimization", "verdict": "UNKNOWN",
                 "checker_status": "not_run", "checker_target": "Certora",
                 "source_status": "missing_changed_blob",
                 "reason": confirmed[commit[:8]] + " Exact historical changed source is unavailable locally.",
                 "coverage": "commit-message/path intent screen and Git changed-blob audit; no solver run",
                 "evidence": "history-eq/solidity/v4-core/full-source-screening.md"}
        label = "confirmed_optimization; UNKNOWN"
    elif commit[:8] in unresolved:
        entry = {"commit": commit, "date": date, "subject": subject,
                 "screen": "intent_unresolved",
                 "reason": "Possible gas effect, but performance intent is not established by available message/path evidence."}
        label = "intent_unresolved"
    else:
        entry = {"commit": commit, "date": date, "subject": subject,
                 "screen": "excluded_non_optimization",
                 "reason": "No distinct gas/performance objective established by message/path screen."}
        label = "excluded_non_optimization"
    entries.append(entry)
    url = f"https://github.com/Uniswap/v4-core/commit/{commit}"
    table.append(f"| {index} | [`{commit[:8]}`]({url}) | {subject.replace('|', '&#124;')} | {label} |")

assert sum(e["screen"] == "confirmed_optimization" for e in entries) == 53
sample = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert len(sample) == len({e["commit"] for e in sample}) == 53
(results / "v4-core-full-source-audit.json").write_text(json.dumps({
    "repo": "v4-core", "pin": pin["pin"], "source_commits": 232,
    "entries": entries, "summary": dict(Counter(e["screen"] for e in entries))}, indent=2) + "\n")
(results / "v4-core-optimization-sample.json").write_text(json.dumps({
    "repo": "v4-core", "pin": pin["pin"],
    "selection": "all identified optimization-intent commits after screening the complete pinned src/ history",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
report.write_text("\n".join(table) + "\n")
print(json.dumps({"source_commits": len(entries), "additional_optimizations": len(confirmed),
                  "sample_size": len(sample), "verdicts": dict(Counter(e["verdict"] for e in sample))},
                 sort_keys=True))
