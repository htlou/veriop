#!/usr/bin/env python3
"""Cross-reference OpenSSL's fixed sample with source-audited case results."""

import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
samples = json.loads((results / "pinned-samples.json").read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
sample = next(r for r in samples["repos"] if r["repo"] == "openssl")
source = next(r for r in availability["repos"] if r["repo"] == "openssl")
assert sample["pin"] == source["pin"]
source_by_commit = {x["commit"]: x for x in source["items"]}

reviewed = {
    "9170cc0398222778065e098e396b8eb8cd0de1d3": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "NOT_EQUIV",
        "coverage": "internal ossl_sm2_ciphertext_size API under a valid group and allocation failure",
        "reason": "Separate historical static libcrypto builds and an Alive2 model show old failure versus new success.",
        "evidence": "history-eq/c/openssl/9170cc03/README.md",
    },
    "a3ea6bf0ef703b38a656245931979c7e53c410b7": {
        "screen": "confirmed_optimization", "checker_status": "checked", "verdict": "NOT_EQUIV",
        "coverage": "source-audited c2i_ibuf on valid ASN.1 content FF 00; public caller consequence inferred",
        "reason": "Native C witness and Alive2 show old length/magnitude 2/0100 versus new 1/00.",
        "evidence": "history-eq/c/openssl/a3ea6bf0/README.md",
    },
}
assert len(reviewed) == 2
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
assert len(entries) == 200
summary = {
    "confirmed_optimizations": 2,
    "checked_optimizations": 2,
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": 0,
    "pending_intent_screening": 198,
    "verified_inequal": 2,
    "unverified": 0,
    "unsupported": 0,
}
output = {
    "repo": "openssl", "pin": sample["pin"], "sample_seed": samples["seed"],
    "sample_size": len(entries),
    "source_manifest": "history-eq/results/pinned-samples.json",
    "source_availability": "history-eq/results/pinned-changed-blob-availability.json",
    "summary": summary, "entries": entries,
}
(results / "openssl-pinned-sample-audit.json").write_text(json.dumps(output, indent=2) + "\n")
print(json.dumps(summary, sort_keys=True))
