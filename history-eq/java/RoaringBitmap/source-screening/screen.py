#!/usr/bin/env python3
"""Exclude new-API candidates lacking a historical implementation pair."""

from collections import Counter
import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
manifest = json.loads((here / "source_manifest.json").read_text())
ledger_path = root / "history-eq/results/RoaringBitmap-pinned-sample-audit.json"
ledger = json.loads(ledger_path.read_text())
entries = {entry["commit"]: entry for entry in ledger["entries"]}

reasons = {
    "07ec0dd3": "Adds new BitSetUtil/BufferBitSetUtil bitmapOf(ByteBuffer) overloads; existing BitSet conversion paths are not replaced.",
    "2884f89b": "Introduces ParallelAggregation and supporting isEmpty/wrapping APIs; existing OR/XOR implementations and call sites are not replaced by the new parallel entry points.",
    "39a6de27": "Adds Roaring64NavigableMap naivelazyor/repairAfterLazy and bridge classes; existing OR APIs are unchanged.",
    "5d61acf4": "Introduces BatchIterator and getBatchIterator APIs; existing iteration methods retain their implementation (interface public-keyword cleanup is semantic no-op).",
    "a068cf6a": "Adds rank-peekable iterator interfaces and FastRankRoaringBitmap.getIntRankIterator; existing iterator values and traversal methods are not replaced.",
    "aa47718c": "Adds Container and bitmap orNot/iorNot APIs; no parent-version orNot execution path exists to compare.",
}

for short, reason in reasons.items():
    commit = next(commit for commit in entries if commit.startswith(short))
    diff = (here / f"{short}.source.diff").read_bytes()
    assert hashlib.sha256(diff).hexdigest() == manifest["commits"][commit]["diff_sha256"]
    entry = entries[commit]
    assert entry["screen"] in ("confirmed_optimization", "excluded_non_optimization")
    assert entry.get("verdict") is None
    entry["screen"] = "excluded_non_optimization"
    entry["reason"] = reason
    entry["evidence"] = f"history-eq/java/RoaringBitmap/source-screening/{short}.source.diff"
    entry.pop("checker_status", None)

screens = Counter(entry["screen"] for entry in ledger["entries"])
verdicts = Counter(entry.get("verdict") for entry in ledger["entries"]
                   if entry["screen"] == "confirmed_optimization")
ledger["summary"].update({
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": screens["confirmed_optimization"] - verdicts[None],
    "pending_checker_optimizations": verdicts[None],
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_review": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_or_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
})
ledger_path.write_text(json.dumps(ledger, indent=2, ensure_ascii=False) + "\n")
print(ledger["summary"])
