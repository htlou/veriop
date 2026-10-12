#!/usr/bin/env python3
"""Screen all remaining seeded OpenZeppelin keyword candidates."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "openzeppelin-contracts-topup-blob-audit.json").read_text())
fixed = json.loads((results / "openzeppelin-contracts-pinned-sample-audit.json").read_text())
assert audit["pin"] == fixed["pin"]

# Positions in the saved seeded order; screened from commit messages and changed paths.
confirmed = {
    1, 5, 6, 8, 17, 18, 19, 20, 22, 25, 26, 38, 41,
    51, 54, 69, 72, 83, 84, 85, 88, 91, 95, 120, 132, 133,
}
unresolved = {
    14: "Removes a superfluous receive function without stating a gas or size objective.",
    78: "Calls the LimitFunds change an improvement without identifying a resource objective.",
    94: "Recommends an ERC721Consecutive change without identifying a resource objective.",
    102: "Inlines a keccak256 constant without stating a gas or size objective.",
    104: "Avoids a nonce reset, but the message does not distinguish gas from correctness intent.",
}
reasons = {
    25: "Skips ECDSA signature verification when the signer address has code.",
    41: "Moves multiproof-hash allocation under a condition to avoid a zero-length allocation.",
    72: "Changes ERC721 burn and owner-array handling with an explicit gas objective.",
    83: "Uses unchecked arithmetic in the existing Merkle multiproof path.",
    91: "Adds branchless ternary/min/max methods to the existing math libraries.",
    95: "Adapts ReentrancyGuard storage writes to Istanbul gas metering.",
}
assert not (confirmed & unresolved.keys())
screened = []
for entry in audit["entries"]:
    draw = entry["draw"]
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in unresolved else "excluded_non_optimization")
    item = {"draw": draw, "commit": entry["commit"], "subject": entry["subject"],
            "screen": status,
            "reason": reasons.get(draw, entry["subject"] if draw in confirmed else
                      unresolved.get(draw, "No gas, runtime, or size optimization objective established for the changed behavior.")),
            "missing_changed_blobs": entry["missing_changed_blobs"]}
    if draw in confirmed:
        assert entry["missing_changed_blobs"], entry["commit"]
        item.update({"source_status": "missing_changed_blob", "checker_status": "not_run",
                     "verdict": "UNKNOWN",
                     "coverage": "metadata intent screen; exact historical old/new Solidity source unavailable"})
    screened.append(item)

original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
added = [e for e in screened if e["screen"] == "confirmed_optimization"]
sample = original + added
assert len(screened) == 137 and len(original) == 60 and len(added) == len(confirmed) == 26
assert len({e["commit"] for e in sample}) == len(sample) == 86

(results / "openzeppelin-contracts-topup-intent-screen.json").write_text(json.dumps({
    "repo": "openzeppelin-contracts", "pin": audit["pin"], "draws_reviewed": len(screened),
    "confirmed_optimizations": len(added), "intent_unresolved": len(unresolved),
    "entries": screened,
}, indent=2) + "\n")
(results / "openzeppelin-contracts-optimization-sample.json").write_text(json.dumps({
    "repo": "openzeppelin-contracts", "pin": audit["pin"],
    "selection": "all fixed 200 and all 137 remaining seeded keyword candidates after intent screening",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": len(added),
                  "sample": len(sample), "intent_unresolved": len(unresolved)}))
