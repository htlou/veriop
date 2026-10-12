"""Audit the historical Keccak X4 assembly/proof inputs used by HOL Light."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
child = "91d4a8033cb8bad5504ffe3e58bb1dd7f67f3dcd"
parent = "529167015b0fbb144dd69fe191c04db510076c0b"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env).decode().strip()


assert git("rev-parse", child + "^") == parent
paths = (
    "x86/sha3/sha3_keccak4_f1600.S",
    "x86/sha3/sha3_keccak4_f1600_alt.S",
    "x86/proofs/sha3_keccak4_f1600.ml",
    "x86/proofs/sha3_keccak4_f1600_alt.ml",
    "x86/proofs/utils/keccak_spec.ml",
)
report = {"parent": parent, "child": child, "inputs": {}}
for path in paths:
    child_oid = git("rev-parse", f"{child}:{path}")
    current_oid = subprocess.check_output(("git", "hash-object", str(repo / path))).decode().strip()
    assert child_oid == current_oid, path
    report["inputs"][path] = child_oid
assert git("rev-parse", f"{parent}:{paths[0]}") == report["inputs"][paths[0]]
assert subprocess.run(("git", "-C", str(repo), "cat-file", "-e", f"{parent}:{paths[1]}"),
                      env=env, capture_output=True).returncode != 0
old_proof = (repo / paths[2]).read_text()
new_proof = (repo / paths[3]).read_text()
for proof in (old_proof, new_proof):
    for state in ("A1", "A2", "A3", "A4"):
        assert f"= keccak 24 {state}" in proof
assert "wordlist_from_memory(rho8_ptr,4) s = rho8_constant" in new_proof
assert "wordlist_from_memory(rho56_ptr,4) s = rho56_constant" in new_proof
selected = (here.parent / "source-screening/91d4a803.paths.txt").read_text().splitlines()
diff = subprocess.check_output(("git", "-C", str(repo), "diff", parent, child, "--", *selected), env=env)
assert diff == (here.parent / "source-screening/91d4a803.source.diff").read_bytes()
report["diff_sha256"] = hashlib.sha256(diff).hexdigest()
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("historical baseline/ALT assembly and both HOL proof scripts match current files")
