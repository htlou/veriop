#!/usr/bin/env python3
"""Compose the exact SIMD source edit with raw Alive2 and lane-use proofs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import z3

case = Path(__file__).resolve().parent
root = case.parents[3]
repo = root / "benchmarks/repos/xxHash"
alive = root / "alive2/build/alive2/alive-tv"
commit = "f534e5bf0232f51e2862442784dfac9991ebc632"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True,
                          text=True, check=True, env=env).stdout.strip()

assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == "xxhash.h"
blobs = {}
for side, rev in (("old", commit + "^:xxhash.h"), ("new", commit + ":xxhash.h")):
    blobs[side] = git("hash-object", str(case / side / "xxhash.h"))
    assert blobs[side] == git("rev-parse", rev)
old = (case / "old/xxhash.h").read_text()
new = (case / "new/xxhash.h").read_text()
for width in (256, 512):
    before = (f"_mm{width}_shuffle_epi32 (data_key, " +
              ("(_MM_PERM_ENUM)_MM_SHUFFLE(0, 3, 0, 1))" if width == 512
               else "_MM_SHUFFLE(0, 3, 0, 1))"))
    after = f"_mm{width}_srli_epi64 (data_key, 32)"
    assert old.count(before) == 2 and new.count(after) == 2
    old = old.replace(before, after)
    assert new.count(f"_mm{width}_mul_epu32     (data_key, data_key_lo)") == 1
    assert new.count(f"_mm{width}_mul_epu32     (data_key_hi, prime32)") == 1
assert old == new

# PSHUFD selects dwords [1,0,3,0] per 128-bit lane. VPSRLQ by 32
# selects [1,0,3,0] in the even dwords only; PMULUDQ consumes only those.
x = z3.BitVec("x", 128)
d = [z3.Extract(i + 31, i, x) for i in (0, 32, 64, 96)]
old_shuffle = z3.Concat(d[0], d[3], d[0], d[1])
new_shift = z3.Concat(z3.BitVecVal(0, 32), d[3], z3.BitVecVal(0, 32), d[1])
lane_checks = []
for lo in (0, 64):
    solver = z3.Solver()
    solver.add(z3.Extract(lo + 31, lo, old_shuffle) !=
               z3.Extract(lo + 31, lo, new_shift))
    assert solver.check() == z3.unsat
    lane_checks.append("unsat")
solver = z3.Solver()
solver.add(old_shuffle != new_shift)
assert solver.check() == z3.sat  # the unused high dwords really do differ

checks = {}
for isa in ("avx2", "avx512"):
    directory = case / f"r_{isa}"
    prior = json.loads((directory / "result.json").read_text())
    assert prior["verdict"] == "EQUIV" and len(prior["functions"]) == 2
    for side in ("old", "new"):
        assert hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest() == prior[f"{side}_ll_sha256"]
    for direction, source, target in (("forward", "old", "new"), ("reverse", "new", "old")):
        run = subprocess.run([str(alive), "--always-verify", "--quiet",
                              str(directory / f"{source}.ll"), str(directory / f"{target}.ll")],
                             capture_output=True, text=True, timeout=120, check=True)
        (case / f"{isa}-{direction}-recheck.log").write_text(run.stdout)
        assert "2 correct transformations" in run.stdout and "0 incorrect transformations" in run.stdout
        assert "0 failed-to-prove transformations" in run.stdout and "0 Alive2 errors" in run.stdout
        checks[f"{isa}/{direction}"] = "two correct transformations"

result = {
    "commit": commit, "blobs": blobs,
    "source_edit": "exactly four shuffle-to-shift replacements in xxhash.h",
    "lane_low32_counterexample_queries": lane_checks,
    "full_intermediate_vector_difference": "sat; unused high dwords differ",
    "alive2": checks, "verdict": "EQUIV",
    "scope": "functional hash outputs and streaming state for defined C executions with standard AVX2/AVX512 intrinsic semantics; changed raw steps prove bidirectionally, public callers and other ISA paths byte-identical; machine code and timing excluded",
}
(case / "defined-outputs-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"], len(checks), "bidirectional SIMD checks")
