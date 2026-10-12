#!/usr/bin/env python3
"""Cross-reference the fixed v4-core sample with reviewed historical changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "v4-core")
source = next(r for r in availability["repos"] if r["repo"] == "v4-core")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}

reviewed = {
    "0fc5a0b2f44032d5c67816ec9663dd4d02d5dc64": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNKNOWN",
        "coverage": "Pool.tickSpacingToMaxLiquidityPerTick; Certora EqCheck rules generated but cloud proof not run",
        "reason": "Local preparation succeeds; missing CERTORAKEY prevents a solver verdict.",
        "evidence": "history-eq/solidity/v4-core/0fc5a0b2f4/README.md",
    },
    "12a1d648fd2de6865b0ac56ce9fe7dcd5937db29": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV",
        "coverage": "complete changed production Pool.sol guard, arbitrary fee-comparison and exactInput booleans",
        "reason": "Exact historical source differs only by the nested guard; Z3 proves identical revert condition.",
        "evidence": "history-eq/solidity/v4-core/12a1d648/README.md",
    },
}
# Upstream commit pages establish performance intent; the missing historical
# blobs prevent a source-matched Certora comparison for these 80 commits.
performance = set("""
0260e43c 03636de8 126ec867 18320a9f 18b223ca 1dda6f50 1f4e8b64
27acc259 285b53e3 2c54be77 2df9bb3b 35edd8ed 3b4cb205 3b698eb0
45db18c5 4ea21e0f 568f7c45 5951b359 5bcb2e65 620fab1e 830dfffa
86532f8d 8a4ebb07 8dfc5365 8f147f1e a8ca4bc9 ad4cb384 b9f442cc
bd6cce29 bf06c56f c0adc1c5 c32b28b8 c5a23f0c cd989b47 d50bfc5e
d5c21e79 d5d4957b e3bef1e7 e3cea107 e4271089 e8e63c87 edc9b10b
f9c8d784 fa5164a1 fe946ca1
""".split())
nonperformance = set("""
03f81025 057c5320 06564d33 0bb382b4 1f350fa9 241e025b 2ca3f3be
3351c80e 35fab85b 3921fad6 4a13732d 4caac19f 4e41c837 552192f5
5a7990b1 5eb17c99 5fb47b1d 63ba0559 6f5f3f2d 7998e6c3 7d970265
7fef84ac 80b75259 81a69c6f 88482f7d 92257892 a13a07a4 a4b28e34
ad4b3f03 aec915d1 b5b36146 c8173143 e22afd13 efb0dec6 f25e9fee
""".split())
test_or_documentation = set("""
0bb382b4 2ca3f3be 3351c80e 35fab85b 4a13732d 4e41c837 5eb17c99
5fb47b1d 7998e6c3 81a69c6f 92257892 f25e9fee
""".split())
mixed_behavior = set("""
18320a9f 3b4cb205 45db18c5 8a4ebb07 f9c8d784
""".split())
assert performance.isdisjoint(nonperformance)
assert test_or_documentation <= nonperformance
assert mixed_behavior <= performance
assert len(reviewed) == 2
prefixes = {x["commit"][:8] for x in sample["sample"] if x["commit"] not in reviewed}
assert len(prefixes) == 80 and prefixes == performance | nonperformance
screening_evidence = "history-eq/solidity/v4-core/online-source-gap-screening.md"
entries = []
for item in sample["sample"]:
    commit = item["commit"]
    source_item = source_by_commit[commit]
    entry = {**item, "source_status": source_item["status"]}
    if commit in reviewed:
        assert source_item["status"] == "changed_blobs_available"
        entry.update(reviewed[commit])
    elif commit[:8] in performance:
        assert source_item["status"] == "missing_changed_blob"
        reason = "Upstream commit explicitly targets runtime gas or bytecode efficiency."
        if commit[:8] in mixed_behavior:
            reason += " It also changes protocol behavior or includes audit fixes."
        entry.update({
            "screen": "confirmed_optimization", "checker_status": "not_run",
            "verdict": "UNKNOWN",
            "coverage": "upstream commit-message intent screen; exact historical source and Certora solver result unavailable",
            "reason": reason, "evidence": screening_evidence,
        })
    elif commit[:8] in nonperformance:
        assert source_item["status"] == "missing_changed_blob"
        reason = ("Test, documentation, measurement, or compiler-version maintenance; no runtime-performance claim."
                  if commit[:8] in test_or_documentation else
                  "Feature, API, security, or correctness change without an explicit performance objective.")
        if commit[:8] == "efb0dec6":
            reason = "Commit explicitly says its assembly-block change has no gas improvement."
        entry.update({
            "screen": "excluded_non_optimization", "checker_status": "not_run",
            "reason": reason, "evidence": screening_evidence,
        })
    else:
        assert source_item["status"] == "missing_changed_blob"
        raise AssertionError(f"unscreened commit: {commit}")
    entries.append(entry)
assert len(entries) == 82
summary = {
    "confirmed_optimizations": 2 + len(performance),
    "outcome_labeled_optimizations": 2 + len(performance),
    "pending_outcome_labels": 0,
    "excluded_non_optimizations": len(nonperformance),
    "pending_intent_screening": 0,
    "verified_inequal": 0,
    "verified_equal_or_refinement_full": 1,
    "unverified": 1 + len(performance),
    "unsupported": 0,
}
output = {
    "repo": "v4-core", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "v4-core-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
lines = [
    "# v4-core fixed-sample source-gap screening", "",
    "The 80 previously pending keyword candidates were screened against their upstream GitHub commit pages. "
    "A performance-intent label is not a source-matched proof: every one of these commits lacks at least one "
    "historical changed blob locally. Confirmed performance commits therefore remain `UNKNOWN`; Certora "
    "has not compared either historical revision. Mixed-purpose commits are retained when their message "
    "explicitly describes gas or bytecode savings. No official before/after gas score is claimed here.", "",
    f"Result: {len(performance)} performance-intent commits (`UNKNOWN`), "
    f"{len(nonperformance)} excluded commits, zero intent-pending commits.", "",
    "| Commit | Upstream subject | Intent screen | Reason |", "|---|---|---|---|",
]
for entry in entries:
    if entry["commit"] in reviewed:
        continue
    url = f"https://github.com/Uniswap/v4-core/commit/{entry['commit']}"
    label = "performance; UNKNOWN" if entry["screen"] == "confirmed_optimization" else "excluded"
    lines.append(f"| [`{entry['commit'][:8]}`]({url}) | {entry['subject'].replace('|', '&#124;')} | {label} | {entry['reason']} |")
(root / screening_evidence).write_text("\n".join(lines) + "\n")
print(json.dumps(summary, sort_keys=True))
