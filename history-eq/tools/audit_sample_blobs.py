#!/usr/bin/env python3
"""Check exact changed blob IDs across local Git object stores for each repository."""

import json
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[2]
SAMPLE = json.loads((ROOT / "history-eq/results/pinned-samples.json").read_text())
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(repo, *args, input=None):
    return subprocess.run(
        ["git", "-C", str(repo), *args], input=input, text=True,
        capture_output=True, env=ENV,
    )


results = []
for sampled in SAMPLE["repos"]:
    repo = ROOT / "benchmarks/repos" / sampled["repo"]
    stores = [repo]
    alternates = [ROOT / "history-eq/repos" / sampled["repo"]]
    if sampled["repo"] == "rust-base64":
        alternates.append(ROOT / "aeneas/repos/rust-base64")
    if sampled["repo"] == "xxHash":
        alternates.append(ROOT / "alive2/repos/xxHash")
    if sampled["repo"] == "llama.cpp":
        alternates.append(ROOT / "cuda/repos/llama.cpp")
    for alternate in alternates:
        if (alternate / ".git").exists():
            head = git(alternate, "rev-parse", "HEAD")
            if head.returncode == 0:
                stores.append(alternate)
    rows = []
    all_oids = set()
    for item in sampled["sample"]:
        rev = item["commit"]
        diff = git(repo, "diff-tree", "--no-commit-id", "--no-renames", "-r",
                   "--raw", rev + "^", rev, "--", *sampled["scope"])
        if diff.returncode:
            rows.append({"commit": rev, "status": "tree_error",
                         "detail": diff.stderr.strip()[-300:]})
            continue
        changed = []
        for line in diff.stdout.splitlines():
            fields, path = line.split("\t", 1)
            old_oid, new_oid = fields.split()[2:4]
            for oid in (old_oid, new_oid):
                if oid.strip("0"):
                    changed.append((path, oid))
                    all_oids.add(oid)
        rows.append({"commit": rev, "changed": changed})
    missing_by_store = {}
    for store in stores:
        check = git(store, "cat-file", "--batch-check",
                    input="".join(oid + "\n" for oid in sorted(all_oids)))
        if check.returncode:
            raise RuntimeError((sampled["repo"], store, check.stderr[-300:]))
        missing_by_store[store] = {line.split()[0] for line in check.stdout.splitlines()
                                   if line.endswith(" missing")}
    for row in rows:
        if "changed" not in row:
            continue
        changed = row.pop("changed")
        available_store = next((store for store in stores
                                if all(oid not in missing_by_store[store] for _, oid in changed)), None)
        absent = [{"path": path, "blob": oid} for path, oid in changed
                  if all(oid in missing_by_store[store] for store in stores)]
        row["status"] = "missing_changed_blob" if absent else "changed_blobs_available"
        row["missing"] = absent
        if available_store is not None:
            row["source_store"] = str(available_store.relative_to(ROOT))
    counts = {status: sum(row["status"] == status for row in rows)
              for status in ("changed_blobs_available", "missing_changed_blob", "tree_error")}
    results.append({"repo": sampled["repo"], "pin": sampled["pin"],
                    "local_stores": [
                        {"path": str(store.relative_to(ROOT)),
                         "head": git(store, "rev-parse", "HEAD").stdout.strip(),
                         "head_matches_pin": git(store, "rev-parse", "HEAD").stdout.strip() == sampled["pin"]}
                        for store in stores
                    ],
                    "sample_size": len(rows), "counts": counts, "items": rows})
    print(sampled["repo"], counts)

out = ROOT / "history-eq/results/pinned-changed-blob-availability.json"
out.write_text(json.dumps({"method": "GIT_NO_LAZY_FETCH=1 git diff-tree --raw on pinned primary commit, then git cat-file --batch-check exact blob IDs across local stores for the same repository (alternate HEAD may differ); checks changed blobs only, not full checkout or checker support",
                           "repos": results}, indent=2) + "\n")
