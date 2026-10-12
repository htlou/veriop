#!/usr/bin/env python3
"""Record optimization intent for the complete seeded nonkeyword base64 history."""
import json
import subprocess
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "history-eq/repos/rust-base64"
source = json.loads((results / "rust-base64-nonkeyword-first215-blob-audit.json").read_text())
prior = json.loads((results / "rust-base64.json").read_text())
assert source["draws_reviewed"] == source["nonkeyword_commits"] == 215
assert source["complete_changed_blobs"] == 215
known = {subprocess.check_output(["git", "-C", str(repo), "rev-parse", e["commit"] + "^{commit}"],
                                 text=True).strip(): e for e in prior["commits"] if e["selected_by"] == "manual-scan"}
assert len(known) == 9
additional = {164: "The no-padding encode path now avoids appending and then popping padding bytes; exact src/lib.rs diff reviewed."}
reviewed_non_optimizations = {
    28: "Helper collapse accompanies a slice API test; no performance objective is established.",
    93: "The source diff replaces manual input partitioning with chunks(); no performance objective is established.",
    179: "The source diff extends the writer API to borrowed Strings; no before/after speed objective is established.",
}
entries = []
for item in source["entries"]:
    draw, commit = item["draw"], item["commit"]
    assert not item["missing_changed_blobs"]
    if commit in known:
        screen, reason = "confirmed_optimization", known[commit]["change_summary"]
    elif draw in additional:
        screen, reason = "confirmed_optimization", additional[draw]
    elif draw in reviewed_non_optimizations:
        screen, reason = "excluded_non_optimization", reviewed_non_optimizations[draw]
    else:
        screen, reason = "excluded_non_optimization", "No performance objective established by the commit message and changed-path review."
    entries.append({"draw": draw, "commit": commit, "subject": item["subject"],
                    "screen": screen, "reason": reason, "exact_changed_blobs_available": True})
assert len({e["commit"] for e in entries}) == 215
assert sum(e["screen"] == "confirmed_optimization" for e in entries) == 10
assert entries[164]["screen"] == "confirmed_optimization" and entries[164]["commit"].startswith("de3a1f04")
(results / "rust-base64-nonkeyword-full-screen.json").write_text(json.dumps({
    "repo": "rust-base64", "pin": source["pin"], "selection_seed": source["selection_seed"],
    "draws_reviewed": 215, "confirmed_optimizations": 10, "new_confirmed": 1,
    "intent_unresolved": 0, "entries": entries,
}, indent=2) + "\n")
print("reviewed 215 nonkeyword commits; confirmed 10 (1 new), no unresolved intent")
