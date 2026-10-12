#!/usr/bin/env python3
"""Record explicit performance-adjacent cues still outside the FlashAttention sample."""
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
RESULTS = ROOT / "history-eq/results"
audit = json.loads((RESULTS / "flash-attention-nonkeyword-first1122-blob-audit.json").read_text())
sample = json.loads((RESULTS / "flash-attention-optimization-sample.json").read_text())
assert audit["pin"] == sample["pin"] and audit["draws_reviewed"] == 1122
selected = {e["commit"] for e in sample["entries"]}
remaining = [e for e in audit["entries"][200:] if e["commit"] not in selected]
assert len(remaining) == 820

cue = re.compile(
    r"\b(speed|faster|performance|perf|latency|throughput|spilling|register pressure|"
    r"occupancy|prefetch|hoist|reduce[ds]? [^\n]{0,25}(?:memory|time|register|launch|overhead)|"
    r"avoid[ s]+[^\n]{0,25}(?:allocation|redundant|extra)|overlap|pipelining|fused?|"
    r"specializ|skip[ s]+[^\n]{0,20}(?:mask|load|store|compute))\b", re.I)
reasons = {
    "7c995381": "New cross-entropy operator, without an old same-operator path.",
    "3edef7c0": "Removes an old fused-softmax kernel; no runtime gain stated.",
    "cd089597": "Adds dropout functionality to fused residual normalization.",
    "fb69aefd": "Adds SM120 support with tuned tiles; parent lacks the SM120 path, and the other change fixes causal-softmax correctness.",
    "74797571": "Fixes a Triton backward pipeline correctness bug.",
}
matches = []
for entry in remaining:
    found = cue.search(entry["message"])
    if found:
        prefix = entry["commit"][:8]
        assert prefix in reasons, (entry["draw"], prefix)
        matches.append({"draw": entry["draw"], "commit": entry["commit"],
                        "subject": entry["subject"], "cue": found.group(0),
                        "screen": "excluded_from_existing_path_optimization_sample",
                        "reason": reasons[prefix]})
assert {e["commit"][:8] for e in matches} == set(reasons)
(RESULTS / "flash-attention-tail-cue-audit.json").write_text(json.dumps({
    "repo": "flash-attention", "pin": audit["pin"], "remaining_later_draws": len(remaining),
    "method": "targeted performance/resource/fusion/pipeline cue scan of full local commit messages; not a complete intent screen",
    "matches": matches,
}, indent=2) + "\n")
print(f"reviewed {len(remaining)} later draws by cue; {len(matches)} exclusions")
