"""Check the archived HOL Light runs and their common Keccak output claim."""

import hashlib
import json
from pathlib import Path
import re

here = Path(__file__).resolve().parent
proofs = {}
for label, stem in (("baseline", "SHA3_KECCAK4_F1600"),
                    ("alt", "SHA3_KECCAK4_F1600_ALT")):
    assert (here / f"sha3-{label}-build.exit").read_text().strip() == "0"
    path = here / f"sha3-keccak4-{label}.correct.log"
    data = path.read_bytes()
    log = data.decode()
    assert "Error:" not in log and "Exception:" not in log
    assert "Running time:" in log
    for suffix in ("NOIBT_SUBROUTINE_CORRECT", "NOIBT_WINDOWS_SUBROUTINE_CORRECT",
                   "SUBROUTINE_CORRECT", "WINDOWS_SUBROUTINE_CORRECT"):
        start = log.index(f"val {stem}_{suffix} : thm = |-")
        end = log.find("\nval ", start + 1)
        theorem = " ".join(log[start:end if end >= 0 else None].split())
        assert "read RIP s = returnaddress" in theorem
        assert "read RSP s = word_add stackpointer (word 8)" in theorem
        for i, offset in enumerate((0, 200, 400, 600), 1):
            address = "bitstate_in" if offset == 0 else f"word_add bitstate_in (word {offset})"
            assert f"wordlist_from_memory ({address},25) s = keccak 24 A{i}" in theorem
        assert ("rho8_constant" in theorem and "rho56_constant" in theorem) == (label == "alt")
    elapsed = int(re.search(r"Running time: (\d+)\.000000 sec", log).group(1))
    proofs[label] = {"log": path.name, "sha256": hashlib.sha256(data).hexdigest(),
                     "hol_seconds": elapsed, "theorems": 4}

result = {
    "verdict": "EQUIV_PARTIAL",
    "relation": "Both x86 subroutine implementations produce keccak 24 A1..A4 in the four 25-word state regions and return normally, under the intersection of their theorem preconditions; ALT additionally requires two correctly initialized read-only rho tables and a four-argument ABI.",
    "proofs": proofs,
    "source_audit": "source-audit.json",
}
(here / "proof-result.json").write_text(json.dumps(result, indent=2) + "\n")
print("both archived HOL Light proofs establish the common four-state Keccak result")
