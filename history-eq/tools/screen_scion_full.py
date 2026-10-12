#!/usr/bin/env python3
"""Screen the complete pinned SCION source history beyond fixed keyword candidates."""

from collections import Counter
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/scion"
report = root / "history-eq/gobra/scion/full-source-screening.md"
pin = next(r for r in json.loads((results / "pinned-samples.json").read_text())["repos"]
           if r["repo"] == "scion")
fixed = json.loads((results / "scion-pinned-sample-audit.json").read_text())
assert pin["pin"] == fixed["pin"] and pin["source_commits"] == 293
fixed_entries = {e["commit"]: e for e in fixed["entries"]}
confirmed = {
    "150bf583": "Reduces repeated SVC resolution by using available beacon service addresses.",
    "9ceb22a4": "Memoizes CPU-heavy path fingerprint calculations and reuses their buffer.",
    "fbd9eb0d": "Avoids repeated TRC file parsing and database writes.",
    "3590d24c": "Caches TLS key and certificate loading instead of repeating it for each session.",
    "a8003f13": "Increases the underlay send buffer to avoid packet drops under unresolved ARP pressure.",
}
unresolved = {
    "64f3b664", "e5a3a695", "a82e4fb9", "ad0d3bc8", "49b3f90c",
    "36bdd436",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env, text=True)


rows = git("log", pin["pin"], "--no-merges", "--min-parents=1", "--format=%H%x09%aI%x09%s",
           "--", *pin["scope"]).splitlines()
assert len(rows) == 293 and len({row.split("\t", 1)[0] for row in rows}) == 293
assert set(fixed_entries) <= {row.split("\t", 1)[0] for row in rows}
assert len(confirmed) == 5 and not (set(confirmed) & unresolved)
entries = []
table = ["# SCION complete pinned source-history intent screen", "",
         "All 293 non-merge commits touching the selected Go source scopes at the pinned revision "
         "received a message/path intent screen. The 52 fixed keyword candidates retain their prior "
         "source-audited labels. Five additional nonkeyword commits explicitly avoid repeated work "
         "or packet drops; each lacks at least one exact historical changed blob, so no Gobra "
         "old/new check or official benchmark was run for them. The screen may miss unstated "
         "performance effects; unresolved intent is not counted as an optimization.", "",
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
                 "checker_status": "not_run", "checker_target": "Gobra",
                 "source_status": "missing_changed_blob",
                 "reason": confirmed[commit[:8]] + " Exact historical changed source is incomplete locally.",
                 "coverage": "commit-message/path intent screen and Git changed-blob audit; no verifier run",
                 "evidence": "history-eq/gobra/scion/full-source-screening.md"}
        label = "confirmed_optimization; UNKNOWN"
    elif commit[:8] in unresolved:
        entry = {"commit": commit, "date": date, "subject": subject,
                 "screen": "intent_unresolved",
                 "reason": "Possible runtime effect, but optimization intent is not established by available message/path evidence."}
        label = "intent_unresolved"
    else:
        entry = {"commit": commit, "date": date, "subject": subject,
                 "screen": "excluded_non_optimization",
                 "reason": "No distinct runtime performance objective established by message/path screen."}
        label = "excluded_non_optimization"
    entries.append(entry)
    url = f"https://github.com/scionproto/scion/commit/{commit}"
    table.append(f"| {index} | [`{commit[:8]}`]({url}) | {subject.replace('|', '&#124;')} | {label} |")

assert sum(e["screen"] == "confirmed_optimization" for e in entries) == 23
sample = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert len(sample) == len({e["commit"] for e in sample}) == 23
(results / "scion-full-source-audit.json").write_text(json.dumps({
    "repo": "scion", "pin": pin["pin"], "source_commits": 293,
    "entries": entries, "summary": dict(Counter(e["screen"] for e in entries))}, indent=2) + "\n")
(results / "scion-optimization-sample.json").write_text(json.dumps({
    "repo": "scion", "pin": pin["pin"],
    "selection": "all identified optimization-intent commits after screening the complete pinned source history",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
report.write_text("\n".join(table) + "\n")
print(json.dumps({"source_commits": len(entries), "additional_optimizations": len(confirmed),
                  "sample_size": len(sample), "verdicts": dict(Counter(e["verdict"] for e in sample))},
                 sort_keys=True))
