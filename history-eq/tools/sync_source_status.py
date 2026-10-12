#!/usr/bin/env python3
"""Refresh ledger source-availability fields from the latest exact-blob audit."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())

for repo in availability["repos"]:
    path = results / f"{repo['repo']}-pinned-sample-audit.json"
    if not path.exists():
        continue
    ledger = json.loads(path.read_text())
    entries = ledger.get("entries", ledger.get("items", []))
    by_commit = {item["commit"]: item for item in repo["items"]}
    changed = 0
    for entry in entries:
        if "source_status" not in entry:
            continue
        source = by_commit[entry["commit"]]
        if entry["source_status"] == source["status"]:
            continue
        entry["source_status"] = source["status"]
        if entry.get("screen") == "intent_pending":
            if source["status"] == "changed_blobs_available":
                store = source.get("source_store")
                entry["reason"] = (
                    f"Changed source blobs are available in {store}; optimization intent "
                    "and checker scope await review."
                )
            elif source["status"] == "missing_changed_blob":
                entry["reason"] = (
                    "At least one changed source blob is missing locally; optimization "
                    "intent and checker scope have not been reviewed."
                )
        changed += 1
    if changed:
        path.write_text(json.dumps(ledger, indent=2, ensure_ascii=False) + "\n")
        print(repo["repo"], changed)
