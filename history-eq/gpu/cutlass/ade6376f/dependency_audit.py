#!/usr/bin/env python3
"""Record local object availability for an exact historical SM90 instantiation."""

import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/cutlass"
commit = "ade6376fa075df782e012457751169fe2a5a53b4"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
paths = (
    "include/cutlass/gemm/kernel/sm90_gemm_tma_warpspecialized_cooperative.hpp",
    "include/cutlass/gemm/kernel/sm90_gemm_tma_warpspecialized_pingpong.hpp",
    "include/cutlass/gemm/collective/builders/sm90_common.inl",
    "include/cute/tensor.hpp",
    "examples/49_hopper_gemm_with_collective_builder/49_collective_builder.cu",
)


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], env=env,
                          capture_output=True, text=True)


parent = git("rev-parse", commit + "^")
assert parent.returncode == 0, parent.stderr
report = {"commit": commit, "parent": parent.stdout.strip(), "source_store": str(repo), "revisions": {}}
for side, revision in (("old", report["parent"]), ("new", commit)):
    report["revisions"][side] = {}
    for path in paths:
        oid = git("rev-parse", revision + ":" + path)
        assert oid.returncode == 0, (path, oid.stderr)
        blob = oid.stdout.strip()
        present = git("cat-file", "-e", blob)
        report["revisions"][side][path] = {"blob": blob, "available_locally": present.returncode == 0}

(here / "dependency-audit.json").write_text(json.dumps(report, indent=2) + "\n")
for side, items in report["revisions"].items():
    print(side, sum(item["available_locally"] for item in items.values()), "/", len(items), "objects locally available")
