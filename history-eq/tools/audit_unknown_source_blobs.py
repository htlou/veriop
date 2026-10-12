#!/usr/bin/env python3
"""Find exact changed Git blobs available for every selected UNKNOWN case."""

import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
status = json.loads((results / "CURRENT_OPTIMIZATION_STATUS.json").read_text())
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
report = {"scope": "selected UNKNOWN cases; all changed blobs including non-source files; unchanged dependencies not audited",
          "repos": {}}

for row in status["rows"]:
    if not row["unknown"]:
        continue
    name = row["repo"]
    sample = json.loads((root / row["evidence"]).read_text())
    unknown = [entry for entry in sample["entries"] if entry["verdict"] in ("UNKNOWN", "unverified")]
    assert len(unknown) == row["unknown"], name
    stores = [root / base / name for base in
              ("benchmarks/repos", "history-eq/repos", "aeneas/repos", "alive2/repos", "cuda/repos")]
    stores = [store for store in stores if (store / ".git").exists()]
    assert stores, name
    entries, oids = [], set()
    for entry in unknown:
        commit = entry["commit"]
        for store in stores:
            change = subprocess.run(
                ["git", "-C", str(store), "diff-tree", "--raw", "--no-commit-id",
                 "--no-renames", "-r", commit + "^", commit],
                capture_output=True, text=True, env=env)
            if change.returncode == 0 and change.stdout.strip():
                break
        else:
            entries.append({"commit": commit, "metadata_error": "exact change tree unavailable"})
            continue
        changed, paths = [], []
        for line in change.stdout.splitlines():
            fields, path = line.split("\t", 1)
            fields = fields.split()
            assert len(fields) == 5 and fields[0].startswith(":"), (name, commit, line)
            blobs = [oid for oid in fields[2:4] if oid.strip("0")]
            changed.extend(blobs)
            paths.append({"path": path, "blobs": blobs})
        assert changed, (name, commit)
        oids.update(changed)
        entries.append({"commit": commit, "changed_blobs": len(changed), "oids": changed,
                        "changed_paths": paths,
                        "metadata_store": str(store.relative_to(root))})
    present = set()
    query = "\n".join(sorted(oids)) + "\n"
    for store in stores:
        checked = subprocess.run(
            ["git", "-C", str(store), "cat-file", "--batch-check=%(objectname) %(objecttype)"],
            input=query, capture_output=True, text=True, check=True, env=env)
        lines = checked.stdout.splitlines()
        assert len(lines) == len(oids), (name, store)
        present.update(parts[0] for line in lines if (parts := line.split())[-1] == "blob")
    for entry in entries:
        if "oids" in entry:
            entry["missing_blobs"] = [oid for oid in entry.pop("oids") if oid not in present]
            entry["missing_paths"] = [item["path"] for item in entry["changed_paths"]
                                      if any(oid not in present for oid in item["blobs"])]
    report["repos"][name] = {"unknown": len(entries),
                             "changed_blobs_complete": sum(not e.get("missing_blobs", True) for e in entries),
                             "metadata_unavailable": sum("metadata_error" in e for e in entries),
                             "stores": [str(store.relative_to(root)) for store in stores],
                             "entries": entries}

assert sum(data["unknown"] for data in report["repos"].values()) == sum(row["unknown"] for row in status["rows"])
(results / "all-unknown-changed-blob-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps({name: {key: data[key] for key in ("unknown", "changed_blobs_complete", "metadata_unavailable")}
                  for name, data in report["repos"].items()}, sort_keys=True))
