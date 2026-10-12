#!/usr/bin/env python3
"""Cross-reference simdjson's fixed sample with source-screened changes."""

from collections import Counter
import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "simdjson")
source = next(r for r in availability["repos"] if r["repo"] == "simdjson")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}


def pending(reason, commit):
    return {
        "screen": "confirmed_optimization", "checker_status": "pending",
        "reason": reason,
        "evidence": f"history-eq/cpp/simdjson/source-screening/{commit[:8]}.source.diff",
    }


reviewed = {
    "06856ec929ebb5668c6e70e3927824c27fedeeff": {
        "screen": "excluded_non_optimization", "checker_status": "not_run",
        "reason": "Adds get_current_position/revert_position APIs for clients to avoid future rescans; no pre-existing implementation path is replaced.",
        "evidence": "history-eq/cpp/simdjson/source-screening/06856ec9.source.diff",
    },
    "12b518578d9535fad495029772c028476d17a519": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "NOT_EQUIV",
        "coverage": "old public C++ source client taking void (ParsedJson::*)() for printjson; valid JSON output and full parser unproved",
        "reason": "The same old-client member-function-pointer declaration type-checks with the exact parent header and fails with the child header because printjson changes return type from void to bool.",
        "evidence": "history-eq/cpp/simdjson/12b51857/README.md",
        "source_availability_evidence": "history-eq/cpp/simdjson/source-screening/missing-full-source.json",
    },
    "1421ae9cecb6e674c268e233535f33fad1b4228f": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "source-mapped Z3 algebra for both umul128 output halves; complete to_chars unproved and full-result Alive2 timeout",
        "reason": "Z3 proves the exact historical limb-product and carry formulas equal to unsigned 128-bit multiplication; full-result Alive2 checks still time out.",
        "evidence": "history-eq/cpp/simdjson/1421ae9c/README.md",
    },
    "1a195623a538d3ad1e9ae54b552655b696e57ac2": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "NOT_EQUIV",
        "coverage": "public C++ source API: simdjson_result<raw_json_string>::unescape(uint8_t *&)",
        "reason": "An old client expression type-checks against the exact parent header but fails against the child header because that public overload was removed; runtime JSON parsing remains unchecked.",
        "evidence": "history-eq/cpp/simdjson/1a195623/README.md",
        "source_availability_evidence": "history-eq/cpp/simdjson/source-screening/missing-full-source.json",
    },
    "314356d56161847ebfedd3fed35c2b200b14bf48": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "eight-byte ASCII-digit fast-path guard only; subsequent SIMD value computation and full parse_number unchecked",
        "reason": "Alive2 proves bidirectional equality for every 64-bit word between eight old scalar is_integer predicates and the exact new SWAR helper body under a source-audited wrapper.",
        "evidence": "history-eq/cpp/simdjson/314356d5/README.md",
    },
    "1513cdf7bcc2a3a7ba8204a7919258800963ab3f": {
        "screen": "excluded_non_optimization", "checker_status": "not_run",
        "reason": "Adds a documentation example without a production performance change.",
    },
    "2934892c0bde5dcb6e59fac5d4cdb17bcac56632": {
        "screen": "excluded_non_optimization", "checker_status": "not_run",
        "reason": "Documentation-only change without a production performance objective.",
    },
    "3b2870d822b1797cfebb368cd76df0413a7016bb": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "four-digit guard, value, and accumulator update; complete integer parser unproved",
        "reason": "Recovered exact historical header blobs and bidirectional Alive2 proofs cover the source-mapped four-digit scan.",
        "evidence": "history-eq/cpp/simdjson/3b2870d8/README.md",
    },
    "96462aec71f573a88321ebe227dd71d6488d7b87": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "first-digit accumulator, consumed byte, and leading-zero flag; complete floating parser unproved",
        "reason": "Recovered exact historical header blobs and bidirectional Alive2 proofs cover the source-mapped first-digit rewrite.",
        "evidence": "history-eq/cpp/simdjson/96462aec/README.md",
    },
}
assert len(reviewed) == 9
recovered = {"3b2870d822b1797cfebb368cd76df0413a7016bb",
             "96462aec71f573a88321ebe227dd71d6488d7b87"}
for commit in recovered:
    case = root / "history-eq/cpp/simdjson" / commit[:8]
    assert all("0 failed-to-prove transformations" in (case / f"{direction}-O0.log").read_text()
               for direction in ("forward", "backward"))
entries = []
for item in sample["sample"]:
    commit = item["commit"]
    source_item = source_by_commit[commit]
    entry = {**item, "source_status": source_item["status"]}
    if commit in reviewed:
        assert source_item["status"] == ("missing_changed_blob" if commit in recovered or
                                         commit.startswith(("1513cdf7", "2934892c")) else
                                         "changed_blobs_available")
        if commit in recovered:
            entry["source_status"] = "historical_blob_recovered"
        entry.update(reviewed[commit])
    else:
        assert source_item["status"] == "missing_changed_blob"
        entry.update({
            "screen": "intent_pending", "checker_status": "not_run",
            "reason": "At least one changed source blob is missing locally; optimization intent and checker scope have not been reviewed.",
        })
    entries.append(entry)
assert len(entries) == 200
screens = Counter(e["screen"] for e in entries)
verdicts = Counter(e.get("verdict") for e in entries if e["screen"] == "confirmed_optimization")
summary = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(e.get("checker_status") == "checked" for e in entries),
    "pending_checker_optimizations": sum(e.get("checker_status") == "pending" for e in entries),
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"],
        screens["intent_pending"]) == (6, 3, 191)
output = {
    "repo": "simdjson", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "simdjson-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
