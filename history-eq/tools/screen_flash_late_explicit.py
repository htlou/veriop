#!/usr/bin/env python3
"""Add clear existing-path performance intents from later seeded FlashAttention draws."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "flash-attention-nonkeyword-first1122-blob-audit.json").read_text())
path = results / "flash-attention-optimization-sample.json"
sample = json.loads(path.read_text())
assert sample["pin"] == audit["pin"]

selected = {
    153: ("UNKNOWN", "Changes the existing SM90 forward cluster eligibility from Q head dimension to V head dimension; the upstream source comments identify cluster choice as a measured performance decision."),
    118: ("UNKNOWN", "Tunes the existing fused-dense workspace size by GPU generation."),
    201: ("UNKNOWN", "Makes the existing SM90 backward dK/dV path more asynchronous while fixing it."),
    203: ("UNKNOWN", "Adds a split-batch implementation of the existing attention operation."),
    511: ("UNSUPPORTED", "Makes NCCL collectives asynchronous in the existing parallel cross-entropy operator; this multi-device schedule is outside a single-PTX-kernel comparison."),
    474: ("UNKNOWN", "Replaces the existing cross-entropy softmax with an online calculation."),
    588: ("UNKNOWN", "Removes shared-memory swizzling from the existing forward V path."),
    679: ("UNSUPPORTED", "Uses the KV-cache attention operation in generation; host/operator composition is outside a single-PTX-kernel comparison."),
    883: ("UNKNOWN", "Tries direct register-to-global atomic addition in the existing SM100 backward kernel."),
    931: ("UNSUPPORTED", "Enables CUDA graph replay for existing attention calls; launch/capture behavior is outside a single-PTX-kernel comparison."),
    936: ("UNKNOWN", "Writes directly to the final attention output when a batch has one split, avoiding the partial-output path."),
    981: ("UNSUPPORTED", "Starts an all-gather earlier in the existing fused-dense operator; communication overlap is outside a single-PTX-kernel comparison."),
    1014: ("UNKNOWN", "Tries a different SM100 backward tile scheduler."),
    1068: ("UNKNOWN", "Uses an asynchronous elect-one commit/release pipeline in the existing SM90 forward kernel."),
    1095: ("UNKNOWN", "Tries a PTX GEMM path in the existing SM100 backward kernel."),
    1010: ("UNKNOWN", "Accounts for dQ accumulation bytes when calculating deterministic backward head swizzle against the L2 budget."),
}
by_draw = {entry["draw"]: entry for entry in audit["entries"]}
selected_commits = {by_draw[draw]["commit"] for draw in selected}
sample["entries"] = [entry for entry in sample["entries"] if entry["commit"] not in selected_commits]
existing = {entry["commit"] for entry in sample["entries"]}
added = []
for draw, (verdict, reason) in selected.items():
    source = by_draw[draw]
    assert source["commit"] not in existing
    assert source["missing_changed_blobs"]
    changed_paths = sorted({blob["path"] for blob in source["missing_changed_blobs"]})
    assert changed_paths
    added.append({"draw": draw, "commit": source["commit"], "subject": source["subject"],
                  "changed_paths": changed_paths,
                  "screen": "confirmed_optimization", "selected_by": "seeded-nonkeyword",
                  "reason": reason, "source_status": "missing_changed_blob",
                  "checker_target": "Volta", "checker_status": "not_run", "verdict": verdict,
                  "coverage": "commit-message and changed-path intent screen; exact historical old/new source unavailable",
                  "upstream_url": f"https://github.com/Dao-AILab/flash-attention/commit/{source['commit']}",
                  "evidence": "history-eq/results/flash-attention-nonkeyword-late-explicit.json"})
    existing.add(source["commit"])

(results / "flash-attention-nonkeyword-late-explicit.json").write_text(json.dumps({
    "repo": "flash-attention", "pin": audit["pin"], "screening_basis": "seeded draw, full commit message, and changed-path tree",
    "checker_runs": 0, "selected": added,
}, indent=2) + "\n")
sample["entries"].extend(added)
sample["sample_size"] = len(sample["entries"])
sample["selection"] = ("all fixed keyword candidates after intent screening; first 200 seeded "
                       "nonkeyword source commits screened; 75 individually inspected later draws "
                       "plus 13 additional and sixteen further explicit existing-path optimization intents")
sample["summary"] = dict(Counter(entry["verdict"] for entry in sample["entries"]))
assert len(existing) == sample["sample_size"] == 198
path.write_text(json.dumps(sample, indent=2) + "\n")
print(json.dumps({"added": len(added), "sample_size": sample["sample_size"],
                  "verdicts": sample["summary"]}, sort_keys=True))
