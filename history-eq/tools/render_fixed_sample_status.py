#!/usr/bin/env python3
"""Audit and render fixed-sample coverage without turning missing data into verdicts."""

from collections import Counter
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
sample = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
archive_crosscheck = json.loads((results / "pinned-archive-blob-crosscheck.json").read_text())
available_by_repo = {r["repo"]: r for r in availability["repos"]}
assert archive_crosscheck["missing_blob_ids"] == len({m["blob"] for r in availability["repos"] for i in r["items"] for m in i.get("missing", [])})

confirmed_screens = {"confirmed_optimization", "confirmed_performance"}
excluded_screens = {"excluded_non_optimization", "excluded_nonoptimization"}
verdict_map = {
    "NOT_EQUIV": "unequal", "verified_inequal": "unequal",
    "verified_inequal_local": "unequal",
    "EQUIV": "equal_full", "REFINES": "equal_full",
    "EQUIV_PARTIAL": "equal_partial", "EQUIV_BOUNDED": "equal_partial",
    "REFINES_PARTIAL": "equal_partial",
    "verified_equal_partial": "equal_partial",
    "UNKNOWN": "unknown", "unverified": "unknown",
    "UNSUPPORTED": "unsupported", "unsupported": "unsupported",
}


def optional_count(record, names, expected):
    for name in names:
        if name in record:
            assert record[name] == expected, (name, record[name], expected)


rows = []
for repo in sample["repos"]:
    name = repo["repo"]
    commits = {x["commit"] for x in repo["sample"]}
    assert len(commits) == len(repo["sample"])
    source = available_by_repo[name]
    assert source["pin"] == repo["pin"]
    assert {x["commit"] for x in source["items"]} == commits
    source_counts = Counter(x["status"] for x in source["items"])
    assert sum(source_counts.values()) == len(commits)
    row = {
        "repo": name,
        "sampled_keyword_candidates": len(commits),
        "changed_blobs_available_now": source_counts["changed_blobs_available"],
        "missing_changed_blob_now": source_counts["missing_changed_blob"],
        "tree_error_now": source_counts["tree_error"],
        "ledger": None,
        "confirmed_optimizations": None,
        "excluded_non_optimizations": None,
        "intent_pending": None,
        "checked_optimizations": None,
        "pending_checker": None,
        "verified_inequal": None,
        "equal_or_refine_full": None,
        "equal_or_refine_partial_or_bounded": None,
        "unverified": None,
        "unsupported": None,
    }
    ledger_path = results / f"{name}-pinned-sample-audit.json"
    if ledger_path.exists():
        ledger = json.loads(ledger_path.read_text())
        entries = ledger.get("entries", ledger.get("items"))
        assert entries is not None
        assert ledger["pin"] == repo["pin"]
        assert ledger["sample_size"] == len(commits)
        assert len(entries) == len(commits)
        assert {x["commit"] for x in entries} == commits
        source_by_commit = {x["commit"]: x for x in source["items"]}
        for entry in entries:
            if "source_status" in entry:
                original = source_by_commit[entry["commit"]]
                if entry["source_status"] == "historical_blob_recovered":
                    # shortcut: simdjson is the only ledger with recovered headers; extend when another repo needs it.
                    assert name == "simdjson" and original["status"] == "missing_changed_blob"
                    recovered = set()
                    for path in (root / "history-eq/cpp/simdjson").glob("*/historical-*.h"):
                        data = path.read_bytes()
                        recovered.add(hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest())
                    assert {m["blob"] for m in original["missing"]} <= recovered, (name, entry["commit"])
                else:
                    assert entry["source_status"] == original["status"], (name, entry["commit"])
        screens = Counter(x.get("screen", x.get("classification")) for x in entries)
        confirmed = sum(screens[x] for x in confirmed_screens)
        excluded = sum(screens[x] for x in excluded_screens)
        pending = screens["intent_pending"]
        assert confirmed + excluded + pending == len(commits), (name, screens)
        outcomes = Counter()
        for entry in entries:
            if entry.get("screen", entry.get("classification")) not in confirmed_screens:
                continue
            verdict = entry.get("verdict", entry.get("checker_verdict"))
            if entry.get("coverage") == "partial" and verdict in ("EQUIV", "REFINES"):
                verdict += "_PARTIAL"
            if verdict in (None, "not_run"):
                outcomes["pending_checker"] += 1
            else:
                assert verdict in verdict_map, (name, entry["commit"], verdict)
                outcomes[verdict_map[verdict]] += 1
        checked = confirmed - outcomes["pending_checker"]
        reported = ledger.get("summary", ledger.get("counts", {}))
        optional_count(reported, ("confirmed_optimizations", "confirmed_performance"), confirmed)
        optional_count(reported, ("checked_optimizations", "confirmed_checked", "outcome_labeled_optimizations"), checked)
        optional_count(reported, ("pending_checker_optimizations", "confirmed_not_run", "pending_outcome_labels"), outcomes["pending_checker"])
        optional_count(reported, ("excluded_non_optimizations", "excluded_nonoptimization", "excluded_non_optimization"), excluded)
        optional_count(reported, ("intent_pending", "pending_intent_screening", "pending_review"), pending)
        row.update({
            "ledger": str(ledger_path.relative_to(root)),
            "confirmed_optimizations": confirmed,
            "excluded_non_optimizations": excluded,
            "intent_pending": pending,
            "checked_optimizations": checked,
            "pending_checker": outcomes["pending_checker"],
            "verified_inequal": outcomes["unequal"],
            "equal_or_refine_full": outcomes["equal_full"],
            "equal_or_refine_partial_or_bounded": outcomes["equal_partial"],
            "unverified": outcomes["unknown"],
            "unsupported": outcomes["unsupported"],
        })
    rows.append(row)

assert len(rows) == 25
summary = {
    "sampled_keyword_candidates": sum(r["sampled_keyword_candidates"] for r in rows),
    "changed_blobs_available_now": sum(r["changed_blobs_available_now"] for r in rows),
    "missing_changed_blob_now": sum(r["missing_changed_blob_now"] for r in rows),
    "repos_with_commit_ledgers": sum(r["ledger"] is not None for r in rows),
    "repos_without_commit_ledgers": sum(r["ledger"] is None for r in rows),
}
for field in (
    "confirmed_optimizations", "excluded_non_optimizations", "intent_pending",
    "checked_optimizations", "pending_checker", "verified_inequal",
    "equal_or_refine_full", "equal_or_refine_partial_or_bounded",
    "unverified", "unsupported",
):
    summary[f"ledger_{field}"] = sum(r[field] or 0 for r in rows)
assert summary["sampled_keyword_candidates"] == summary["changed_blobs_available_now"] + summary["missing_changed_blob_now"] + sum(r["tree_error_now"] for r in rows)
assert summary["ledger_checked_optimizations"] == sum(summary[f"ledger_{field}"] for field in (
    "verified_inequal", "equal_or_refine_full", "equal_or_refine_partial_or_bounded",
    "unverified", "unsupported",
))
output = {"sample_seed": sample["seed"], "scope": "fixed keyword-candidate samples, not all historical optimization commits", "summary": summary, "repos": rows}
(results / "FIXED_SAMPLE_STATUS.json").write_text(json.dumps(output, indent=2) + "\n")


def cell(value):
    return "—" if value is None else str(value)


ledger_coverage = (
    f"{summary['repos_with_commit_ledgers']} repositories have per-commit ledgers covering every sampled keyword candidate. "
    "These tracking records include pending states; they do not mean all candidates have been screened or checked. "
)
if summary["repos_without_commit_ledgers"]:
    ledger_coverage += (
        f"The other {summary['repos_without_commit_ledgers']} have case studies in "
        "[PINNED_PROGRESS.md](PINNED_PROGRESS.md) but no per-commit ledger yet. "
    )
ledger_coverage += (
    "A dash means no auditable fixed-sample count, not zero. Full means complete coverage within the "
    "recorded checker scope and configuration, not necessarily every platform or the whole library. "
    "Equal/refine partial includes bounded or local proofs and does not certify the whole commit."
)


lines = [
    "# Fixed-sample status across the 25 pinned repositories",
    "",
    f"The deterministic `{sample['seed']}` sample has {summary['sampled_keyword_candidates']:,} **keyword candidates**, not confirmed optimizations. Local Git stores contain every changed source blob by exact Git object ID for {summary['changed_blobs_available_now']:,} candidates; {summary['missing_changed_blob_now']:,} have at least one changed blob missing. This includes `history-eq/repos/xxHash` and `history-eq/repos/rust-base64` at the pinned HEADs, plus exact matching blobs in `cuda/repos/llama.cpp` at a different HEAD. An [exact-ID cross-check](pinned-archive-blob-crosscheck.json) of {archive_crosscheck['files_scanned']:,} archived files recovered {archive_crosscheck['recovered_blob_ids']} of the {archive_crosscheck['missing_blob_ids']:,} missing Git blobs, completing {archive_crosscheck['newly_complete_candidates']} additional candidates. Source absence is a coverage issue, not a checker verdict.",
    "",
    ledger_coverage,
    "",
    f"Within the {summary['repos_with_commit_ledgers']} ledgered repositories, {summary['ledger_confirmed_optimizations']} candidates are confirmed optimizations and {summary['ledger_checked_optimizations']} have assigned outcome labels: {summary['ledger_verified_inequal']} unequal, {summary['ledger_equal_or_refine_full']} full equal/refine, {summary['ledger_equal_or_refine_partial_or_bounded']} partial/bounded equal/refine, {summary['ledger_unverified']} unverified, and {summary['ledger_unsupported']} unsupported. Another {summary['ledger_pending_checker']} confirmed optimizations have no outcome label; {summary['ledger_intent_pending']} sampled candidates still await intent screening.",
    "",
    "| Repository | Sample | Blobs here | Confirmed | Labeled | Unequal | Equal/refine full | Equal/refine partial | Unverified | Unsupported | Label pending | Intent pending |",
    "|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
]
for row in rows:
    label = row["repo"]
    if row["ledger"]:
        label = f"[{label}]({Path(row['ledger']).name})"
    lines.append("| " + " | ".join((
        label,
        str(row["sampled_keyword_candidates"]),
        str(row["changed_blobs_available_now"]),
        cell(row["confirmed_optimizations"]),
        cell(row["checked_optimizations"]),
        cell(row["verified_inequal"]),
        cell(row["equal_or_refine_full"]),
        cell(row["equal_or_refine_partial_or_bounded"]),
        cell(row["unverified"]),
        cell(row["unsupported"]),
        cell(row["pending_checker"]),
        cell(row["intent_pending"]),
    )) + " |")
lines += [
    "",
    "Counts refer to sampled commits, not proof units. An `UNKNOWN` label can mean missing exact historical source, timeout, or another incomplete check; it does not imply that a checker ran. Unequal and equal/refine verdicts can be scoped to an API, helper, specialization, or precondition; read each per-commit record before treating one as a whole-program result. Missing source alone never establishes equality, inequality, or checker rejection.",
    "",
    "Run `python3 history-eq/tools/render_fixed_sample_status.py` from the project root to revalidate the sample, availability, and ledger commit sets and regenerate this table and [JSON](FIXED_SAMPLE_STATUS.json).",
    "",
]
(results / "FIXED_SAMPLE_STATUS.md").write_text("\n".join(lines))
print(json.dumps(summary, sort_keys=True))
