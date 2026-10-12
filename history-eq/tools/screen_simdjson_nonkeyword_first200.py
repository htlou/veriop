#!/usr/bin/env python3
"""Record clear optimization intents in the first seeded simdjson nonkeyword draw."""

from collections import Counter
import json
from pathlib import Path


results = Path(__file__).resolve().parents[1] / "results"
audit = json.loads((results / "simdjson-nonkeyword-first200-blob-audit.json").read_text())
sample_path = results / "simdjson-optimization-sample.json"
sample = json.loads(sample_path.read_text())
assert audit["repo"] == sample["repo"] == "simdjson"
assert audit["pin"] == sample["pin"]
assert audit["draws_reviewed"] == 200 and audit["complete_changed_blobs"] == 0

# The message describes a specific avoided operation on the runtime path.
confirmed = {
    63: ("70c2a1c9", "Short-circuits stage-two parsing for empty objects and arrays."),
    71: ("a22c20fa", "Removes an unnecessary check from parsed-JSON processing."),
    87: ("0b75de12", "Avoids a temporary std::string allocation when loading a padded string."),
    162: ("6a2728e7", "Removes dynamic allocation from the iterator constructor."),
}

screened = []
for item in audit["entries"]:
    draw = item["draw"]
    if draw in confirmed:
        prefix, reason = confirmed[draw]
        assert item["commit"].startswith(prefix)
        assert item["missing_changed_blobs"]
        status = "confirmed_optimization"
    else:
        reason = "Optimization intent is unresolved from local commit metadata; exact changed source is unavailable."
        status = "intent_unresolved"
    screened.append({"draw": draw, "commit": item["commit"], "subject": item["subject"],
                     "screen": status, "reason": reason,
                     "missing_changed_blobs": item["missing_changed_blobs"]})

triage_name = "simdjson-nonkeyword-first200-triage.json"
(results / triage_name).write_text(json.dumps({
    "repo": "simdjson", "pin": audit["pin"], "selection_seed": audit["selection_seed"],
    "draws_reviewed_for_source": 200, "confirmed_optimization_intent": len(confirmed),
    "intent_unresolved": 200 - len(confirmed), "complete_changed_blobs": 0,
    "entries": screened,
}, indent=2) + "\n")

by_commit = {entry["commit"]: entry for entry in sample["entries"]}
for item in screened:
    if item["screen"] != "confirmed_optimization":
        continue
    assert item["commit"] not in by_commit
    sample["entries"].append({
        **item, "selected_by": "seeded-nonkeyword", "checker_status": "not_run",
        "verdict": "UNKNOWN", "coverage": "exact historical changed C++ blobs missing; no Alive2 pair run",
        "checker_target": "Alive2", "evidence": f"history-eq/results/{triage_name}",
    })
sample["sample_size"] = len(sample["entries"])
sample["selection"] += "; plus four clear optimization intents in the first 200 seeded nonkeyword source commits"
sample["summary"] = dict(Counter(entry["verdict"] for entry in sample["entries"]))
assert sample["sample_size"] == 100
sample_path.write_text(json.dumps(sample, indent=2) + "\n")
print(json.dumps({"source_audited": 200, "added": 4, "sample_size": 100,
                  "intent_unresolved": 196, "complete_changed_blobs": 0}))
