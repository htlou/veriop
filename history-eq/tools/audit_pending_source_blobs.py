#!/usr/bin/env python3
"""Audit exact changed blobs for optimization checks marked not_run."""

import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
report = {}
status = json.loads((root / "history-eq/results/CURRENT_OPTIMIZATION_STATUS.json").read_text())
for row in status["rows"]:
    if not row["ledger_marked_not_run"]:
        continue
    name = row["repo"]
    repo = root / ("history-eq/repos/xxHash" if name == "xxHash" else f"benchmarks/repos/{name}")
    stores = [repo]
    alternates = [root / "history-eq/repos" / name]
    if name == "rust-base64":
        alternates.append(root / "aeneas/repos/rust-base64")
    if name == "xxHash":
        alternates.append(root / "alive2/repos/xxHash")
    if name == "llama.cpp":
        alternates.append(root / "cuda/repos/llama.cpp")
    stores.extend(path for path in alternates if (path / ".git").exists() and path != repo)
    sample = json.loads((root / row["evidence"]).read_text())
    entries = []
    all_oids = set()
    for entry in sample["entries"]:
        if entry.get("checker_status") != "not_run" or entry.get("screen") != "confirmed_optimization":
            continue
        result = subprocess.run(
            ["git", "-C", str(repo), "diff-tree", "--raw", "--no-commit-id", "-r",
             entry["commit"] + "^", entry["commit"]],
            capture_output=True, text=True, check=True, env=env,
        )
        oids = []
        for line in result.stdout.splitlines():
            fields = line.split("\t", 1)[0].split()
            assert len(fields) == 5 and fields[0].startswith(":"), line
            oids.extend(oid for oid in fields[2:4] if set(oid) != {"0"})
        assert oids, entry["commit"]
        all_oids.update(oids)
        entries.append({"commit": entry["commit"], "changed_blobs": len(oids), "oids": oids})
    present = set()
    for store in stores:
        check = subprocess.run(
            ["git", "-C", str(store), "cat-file", "--batch-check=%(objectname) %(objecttype)"],
            input="\n".join(sorted(all_oids)) + "\n", capture_output=True,
            text=True, check=True, env=env,
        )
        present.update(parts[0] for line in check.stdout.splitlines()
                       if (parts := line.split())[-1] == "blob")
        assert len(check.stdout.splitlines()) == len(all_oids)
    assert present <= all_oids
    for entry in entries:
        entry["missing_blobs"] = [oid for oid in entry.pop("oids") if oid not in present]
    report[name] = {"checkout": str(repo.relative_to(root)),
                    "stores_checked": [str(store.relative_to(root)) for store in stores],
                    "not_run": len(entries),
                    "changed_source_complete": sum(not e["missing_blobs"] for e in entries),
                    "entries": entries}
    assert len(entries) == row["ledger_marked_not_run"], name

out = root / "history-eq/results/pending-source-blob-audit.json"
out.write_text(json.dumps({"scope": "changed blobs only; unchanged dependencies not audited",
                           "repos": report}, indent=2) + "\n")
print(json.dumps({name: {key: data[key] for key in ("not_run", "changed_source_complete")}
                  for name, data in report.items()}))
