#!/usr/bin/env python3
"""Archive exact production diffs for newly available sampled llama.cpp commits."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
stores = (root / "cuda/repos/llama.cpp", root / "benchmarks/repos/llama.cpp")
sample = json.loads((root / "history-eq/results/pinned-samples.json").read_text())
sampled = next(item for item in sample["repos"] if item["repo"] == "llama.cpp")
availability = json.loads((root / "history-eq/results/pinned-changed-blob-availability.json").read_text())
available = next(item for item in availability["repos"] if item["repo"] == "llama.cpp")
by_commit = {item["commit"]: item for item in available["items"]}
shorts = tuple(
    item["commit"][:8]
    for item in sampled["sample"]
    if by_commit[item["commit"]]["status"] == "changed_blobs_available"
)


def git(repo, *args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={
            **os.environ,
            "GIT_NO_LAZY_FETCH": "1",
            "GIT_ALTERNATE_OBJECT_DIRECTORIES": os.pathsep.join(
                str(store / ".git/objects") for store in stores
            ),
        },
    )


manifest = {"source_store": "cuda/repos/llama.cpp", "commits": {}}
for short in shorts:
    commit = next(item["commit"] for item in sampled["sample"] if item["commit"].startswith(short))
    assert by_commit[commit]["status"] == "changed_blobs_available", commit
    repo = next(store for store in stores if subprocess.run(
        ["git", "-C", str(store), "cat-file", "-e", commit + "^"],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
        stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
    ).returncode == 0)
    assert git(repo, "rev-parse", commit).decode().strip() == commit
    parent = git(repo, "rev-parse", commit + "^").decode().strip()
    paths = git(repo, "diff-tree", "--no-commit-id", "--name-only", "-r", parent, commit,
                "--", "ggml/src/").decode().splitlines()
    assert paths, commit
    diff = git(repo, "diff", "--no-ext-diff", parent, commit, "--", "ggml/src/")
    assert diff, commit
    (here / f"{short}.source.diff").write_bytes(diff)
    (here / f"{short}.paths.txt").write_text("\n".join(paths) + "\n")
    manifest["commits"][commit] = {
        "source_store": str(repo.relative_to(root)),
        "parent": parent,
        "diff_sha256": hashlib.sha256(diff).hexdigest(),
        "changed_source_files": len(paths),
    }
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print(f"archived {len(shorts)} exact sampled llama.cpp source diffs")
