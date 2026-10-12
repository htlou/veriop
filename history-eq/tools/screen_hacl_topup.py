#!/usr/bin/env python3
"""Screen all seeded HACL* keyword top-up messages and changed paths."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
source = json.loads((results / "hacl-star-topup-blob-audit.json").read_text())
fixed = json.loads((results / "hacl-star-pinned-sample-audit.json").read_text())
assert source["pin"] == fixed["pin"]

# Draw indices follow topup-candidate-order.json's seeded order.
confirmed = {
    2: "Suppresses extraction of ghost functions to avoid generated C prototypes.",
    5: "Adds extraction inlining in the streaming functor.",
    17: "Rewrites stateful HMAC for a stated speed objective.",
    24: "Removes expensive, unnecessary extraction-wide inlining.",
    25: "Avoids copying call-graph leaves in the extraction tactic.",
    27: "Adds extraction inlining to SHA-2 specifications.",
    31: "Changes Poly1305 and Curve25519 proofs for stated proof performance.",
    34: "Inlines a hash-algorithm selector during extraction.",
    40: "Tunes AES for performance.",
    44: "Selects optimized Blake2b/Blake2s implementations in EverCrypt.Hash.",
    50: "Unrolls bignum addition, subtraction, and multiplication loops.",
    51: "Reduces solver limits in a Buffer proof.",
    55: "Inlines buffer copy at extraction.",
    58: "Excludes slow verification files from a Makefile target.",
    59: "Adds lemmas to avoid repeated proof inversions.",
    60: "Improves generated Blake2s code.",
    69: "Tunes 32-bit Poly1305 speed.",
    71: "Changes Salsa implementation for speed.",
    75: "Targets a Curve25519 speed record in experimental code.",
    77: "Simplifies Salsa and Chacha code for speed.",
    79: "Avoids an extra bignum copy in fsum and fdifference.",
    83: "Tunes Blake2 vector helper performance.",
    86: "Calls lemmas explicitly to smooth proof runtime and hint replay.",
    92: "Avoids field inversion in ECDSA verification.",
    95: "Inlines SHA-3 state allocation at extraction.",
    98: "Improves stateful SHA-2 extraction.",
    99: "Adds C inlining annotations to hash load/store functions.",
    100: "Makes the Blake2 update-last proof faster and more stable.",
    107: "Inlines the SHA-3 piln list at extraction.",
    113: "Disables slow verification targets.",
    114: "Inlines streaming-functor instantiations at extraction.",
    117: "Reduces generated declarations in the Chacha tactic.",
    120: "Improves stateful SHA-512 performance.",
    136: "Speeds Curve25519 code generation with KreMLin.",
    137: "Avoids generated variable-length arrays for fixed-size bignums.",
    139: "Improves Blake2 performance.",
    142: "Changes Salsa implementation for speed.",
    153: "Inlines Blake2 constants at extraction.",
    156: "Speeds experimental Curve25519 field51 code.",
    161: "Retunes F* options for proof speed.",
    171: "Shares generated Blake2 code between one-shot and streaming paths.",
    173: "Disables slow verification targets.",
    176: "Suppresses and inlines Blake2 allocation helpers at extraction.",
    181: "Lowers ifuel needed in Poly1305 equivalence lemmas.",
    182: "Factors a KreMLin invocation in the SHA-2 Makefile.",
    186: "Suppresses extraction and adds inlining in streaming Blake2.",
    193: "Adds extraction inlining to Blake2.",
    209: "Suppresses and inlines precomputed-table definitions at extraction.",
    212: "Improves bignum multiplication proof performance.",
    213: "Lowers Buffer proof fuel to the required value.",
    217: "Removes hash and HMAC targets from CI to shorten its run.",
}
pending = {
    4: "K256 branch simplification has no stated performance objective.",
    21: "A Blake2 Makefile unrolling change lacks a documented speed objective.",
    41: "SHA-2 initialization improvement has no stated speed objective.",
    42: "Chacha changes are described only as improvements.",
    85: "Inlining SHA-2 constants for CompCert may affect codegen, but no gain is stated.",
    109: "C-code improvements are unspecified.",
    118: "Replacing F* equality notation repairs normalization; speed impact is unstated.",
    127: "AES-GCM change is described only as minor improvement.",
    128: "Inlining HMAC constants for CompCert has no stated performance objective.",
    149: "A WIP vectorized Poly1305 path may be faster, but completion is unclear.",
    150: "Equality-notation simplification has no stated proof-speed objective.",
    166: "Removing bignum inlining has no stated code-size or speed objective.",
    169: "RSAPSS branch simplification has no stated speed objective.",
    191: "SMT opacity changes could alter proof cost, but no speed objective is stated.",
    194: "Erasing a stateful argument may change extraction, but no resource objective is stated.",
    199: "Integer-extraction changes are mixed with semantic and proof changes.",
    203: "HMAC changes are described only as minor improvements.",
    206: "Experimental Blake2b improvement has no stated performance objective.",
    219: "Removing C inlining has no stated code-size or speed objective.",
    224: "SHA-2 improvements are unspecified.",
}
unsupported = {58, 113, 173, 217}
assert not (confirmed.keys() & pending.keys())
assert unsupported <= confirmed.keys()
entries = []
for item in source["entries"]:
    draw = item["draw"]
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in pending else "excluded_non_optimization")
    if draw in confirmed:
        assert item["missing_changed_blobs"], item["commit"]
    entries.append({"draw": draw, "commit": item["commit"], "subject": item["subject"],
                    "screen": status, "reason": confirmed.get(draw, pending.get(draw,
                        "No performance objective established for an existing production or proof-workload path.")),
                    "missing_changed_blobs": item["missing_changed_blobs"],
                    **({"checker_status": "not_run",
                        "verdict": "UNSUPPORTED" if draw in unsupported else "UNKNOWN",
                        "coverage": "build-target selection outside program equivalence" if draw in unsupported
                                    else "metadata intent screen; exact historical F* source missing"}
                       if draw in confirmed else {})})

added = [e for e in entries if e["screen"] == "confirmed_optimization"]
original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
assert len(entries) == 229 and len(added) == 51 and len(original) == 77
assert len({e["commit"] for e in original + added}) == 128
(results / "hacl-star-topup-intent-screen.json").write_text(json.dumps({
    "repo": "hacl-star", "pin": source["pin"], "draws_reviewed": len(entries),
    "confirmed_optimizations": len(added), "intent_unresolved": len(pending),
    "entries": entries,
}, indent=2) + "\n")
nonkeyword = json.loads((results / "hacl-star-nonkeyword-first6833-blob-audit.json").read_text())
assert nonkeyword["pin"] == source["pin"]
nonkeyword_reasons = {
    1107: "Precomputes the fixed-window exponentiation table, avoiding repeated table construction in the changed implementation.",
    1128: "Precomputes the SHA-2 message schedule in the changed hash implementation.",
    4095: "Removes an extra elliptic-curve scalar multiplication in P256 public-key validation.",
    5404: "Removes an allocation in the changed Blake2s implementation.",
    5876: "Removes a copy in the changed SHA3 implementation.",
    6689: "Removes a redundant modular addition in a shared integer-arithmetic implementation.",
}
extras = []
for draw, reason in nonkeyword_reasons.items():
    item = nonkeyword["entries"][draw]
    assert item["draw"] == draw and item["missing_changed_blobs"]
    date = subprocess.check_output(["git", "-C", str(root / "benchmarks/repos/hacl-star"),
                                    "show", "-s", "--format=%cI", item["commit"]], text=True).strip()
    extras.append({"draw": draw, "draw_population": "seeded nonkeyword source commits",
                   "commit": item["commit"], "date": date, "subject": item["subject"],
                   "source_status": "missing_changed_blob", "screen": "confirmed_optimization",
                   "reason": reason, "missing_changed_blobs": item["missing_changed_blobs"],
                   "checker_status": "not_run", "verdict": "UNKNOWN",
                   "coverage": "metadata intent screen; exact historical F* source missing",
                   "evidence": "history-eq/results/hacl-star-nonkeyword-optimization-screen.md"})
sample = original + added + extras
assert len(sample) == len({e["commit"] for e in sample}) == 134
(results / "hacl-star-optimization-sample.json").write_text(json.dumps({
    "repo": "hacl-star", "pin": source["pin"],
    "selection": "all 200 fixed and 229 remaining seeded keyword candidates after intent screening, plus six explicit runtime optimization intents from a seeded full nonkeyword metadata audit",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(entries), "added": len(added) + len(extras), "sample": len(sample),
                  "unsupported_scope": len(unsupported), "intent_unresolved": len(pending)}))
