#!/usr/bin/env python3
"""Cross-reference FlashAttention's fixed sample with screened GPU changes."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "flash-attention")
source = next(r for r in availability["repos"] if r["repo"] == "flash-attention")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}


def excluded(reason, commit):
    return {
        "screen": "excluded_non_optimization", "checker_status": "not_run",
        "reason": reason,
        "evidence": f"history-eq/gpu/flash-attention/source-screening/{commit[:8]}.source.diff",
    }


reviewed = {
    "002cce0a1068f8c07dfccb5a1d232b9a3276947c": excluded(
        "Adds FA3 package/import installation wrappers; no existing attention kernel path is optimized.",
        "002cce0a",
    ),
    "052015a43fe9419f2ff5e30d6df5160b2b305c63": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "Exact six changed CuTe Python file pairs; Volta PTX parser and local CuTe compiler availability",
        "reason": "Volta accepts PTX rather than CuTe Python, and both exact historical mask modules fail its lexer. The local CuTe compiler lacks cutlass._mlir, so no parent/child PTX pair can be generated; no semantic verdict was produced.",
        "evidence": "history-eq/gpu/flash-attention/052015a4/README.md",
    },
    "0823cf7b5d96499c1c79a4f64b1e256a035ba4b4": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "EQUIV_PARTIAL",
        "coverage": "3D nonpaged TMA argument branch under mapped null-block-table precondition; TMA call abstracted; 4D timed out; whole commit unknown",
        "reason": "Alive2 proved both directions for the source-mapped 3D C model. Both 4D directions timed out, and the other changed header and kernel wiring remain unchecked.",
        "evidence": "history-eq/gpu/flash-attention/0823cf7b/README.md",
    },
    "1c523c1ce1139a73a00818183a9a992238c849bf": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "one compiled interleaved rotary specialization",
        "reason": "Volta rejects the historical reference kernel at its structured-CTA guard requirement.",
        "evidence": "history-eq/gpu/flash-attention/1c523c1/README.md",
    },
    "25e6d94496fa5d4eb39a0ee28884fc8f142af1e5": excluded(
        "Copies benchmark helpers into the CuTe directory; no attention implementation before/after change.",
        "25e6d944",
    ),
    "6c73fb506fa84424c3fa04880f85c789b4a498e2": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "UNSUPPORTED",
        "coverage": "Exact two changed CuTe Python file pairs; Volta PTX parser and local CuTe compiler availability",
        "reason": "Volta rejects both historical Python target modules as non-PTX input. The local CuTe compiler lacks cutlass._mlir, so no parent/child PTX pair or numerical checker verdict was produced.",
        "evidence": "history-eq/gpu/flash-attention/6c73fb50/README.md",
    },
    "73bd3f3bbb6775c5286e4b095efbc62d9fd4e5dd": excluded(
        "Moves Python formatting/configuration files to avoid PEP 517; no attention computation change.",
        "73bd3f3b",
    ),
    "8d454a3a9336954dae75013958dc3903ce781b66": {
        "screen": "confirmed_optimization", "checker_status": "checked",
        "verdict": "EQUIV_PARTIAL", "coverage": "17 positive divisors; all nonnegative Int32 dividends; changed scheduler arithmetic only",
        "reason": "Source-audited Z3 queries prove the changed FastDivmod tile-scheduler arithmetic for selected divisors; the new SM100 TMA path and whole kernel remain unproved.",
        "evidence": "history-eq/gpu/flash-attention/8d454a3a/README.md",
    },
    "df5fe55264e4b59dcb1ce8e83f2e900bba164e92": {
        "screen": "confirmed_optimization", "checker_status": "checked",
        "verdict": "UNSUPPORTED", "unsupported_reason": "new-code-does-not-build",
        "coverage": "default split configuration",
        "reason": "The historical candidate get_num_splits body fails C++ syntax checking: two uses of the old sm80 variable remain after its declaration was renamed sm8x. No candidate kernel can be compared in this configuration.",
        "evidence": "history-eq/gpu/flash-attention/df5fe552/README.md",
    },
}
assert len(reviewed) == 9
entries = []
for item in sample["sample"]:
    commit = item["commit"]
    source_item = source_by_commit[commit]
    entry = {**item, "source_status": source_item["status"]}
    if commit in reviewed:
        assert source_item["status"] == "changed_blobs_available"
        entry.update(reviewed[commit])
    else:
        assert source_item["status"] == "missing_changed_blob"
        entry.update({
            "screen": "intent_pending", "checker_status": "not_run",
            "reason": "At least one changed source blob is missing locally; optimization intent and checker scope have not been reviewed.",
        })
    entries.append(entry)
assert len(entries) == 179
summary = {
    "confirmed_optimizations": 6,
    "checked_optimizations": 6,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 3,
    "pending_intent_screening": 170,
    "verified_inequal": 0,
    "verified_equal_partial": 2,
    "unverified": 0,
    "unsupported": 4,
}
output = {
    "repo": "flash-attention", "pin": sample["pin"],
    "sample_seed": samples["seed"], "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "flash-attention-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
