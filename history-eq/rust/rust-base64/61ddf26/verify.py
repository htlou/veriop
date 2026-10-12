#!/usr/bin/env python3
"""Recheck exact Rust source and the Lean index/iterator relation."""

import hashlib
import json
from pathlib import Path
import subprocess
import sys


here = Path(__file__).resolve().parent
root = here.parents[3]
subprocess.run([sys.executable, "-B", str(here / "check_source.py")], check=True)
source = json.loads((here / "source-audit.json").read_text())
lean_project = root / "history-eq/rust/rust-base64/lean"
proof = here / "IteratorRelation.lean"
assert "sorry" not in proof.read_text() and "admit" not in proof.read_text()
run = subprocess.run(["lake", "env", "lean", str(proof)], cwd=lean_project,
                     text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=90)
(here / "lean.log").write_text(run.stdout)
assert run.returncode == 0 and "sorryAx" not in run.stdout
assert "whitespace_filter_equal' depends on axioms" in run.stdout
assert "decode_loop_equal' depends on axioms" in run.stdout
result = {**source, "checker": "Lean source-level list relation; Aeneas full-function translation remains unsupported",
          "lean_log_sha256": hashlib.sha256((here / "lean.log").read_bytes()).hexdigest(),
          "theorems": ["whitespace_filter_equal", "decode_loop_equal"],
          "verdict": "source-mapped iterator equality; no full historical Aeneas verdict"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"])
