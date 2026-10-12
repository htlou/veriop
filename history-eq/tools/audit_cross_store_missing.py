#!/usr/bin/env python3
"""Search every local repository for UNKNOWN cases' exact missing Git blobs."""

import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "all-unknown-changed-blob-audit.json").read_text())["repos"]
missing = {oid for data in audit.values() for entry in data["entries"]
           for oid in entry.get("missing_blobs", [])}
stores = [store for base in ("benchmarks/repos", "history-eq/repos", "aeneas/repos",
                            "alive2/repos", "cuda/repos")
          for store in (root / base).iterdir() if (store / ".git").exists()]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
query = "\n".join(sorted(missing)) + "\n"
found = {}
for store in stores:
    checked = subprocess.run(
        ["git", "-C", str(store), "cat-file", "--batch-check=%(objectname) %(objecttype)"],
        input=query, capture_output=True, text=True, check=True, env=env)
    lines = checked.stdout.splitlines()
    assert len(lines) == len(missing), store
    for line in lines:
        parts = line.split()
        if parts[-1] == "blob" and parts[0] not in found:
            found[parts[0]] = str(store.relative_to(root))

newly_complete = [{"repo": name, "commit": entry["commit"], "missing_blobs": len(blobs)}
                  for name, data in audit.items() for entry in data["entries"]
                  if (blobs := entry.get("missing_blobs", [])) and all(oid in found for oid in blobs)]
record = {"scope": "all local repository object stores; exact Git blob IDs only",
          "missing_unique_objects": len(missing), "stores_checked": len(stores),
          "recovered_blobs": found, "newly_complete_unknown_cases": newly_complete}
(results / "cross-store-unknown-blob-recovery.json").write_text(json.dumps(record, indent=2) + "\n")
assert len(found) <= len(missing) and len(newly_complete) <= sum(d["unknown"] for d in audit.values())
print(json.dumps({"missing_objects": len(missing), "stores": len(stores),
                  "recovered": len(found), "newly_complete_cases": len(newly_complete)}))
