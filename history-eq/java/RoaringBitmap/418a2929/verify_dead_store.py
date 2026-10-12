#!/usr/bin/env python3
"""Recheck the exact-source dead-store argument and its KeY field lemma."""

import hashlib
import json
from pathlib import Path
import subprocess
import sys


here = Path(__file__).resolve().parent
root = here.parents[3]
subprocess.run([sys.executable, "-B", str(here / "check_source.py")], check=True)
audit = json.loads((here / "source-audit.json").read_text())
assert audit["commit"] == "418a2929e83809ed4deb97071f65fb23ef054735"
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java"
key = root / "benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar"
model = here / "FirstVRelation.java"
run = subprocess.run([str(java), "-Duser.home=/tmp/veriop-key-418a2929",
                      "-jar", str(key), "--auto", "--timeout=60000", model.name],
                     input="0\n", text=True, stdout=subprocess.PIPE,
                     stderr=subprocess.STDOUT, cwd=here, timeout=90)
(here / "key.log").write_text(run.stdout)
assert run.returncode == 0 and "Number of goals remaining open: 0" in run.stdout
assert "Proved" in run.stdout
proof = here / "FirstVRelation.java.auto.proof"
assert proof.is_file()
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
result = {
    "commit": audit["commit"],
    "verdict": "EQUIV",
    "open_goals": 0,
    "source_diff_sha256": audit["diff_sha256"],
    "old_sha256": audit["old_sha256"],
    "new_sha256": audit["new_sha256"],
    "model_sha256": sha(model),
    "key_log_sha256": sha(here / "key.log"),
    "key_proof_sha256": sha(proof),
    "scope": "normal single-threaded Node16.insert return state for the count<8 branch",
    "limits": "exceptional execution, concurrent or reflective observation, and full historical dependency build unverified",
}
(here / "dead-store-result.json").write_text(json.dumps(result, indent=2) + "\n")
print("exact source audit and KeY dead-store lemma passed")
