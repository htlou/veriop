#!/usr/bin/env python3
"""Source-audited Z3 proof for the historical nested fee guard."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

import z3

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/v4-core"
commit = "12a1d648fd2de6865b0ac56ce9fe7dcd5937db29"
path = "src/libraries/Pool.sol"


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


actual = git("rev-parse", "12a1d648f").decode().strip()
assert actual == commit, actual
parent = git("rev-parse", commit + "^").decode().strip()
old = git("show", f"{parent}:{path}")
new = git("show", f"{commit}:{path}")
old_fragment = b"""        if (swapFee == LPFeeLibrary.MAX_LP_FEE && !exactInput) {
            InvalidFeeForExactOut.selector.revertWith();
        }
"""
new_fragment = b"""        if (swapFee == LPFeeLibrary.MAX_LP_FEE) {
            if (!exactInput) {
                InvalidFeeForExactOut.selector.revertWith();
            }
        }
"""
assert old.count(old_fragment) == 1
assert old.replace(old_fragment, new_fragment) == new, "unexpected production-code change"
for label, raw in (("old", old), ("new", new)):
    (here / f"Pool.{label}.sol.txt").write_bytes(raw)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent, "path": path,
    "old_sha256": hashlib.sha256(old).hexdigest(),
    "new_sha256": hashlib.sha256(new).hexdigest(),
}, indent=2) + "\n")

at_max_fee = z3.Bool("swapFee_equals_MAX_LP_FEE")
exact_input = z3.Bool("exactInput")
old_reverts = z3.And(at_max_fee, z3.Not(exact_input))
new_reverts = z3.If(at_max_fee, z3.Not(exact_input), z3.BoolVal(False))
solver = z3.Solver()
solver.add(old_reverts != new_reverts)
result = solver.check()
assert result == z3.unsat, result
print(f"nested revert guard: UNSAT inequivalence query (Z3 {z3.get_version_string()})")
print("archived parent/child Pool.sol differ only by the audited guard rewrite")
