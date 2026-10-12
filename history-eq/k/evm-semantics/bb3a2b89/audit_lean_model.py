#!/usr/bin/env python3
"""Pin the jump-destination recurrence model to the historical K rules."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/evm-semantics"
child = "bb3a2b89e836baed498d06db54be11f3d18dd2ee"
source_path = "kevm-pyk/src/kevm_pyk/kproj/evm-semantics/evm.md"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", child + "^"], env=env, text=True).strip()
source = {}
for side, rev in (("old", parent), ("new", child)):
    raw = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{source_path}"], env=env)
    oid = subprocess.check_output(["git", "hash-object", "--stdin"], input=raw).decode().strip()
    tree_oid = subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{rev}:{source_path}"], env=env, text=True).strip()
    assert oid == tree_oid
    source[side] = {"git_oid": oid, "text": raw.decode()}

old = source["old"]["text"]
new = source["new"]["text"]
for snippet in (
    "rule #computeValidJumpDests(PGM) => #computeValidJumpDests(PGM, 0, padRightBytes(.Bytes, lengthBytes(PGM), 0))",
    "#computeValidJumpDests(PGM, I, RESULT) => RESULT requires I >=Int lengthBytes(PGM)",
    "#computeValidJumpDests(PGM, I, RESULT) => #computeValidJumpDestsWithinBound(PGM, I, RESULT) requires I <Int lengthBytes(PGM)",
    "#computeValidJumpDestsWithinBound(PGM, I, RESULT) => #computeValidJumpDests(PGM, I +Int 1, RESULT[I <- 1]) requires PGM [ I ] ==Int 91",
    "#computeValidJumpDestsWithinBound(PGM, I, RESULT) => #computeValidJumpDests(PGM, I +Int #widthOpCode(PGM [ I ]), RESULT) requires notBool PGM [ I ] ==Int 91",
):
    assert snippet in old, snippet
assert "padRightBytes(.Bytes, lengthBytes(PGM), 0)" in old
for text in (old, new):
    assert "rule #widthOpCode(W) => W -Int 94 requires W >=Int 96 andBool W <=Int 127" in text
    assert "rule #widthOpCode(_) => 1 [owise]" in text
for snippet in (
    "rule #computeValidJumpDests(PGM)                 => #computeValidJumpDests(PGM, 0, padRightBytes(.Bytes, lengthBytes(PGM), 0), lengthBytes(PGM))",
    "#computeValidJumpDests(  _, I, RESULT, LEN) => RESULT",
    "#computeValidJumpDests(PGM, I, RESULT, LEN) => #computeValidJumpDests(PGM, I +Int 1,",
    "#computeValidJumpDests(PGM, I, RESULT, LEN) => #computeValidJumpDests(PGM, I +Int #widthOpCode(PGM [ I ]),",
    "requires I <Int LEN andBool PGM [ I ] ==Int 91",
    "requires I <Int LEN andBool notBool PGM [ I ] ==Int 91",
    "RESULT[I <- 1], LEN) requires I <Int LEN",
    "padRightBytes(.Bytes, lengthBytes(PGM), 0), lengthBytes(PGM))",
):
    assert snippet in new, snippet

model = here / "JumpDestRelation.lean"
assert not re.search(r"\b(sorry|admit|axiom|unsafe)\b", model.read_text())
run = subprocess.run(["lean", str(model)], capture_output=True, text=True)
(here / "lean-model.log").write_text(run.stdout + run.stderr + f"exit_code={run.returncode}\n")
assert run.returncode == 0 and not run.stdout and not run.stderr
result = {"parent": parent, "child": child, "historical_source_blobs": {s: x["git_oid"] for s, x in source.items()},
          "lean_sha256": hashlib.sha256(model.read_bytes()).hexdigest(),
          "theorems": ["width_positive", "same_scan", "completed_of_budget", "initial_scan_completes", "same_result"],
          "verdict": "EQUIV_PARTIAL", "scope": "all finite program byte lists in the source-mapped jump-destination recurrence; not a K-definition or whole-commit equivalence proof"}
(here / "lean-model-result.json").write_text(json.dumps(result, indent=2) + "\n")
print("Historical K rules source-locked; Lean recurrence and completion theorems passed")
