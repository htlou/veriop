#!/usr/bin/env python3
"""Match missing historical regex blobs against exact local crate-source bytes."""

import hashlib
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "regex-nonkeyword-source-availability.json").read_text())
missing = {sha for e in audit["entries"] for sha in e["missing_changed_blob_ids"]}
matches = {}
for version in (root / "aeneas/env/cargo/registry/src").glob("*/regex*"):
    if not version.is_dir():
        continue
    for path in version.rglob("*"):
        if not path.is_file():
            continue
        data = path.read_bytes()
        sha = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        if sha in missing:
            matches.setdefault(sha, []).append(str(path.relative_to(root)))

complete = [e["commit"] for e in audit["entries"]
            if all(sha in matches for sha in e["missing_changed_blob_ids"])]
assert len(complete) >= audit["changed_blobs_complete"]
(results / "regex-nonkeyword-registry-crosscheck.json").write_text(json.dumps({
    "repo": "regex", "pin": audit["pin"], "registry_matches": matches,
    "missing_blob_ids_matched": len(matches),
    "commits_complete_with_registry": complete,
    "note": "Matches use exact Git blob SHA-1 over crate-source bytes; availability of changed files does not establish full historical dependencies or a checker result.",
}, indent=2) + "\n")
print(json.dumps({"matched_blobs": len(matches), "complete_commits": len(complete)}))
