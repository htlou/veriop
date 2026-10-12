#!/usr/bin/env python3
"""Screen seeded OpenSSL top-up commits through the 200th optimization."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "openssl-topup-blob-audit.json").read_text())
fixed = json.loads((results / "openssl-pinned-sample-audit.json").read_text())
assert audit["pin"] == fixed["pin"]

# Indices are positions in the saved seeded order, not chronological positions.
confirmed = {
    3, 4, 7, 9, 12, 13, 14, 17, 19, 22, 25, 33, 34, 35, 44,
    47, 48, 52, 55, 74, 79, 84, 88, 92, 93, 96, 99, 100, 105,
    113, 121, 131, 134, 139, 141, 145, 147, 152, 162, 166,
    170, 175, 189, 194,
    200, 202, 206, 207, 211, 213, 215, 216, 224, 226, 230, 234,
    245, 246, 248, 249, 252, 256, 261, 262, 263, 264, 273, 280,
    282, 285, 286, 287, 290, 291, 293, 298, 305, 316, 318, 320,
    322, 329, 330, 331, 332, 333, 334, 336, 342, 344, 345, 349,
    350, 352, 355, 356, 358, 362, 365, 372, 375, 391, 392, 398,
    399,
    404, 409, 412, 413, 431, 432, 447, 448, 453, 454, 458, 459,
    464, 466, 469, 475, 476, 480, 482, 484, 485, 486, 490, 498,
    502, 506, 510, 514, 515, 519, 522, 526, 529, 534, 535, 537,
    543, 546, 547, 552, 555, 556, 565, 567, 570, 571, 576, 578,
}
unresolved = {
    21: "Local IV storage may avoid provider accesses; no resource objective is stated.",
    37: "Removes unused vector code without a stated size or speed objective.",
    64: "Removes an unrolled loop variant without a stated resource objective.",
    90: "Removes named-curve redundancy without a stated resource objective.",
    106: "Makes pshufw optional and updates a benchmark table; runtime intent is unclear.",
    196: "Says only 'improve wNAF generation', without identifying a resource gain.",
    199: "Internalizes Keccak and simplifies SHA3 code without a stated resource objective.",
    220: "Moves IV storage locally but states no resource objective.",
    231: "Avoids property-query manipulation without an explicit resource objective.",
    303: "Removes an unnecessary control check without a stated resource objective.",
    312: "Adds a convenient one-shot API without a stated runtime or size gain.",
    364: "Says parameter handling is improved without identifying a resource gain.",
    390: "Says make depend is improved without identifying a build-time gain.",
    396: "Moves IV storage locally but states no resource objective.",
    397: "Says parameter handling is improved without identifying a resource gain.",
    417: "Says parameter handling is improved without identifying a resource gain.",
    441: "Removes unused headers without a stated compilation-resource objective.",
    443: "Avoids a curve method without a stated resource objective.",
    488: "Avoids a provider helper without a stated resource objective.",
    499: "Changes automatic context copying without a stated resource objective.",
    505: "Says parameter handling is improved without identifying a resource gain.",
    511: "Avoids a provider helper without a stated resource objective.",
    520: "Enum change accompanies EC optimizations but states no resource objective for this change.",
}
unsupported = {
    4, 9, 12, 13, 14, 17, 19, 22, 25, 33, 34, 35, 47,
    48, 52, 55, 79, 84, 96, 99, 121, 131, 139, 145,
    147, 152, 162, 166, 175, 194,
    206, 207, 211, 213, 215, 224, 230, 234, 249, 261, 262, 273,
    280, 285, 287, 290, 291, 293, 305, 316, 318, 320, 322, 329,
    330, 332, 333, 344, 349, 350, 355, 362, 365, 392, 399,
    404, 409, 412, 431, 432, 447, 448, 453, 454, 458, 469, 475,
    476, 480, 482, 486, 502, 506, 510, 515, 519, 522, 526, 529,
    534, 537, 543, 546, 547, 565, 567, 576,
}
reasons = {
    19: "Reduces header dependencies and compilation work.",
    25: "Reorganizes ASN.1/PEM objects to reduce linked binary size.",
    44: "Caches digest constants to avoid repeated provider queries.",
    47: "Reduces BN_DEBUG_RAND pseudorandom-byte consumption and test/debug runtime.",
    74: "Removes oversized bignum allocations and redundant zeroing.",
    88: "Caches negative provider-operation queries to avoid repeated search.",
    105: "Avoids a namemap string allocation.",
    113: "Avoids repeated expensive decoder enumeration.",
    141: "Removes a resource-heavy ML-DSA parameter builder.",
    170: "Uses a sparse CTX table to reduce allocation and cleanup cost.",
    189: "Includes an explicit CCM128 optimization alongside a bug fix.",
    216: "Omits the pairwise test during SLH-DSA key-generation CAST, reducing work.",
    293: "Removes redundant carry instructions from x86 RSA squaring assembly.",
    330: "Enables the existing stitched RC4/MD5 path on supported configurations.",
    350: "Changes bignum constant construction explicitly to save binary space.",
    358: "Removes an AES-CBC decryption memcpy alongside a correctness fix.",
    365: "Reduces crypto.h dependencies, a compile-time resource change.",
    372: "Removes redundant constant-time selects; commit reports upstream throughput measurements.",
    409: "Reduces secure-memory footprint for stored ML-KEM public keys.",
    431: "Reduces header interdependencies and compile work.",
    447: "Reorganizes PEM objects to reduce linked binary size.",
    464: "Removes a redundant P-521 field-element assignment.",
    466: "Avoids allocating DSA/ECDSA signature components before they are needed.",
    529: "Avoids a store lock on the no-add path; concurrent behavior is outside the selected Alive2 pair.",
    543: "Adds a new MMX Keccak implementation; no prior same-path kernel pair.",
    567: "Adds a new hashtable API described as more efficient than LHASH.",
    571: "Avoids two allocations per RAND_DRBG_bytes call.",
    578: "Uses BN_CTX to avoid repeated initialization and cleanup in bignum functions.",
}
assert unsupported <= confirmed and not (confirmed & unresolved.keys())

screened = []
for entry in audit["entries"][:579]:
    draw = entry["draw"]
    assert 0 <= draw < 579
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in unresolved else "excluded_non_optimization")
    item = {"draw": draw, "commit": entry["commit"], "subject": entry["subject"],
            "screen": status,
            "reason": reasons.get(draw, entry["subject"] if draw in confirmed else
                      unresolved.get(draw, "No resource-optimization objective established for the changed behavior.")),
            "missing_changed_blobs": entry["missing_changed_blobs"]}
    if draw in confirmed:
        assert entry["missing_changed_blobs"], entry["commit"]
        item.update({"source_status": "missing_changed_blob", "checker_status": "not_run",
                     "verdict": "UNSUPPORTED" if draw in unsupported else "UNKNOWN",
                     "coverage": "metadata intent/scope screen; exact historical old/new source unavailable"})
        if draw == 535:
            assert entry["commit"] == "d6e4056805f54bb1a0ef41fa3a6a35b70c94edba"
            case = root / "history-eq/c/openssl/d6e40568"
            assert "old c453da62688c6cf7efab531df38436d8194c7c7b" in (case / "source-recovery.log").read_text()
            assert "new 40c18410e4cf073f7f65530a8967eb5600e655ce" in (case / "source-recovery.log").read_text()
            assert "1 incorrect transformations" in (case / "step-unequal.log").read_text()
            assert "width=-2 old=01:02:" in (case / "native-witness.log").read_text()
            item.update({
                "source_status": "exact_historical_blobs_recovered",
                "checker_status": "checked", "checker_target": "Alive2 + native ASan/UBSan public witness",
                "verdict": "NOT_EQUIV", "not_equiv_kind": "other",
                "coverage": "public BIO_hex_string; exact old/new body; defined negative-width output difference; positive-width step equivalence",
                "evidence": "history-eq/c/openssl/d6e40568/README.md",
            })
    screened.append(item)

original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
added = [e for e in screened if e["screen"] == "confirmed_optimization"]
sample = original + added
assert len(screened) == 579 and len(original) == 47 and len(added) == len(confirmed) == 153
assert len({e["commit"] for e in sample}) == len(sample) == 200

(results / "openssl-topup-first579-screen.json").write_text(json.dumps({
    "repo": "openssl", "pin": audit["pin"], "draws_reviewed": 579,
    "confirmed_optimizations": len(added), "intent_unresolved": len(unresolved),
    "entries": screened,
}, indent=2) + "\n")
(results / "openssl-optimization-sample.json").write_text(json.dumps({
    "repo": "openssl", "pin": audit["pin"],
    "selection": "all fixed 200 and first 579 of 2141 remaining seeded keyword candidates after intent screening; stop at the 200th confirmed optimization",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": len(added),
                  "sample": len(sample), "unsupported_scope": len(unsupported),
                  "intent_unresolved": len(unresolved)}))
