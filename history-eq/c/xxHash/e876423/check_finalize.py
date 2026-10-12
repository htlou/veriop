"""Audit the historical XXH64 finalizer's residue proofs."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/xxHash"
parent = "61509f29b4c86ce763d8493fd64a967607292d9b"
child = "e876423360824d9028136b9059a529b5f837efff"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env).decode().strip()


assert git("rev-parse", child + "^") == parent
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", child) == "xxhash.h"
oids = {}
for side, commit in (("old", parent), ("new", child)):
    path = here / side / "xxhash.h"
    oid = subprocess.check_output(("git", "hash-object", str(path))).decode().strip()
    assert oid == git("rev-parse", f"{commit}:xxhash.h")
    oids[side] = oid
old = (here / "old/xxhash.h").read_text()
new = (here / "new/xxhash.h").read_text()
before = "static XXH_PUREF xxh_u64\nXXH64_finalize"
after = "XXH_FORCE_INLINE XXH_PUREF xxh_u64\nXXH64_finalize"
assert old.count(before) == 1 and old.replace(before, after) == new
definitions = re.findall(r"^#\s*define\s+XXH_FORCE_INLINE\s+(.+)$", old, re.MULTILINE)
assert len(definitions) == 6 and all(value.startswith("static") for value in definitions)
assert old.count("XXH64_finalize(") == 4  # one documentation link, the definition, two direct calls
assert "return XXH64_finalize(h64, input, len, align);" in old
assert "return XXH64_finalize(h64, (const xxh_u8*)state->mem64, (size_t)state->total_len, XXH_aligned);" in old

wrapper = here / "wrap_finalize_residues.c"
assert wrapper.read_text().count("CHECK_TAIL(") == 33
directory = here / "finalize-residues"
result = json.loads((directory / "result.json").read_text())
assert result["verdict"] == "EQUIV" and result["bounded"] is False
assert result["old_loops"] is False and result["new_loops"] is False and result["unroll"] == 0
expected = {f"target_{alignment}_{n}" for alignment in ("aligned", "unaligned") for n in range(32)}
assert set(result["functions"]) == expected
assert all(v == {"verdict": "EQUIV", "fwd": "correct", "bwd": "correct"}
           for v in result["functions"].values())
for side in ("old", "new"):
    assert hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest() == result[f"{side}_ll_sha256"]
for direction in ("fwd", "bwd"):
    log = (directory / f"{direction}.log").read_text()
    assert log.count("Transformation seems to be correct!") == 64
    assert "Transformation doesn't verify" not in log and "ERROR:" not in log and "Timeout" not in log
report = {"parent": parent, "child": child, "historical_header_git_oids": oids,
          "wrapper_sha256": hashlib.sha256(wrapper.read_bytes()).hexdigest(),
          "scope": "functional XXH64 outputs for defined C executions: exact one-line inline-only commit, unchanged finalizer body and two direct callers; Alive2 covers all len&31 residues and both alignments on x86-64 Clang 20",
          "cases": 64, "bidirectional": True, "bounded": False,
          "old_ll_sha256": result["old_ll_sha256"], "new_ll_sha256": result["new_ll_sha256"],
          "commit_verdict": "EQUIV"}
(here / "finalize-proof-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("64 XXH64 finalizer residue cases proved bidirectionally; exact inline-only change audited")
