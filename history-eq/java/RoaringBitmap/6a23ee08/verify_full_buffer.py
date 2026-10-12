#!/usr/bin/env python3
"""Recheck the exact one-call source substitution and full buffer relation."""

import hashlib
import json
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java"
key = root / "benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar"
home = Path("/tmp/veriop-key-6a23-full")
home.mkdir(exist_ok=True)

source_check = subprocess.run(["python3", "-B", str(here / "check_source.py")],
                              capture_output=True, text=True)
assert source_check.returncode == 0, source_check.stdout + source_check.stderr
source = json.loads((here / "source-audit.json").read_text())
assert source["source_relation"] == "only the zero-index call and the decrementValue helper change"

command = [str(java), "-Duser.home=" + str(home), "-jar", str(key),
           "--auto", "--timeout=60000", "FullBufferRelation.java"]
run = subprocess.run(command, input="0\n", capture_output=True, text=True,
                     cwd=here, timeout=120)
log = run.stdout + run.stderr
(here / "full-buffer-key.log").write_text(log)
assert run.returncode == 0 and "Number of goals remaining open: 0" in log and "Proved" in log
proof_file = here / "FullBufferRelation.java.auto.proof"
assert proof_file.exists()

result = {
    "commit": source["commit"],
    "old_blob": source["old_blob"],
    "new_blob": source["new_blob"],
    "source_diff_sha256": source["diff_sha256"],
    "model_sha256": hashlib.sha256((here / "FullBufferRelation.java").read_bytes()).hexdigest(),
    "key_log_sha256": hashlib.sha256(log.encode()).hexdigest(),
    "key_proof_sha256": hashlib.sha256(proof_file.read_bytes()).hexdigest(),
    "open_goals": 0,
    "verdict": "EQUIV",
    "scope": "single-threaded normal functional state of MappeableRunContainer with valid absolute CharBuffer access; no reflection or stack-trace observation",
    "basis": "only private helper call passes 0; substituting 0 makes old/new absolute get/put identical; KeY proves all buffer cells equal after the update",
    "limits": "exceptional resource behavior, reflection, concurrent observation, timing, and full historical dependency build are not checked",
}
(here / "full-buffer-result.json").write_text(json.dumps(result, indent=2) + "\n")
print("exact one-call source substitution; KeY full-buffer relation proved with 0 open goals")
