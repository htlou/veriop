#!/usr/bin/env python3
"""Audit selected documentation/test-only sample commits without source blobs."""

import json
import os
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parents[2]
sample = json.loads((root / "history-eq/results/pinned-samples.json").read_text())
cases = {
    "hacl-star": {
        "fb049bf4": "documentation", "8700bbb3": "tests", "87854e1b": "tests",
        "ad77bc4b": "tests", "dd91794c": "tests", "ef67858c": "tests",
    },
    "compress": {
        "23a5980e": "documentation", "577513c4": "documentation",
        "e699804f": "documentation", "ff328a01": "documentation",
        "2d315d3b": "test_files", "4af43443": "test_files",
        "75489f96": "test_files", "77b2d8ac": "test_files",
        "8e863cef": "test_files", "92686be3": "test_files",
        "ad2488a9": "test_files", "b949da47": "test_files",
        "c6084121": "test_files", "e2d8c6d6": "test_files",
    },
    "everparse": {
        "209556b9": "tests", "437b36ac": "tests", "568fa849": "tests",
        "6b4e888b": "tests", "b49591ff": "tests", "d43d361d": "tests",
        "2f432b73": "test_files",
    },
    "kontrol": {"2aef7fb6": "tests"},
    "aws-lc": {"0a5f0067": "test_files", "88045d31": "test_files",
               "8e8759f0": "test_files", "db50299b": "test_files"},
    "openssl": {"be3d90de": "test_files"},
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
records = []
for sampled in sample["repos"]:
    repo = sampled["repo"]
    if repo not in cases:
        continue
    for prefix, kind in cases[repo].items():
        matches = [item for item in sampled["sample"] if item["commit"].startswith(prefix)]
        assert len(matches) == 1, (repo, prefix)
        item = matches[0]
        result = subprocess.run(
            ["git", "-C", str(root / "benchmarks/repos" / repo), "diff-tree",
             "--no-commit-id", "--name-only", "-r", item["commit"]],
            env=env, capture_output=True, text=True, check=True,
        )
        paths = result.stdout.splitlines()
        assert paths, (repo, prefix)
        if kind == "documentation":
            assert all(Path(path).name.lower() == "readme.md" for path in paths), paths
        elif kind == "tests":
            assert all("/test/" in "/" + path.lower() + "/" or
                       "/tests/" in "/" + path.lower() + "/" for path in paths), paths
        else:
            assert all(re.search(r"(^test_|_test\.|^Test|_benchmark\.|^Benchmark)",
                                 Path(path).name) for path in paths), paths
        records.append({"repo": repo, "commit": item["commit"],
                        "subject": item["subject"], "kind": kind, "paths": paths})

assert len(records) == 33
for record in records:
    ledger = json.loads((root / "history-eq/results" /
                         f"{record['repo']}-pinned-sample-audit.json").read_text())
    entry = next(item for item in ledger["entries"] if item["commit"] == record["commit"])
    assert entry["screen"] == "excluded_non_optimization"
    assert entry["evidence"] == "history-eq/results/metadata-only-exclusions.json"
out = root / "history-eq/results/metadata-only-exclusions.json"
out.write_text(json.dumps({"method": "full-commit git diff-tree path audit; no changed blob contents needed",
                           "items": records}, indent=2) + "\n")
print(f"{len(records)} documentation/test-only commits audited")
