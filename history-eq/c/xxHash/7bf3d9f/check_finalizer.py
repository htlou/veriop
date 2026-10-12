"""Audit the historical XXH64 finalizer's 128 Alive2 comparisons."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/xxHash"
parent = "94e7193eeaad2829f70aef9b9de4e52fac9bef5d"
child = "7bf3d9f331d0b7d0f5856ae1894e0314e2b304c2"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env).decode().strip()


assert git("rev-parse", child + "^") == parent
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", child) == "xxhash.h"
source = {}
for label, commit in (("old", parent), ("new", child)):
    path = here / label / "xxhash.h"
    assert subprocess.check_output(("git", "hash-object", str(path))).decode().strip() == git("rev-parse", f"{commit}:xxhash.h")
    source[label] = git("rev-parse", f"{commit}:xxhash.h")

wrapper = (here / "wrap_finalizer.c").read_text()
assert wrapper.count("CHECK_TAIL(") == 33
assert wrapper.count("CHECK_ALIGNED(") == 33
results = {}
for mode in ("finalizer-raw", "finalizer-reroll"):
    directory = here / mode
    data = json.loads((directory / "result.json").read_text())
    assert data["verdict"] == "EQUIV" and data["bounded"] is False
    assert data["old_loops"] is False and data["new_loops"] is False
    assert data["unroll"] == 0
    assert len(data["functions"]) == 64
    assert all(v == {"verdict": "EQUIV", "fwd": "correct", "bwd": "correct"} for v in data["functions"].values())
    assert {f"target_{prefix}_{n}" for prefix in ("tail", "aligned") for n in range(32)} == set(data["functions"])
    for side in ("old", "new"):
        assert hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest() == data[f"{side}_ll_sha256"]
    for direction in ("fwd", "bwd"):
        log = (directory / f"{direction}.log").read_text()
        assert log.count("Transformation seems to be correct!") == 64
        assert "Transformation doesn't verify" not in log and "ERROR:" not in log and "Timeout" not in log
    results[mode] = {"verdict": "EQUIV", "functions": 64, "bounded": False,
                     "old_ll_sha256": data["old_ll_sha256"], "new_ll_sha256": data["new_ll_sha256"]}
assert results["finalizer-raw"]["old_ll_sha256"] != results["finalizer-reroll"]["old_ll_sha256"]
assert results["finalizer-raw"]["new_ll_sha256"] == results["finalizer-reroll"]["new_ll_sha256"]
report = {"parent": parent, "child": child, "historical_header_git_oids": source,
          "wrapper_sha256": hashlib.sha256((here / "wrap_finalizer.c").read_bytes()).hexdigest(),
          "scope": "XXH64_finalize; x86-64; default memory access; both alignments; both old control-flow modes",
          "results": results, "commit_verdict": "EQUIV_PARTIAL"}
(here / "finalizer-proof-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("128 bidirectional unbounded Alive2 comparisons pass for the historical XXH64 finalizer")
