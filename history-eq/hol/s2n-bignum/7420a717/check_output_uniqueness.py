#!/usr/bin/env python3
"""Audit the parametric Montgomery-output theorem and paired historical proofs."""

import hashlib
import json
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
source = here / "emontredc-output-uniqueness.ml"
log = here / "emontredc-output-uniqueness.log"
subprocess.run(["python3", "-B", str(here / "check_proofs.py"),
                "bignum_emontredc_8n"], check=True, capture_output=True)
paired = json.loads((here / "proof-result-emontredc.json").read_text())
assert all("BIGNUM_EMONTREDC_8N_SUBROUTINE_CORRECT" in side["theorems"]
           for side in paired["sides"].values())
for side in ("old", "new"):
    historical = (here / f"{side}-emontredc-theorems.txt").read_text()
    assert "8 divides val k" in historical
    assert "n * bignum_from_memory (z,val k) s + a =" in historical
    assert "2 EXP (64 * val k) * val (C_RETURN s) +" in historical
    assert "bignum_from_memory\n                        (word_add z (word (8 * val k)),val k)" in historical
raw = log.read_bytes()
clean = re.sub(r"\x1b\[[0-9;]*[mK]", "", raw.decode(errors="replace"))
assert "Exception:" not in clean and "Error:" not in clean
marker = "val EMONT_RELATION_UNIQUE : thm =\n"
assert clean.count(marker) == 1
theorem = clean.split(marker, 1)[1].split("\nval it", 1)[0].rstrip() + "\n"
assert "(n * w + 1 == 0) (mod (2 EXP 64))" in theorem
assert "l1 = l2 /\\ h1 = h2 /\\ c1 = c2" in theorem
assert theorem.count("< 2 EXP (64 * k)") == 4
(here / "emontredc-output-uniqueness-theorem.txt").write_text(theorem)
result = {"theorem": "EMONT_RELATION_UNIQUE",
          "scope": "unique low-memory, high-memory, and return values under common Montgomery antecedent and limb bounds",
          "proof_source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
          "proof_log_sha256": hashlib.sha256(raw).hexdigest(),
          "paired_proof_sha256": hashlib.sha256(
              (here / "proof-result-emontredc.json").read_bytes()).hexdigest()}
(here / "emontredc-output-uniqueness-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["scope"])
