"""Audit the historical XXH32 digest proof on initialized states."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/xxHash"
child = "3bb5bb64baff1035d562b601eec3e50f8313e1e1"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env).decode().strip()


parent = git("rev-parse", child + "^")
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", child) == "xxhash.c"
oids = {}
for side, commit in (("old", parent), ("new", child)):
    for path in ("xxhash.c", "xxhash.h"):
        local = here / side / path
        oid = subprocess.check_output(("git", "hash-object", str(local))).decode().strip()
        assert oid == git("rev-parse", f"{commit}:{path}"), (side, path)
        oids[f"{side}/{path}"] = oid

wrapper = here / "wrap_digest_initialized.c"
assert wrapper.read_text().count("CHECK_STATE(") == 17
directory = here / "digest-initialized-all"
result = json.loads((directory / "result.json").read_text())
assert result["verdict"] == "EQUIV" and result["bounded"] is False
assert result["old_loops"] is False and result["new_loops"] is False and result["unroll"] == 0
expected = {f"target_{endian}_{length}" for endian in ("le", "be") for length in range(16)}
assert set(result["functions"]) == expected
assert all(v == {"verdict": "EQUIV", "fwd": "correct", "bwd": "correct"}
           for v in result["functions"].values())
for side in ("old", "new"):
    assert hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest() == result[f"{side}_ll_sha256"]
for direction in ("fwd", "bwd"):
    log = (directory / f"{direction}.log").read_text()
    assert log.count("Transformation seems to be correct!") == 32
    assert "Transformation doesn't verify" not in log and "ERROR:" not in log and "Timeout" not in log
report = {"parent": parent, "child": child, "historical_git_oids": oids,
          "wrapper_sha256": hashlib.sha256(wrapper.read_bytes()).hexdigest(),
          "scope": "XXH32_digest_endian on initialized state fields, memsize 0..15, both endian modes, x86-64",
          "cases": 32, "bidirectional": True, "bounded": False,
          "old_ll_sha256": result["old_ll_sha256"], "new_ll_sha256": result["new_ll_sha256"],
          "commit_verdict": "EQUIV_PARTIAL"}
(here / "digest-proof-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("32 initialized-state XXH32 digest cases proved bidirectionally")
