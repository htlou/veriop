#!/usr/bin/env python3
"""Find missing historical Git blobs already materialized as workspace files."""

import hashlib
import json
import os
from pathlib import Path


root = Path(__file__).resolve().parents[2]
output = root / "history-eq/results/materialized-unknown-blob-recovery.json"
audit = json.loads((root / "history-eq/results/all-unknown-changed-blob-audit.json").read_text())["repos"]
wanted = {oid for repo in audit.values() for entry in repo["entries"]
          for oid in entry.get("missing_blobs", [])}
suffixes = {Path(item["path"]).suffix for repo in audit.values() for entry in repo["entries"]
            for item in entry.get("changed_paths", []) if item["path"] in entry.get("missing_paths", [])}
suffixes.add(".txt")  # Historical source snapshots are sometimes saved with this suffix.
assert hashlib.sha1(b"blob 0\0").hexdigest() == "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391"

found = {}
count = size_total = 0
for base, dirs, files in os.walk(root / "history-eq"):
    dirs[:] = [d for d in dirs if d not in {".git", "target", "build", "node_modules",
                                           ".venv", "venv", "__pycache__", ".lake"}]
    for name in files:
        path = Path(base) / name
        if path == output or path.suffix not in suffixes or path.is_symlink():
            continue
        size = path.stat().st_size
        digest = hashlib.sha1(f"blob {size}\0".encode())
        with path.open("rb") as source:
            for chunk in iter(lambda: source.read(1 << 20), b""):
                digest.update(chunk)
        count += 1
        size_total += size
        oid = digest.hexdigest()
        if oid in wanted:
            found.setdefault(oid, []).append(str(path.relative_to(root)))

archived_count = count
seen = set()
for repo in audit.values():
    paths = {item for entry in repo["entries"] for item in entry.get("missing_paths", [])}
    for store in repo["stores"]:
        if not store.startswith(("benchmarks/repos/", "aeneas/repos/",
                                 "alive2/repos/", "cuda/repos/")):
            continue
        for rel in paths:
            assert not Path(rel).is_absolute() and ".." not in Path(rel).parts
            path = root / store / rel
            if path in seen or not path.is_file() or path.is_symlink():
                continue
            seen.add(path)
            size = path.stat().st_size
            digest = hashlib.sha1(f"blob {size}\0".encode())
            with path.open("rb") as source:
                for chunk in iter(lambda: source.read(1 << 20), b""):
                    digest.update(chunk)
            count += 1
            size_total += size
            oid = digest.hexdigest()
            if oid in wanted:
                found.setdefault(oid, []).append(str(path.relative_to(root)))

assert count - archived_count == len(seen)
assert all(oid in wanted for oid in found)
complete = [{"repo": name, "commit": entry["commit"]} for name, repo in audit.items()
            for entry in repo["entries"] if entry.get("missing_blobs")
            and all(oid in found for oid in entry["missing_blobs"])]
report = {"scope": "history-eq materialized files matching missing-path suffixes, plus .txt snapshots; current repo worktree files at exact missing paths",
          "missing_unique_objects": len(wanted), "files_hashed": count, "bytes_hashed": size_total,
          "archive_files_hashed": archived_count, "worktree_files_hashed": count - archived_count,
          "recovered_blobs": found,
          "newly_complete_unknown_cases": complete}
output.write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps({"missing_objects": len(wanted), "files_hashed": count,
                  "recovered": len(found), "newly_complete_cases": len(complete)}))
