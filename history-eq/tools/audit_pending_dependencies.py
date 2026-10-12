#!/usr/bin/env python3
"""Search local Git stores for two selected cases' exact build dependencies."""

import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
kontrol = json.loads((root / "history-eq/k/kontrol/a70c6644/result.json").read_text())
cutlass = json.loads((root / "history-eq/gpu/cutlass/ade6376f/dependency-audit.json").read_text())
ids = {"kontrol_assert": kontrol["sides"]["old"]["required_blob_oid"]}
assert ids["kontrol_assert"] == kontrol["sides"]["new"]["required_blob_oid"]
for name, path in (
    ("cutlass_sm90_common", "include/cutlass/gemm/collective/builders/sm90_common.inl"),
    ("cutlass_tensor", "include/cute/tensor.hpp"),
    ("cutlass_example", "examples/49_hopper_gemm_with_collective_builder/49_collective_builder.cu"),
):
    old = cutlass["revisions"]["old"][path]
    new = cutlass["revisions"]["new"][path]
    assert old == new and not old["available_locally"]
    ids[name] = old["blob"]
assert len(ids) == len(set(ids.values())) == 4

stores = [store for base in ("benchmarks/repos", "history-eq/repos", "aeneas/repos",
                            "alive2/repos", "cuda/repos")
          for store in (root / base).iterdir() if (store / ".git").exists()]
found = {name: [] for name in ids}
for store in stores:
    checked = subprocess.run(
        ["git", "-C", str(store), "cat-file", "--batch-check=%(objectname) %(objecttype)"],
        input="\n".join(ids.values()) + "\n", capture_output=True, text=True, check=True,
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    lines = checked.stdout.splitlines()
    assert len(lines) == len(ids), store
    for (name, oid), line in zip(ids.items(), lines):
        parts = line.split()
        assert parts[0] == oid
        if parts[-1] == "blob":
            found[name].append(str(store.relative_to(root)))

result = {
    "scope": "exact unchanged historical dependencies for two selected source-complete not-run cases; all local Git stores",
    "stores_checked": len(stores),
    "objects": {name: {"oid": oid, "found_in": found[name]} for name, oid in ids.items()},
}
assert len(stores) >= 2 and all(not value for value in found.values())
(root / "history-eq/results/pending-dependency-cross-store-audit.json").write_text(
    json.dumps(result, indent=2) + "\n")
print(json.dumps({"stores": len(stores), "found": found}))
