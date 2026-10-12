#!/usr/bin/env python3
"""Screen seeded AWS-LC top-up candidates until 200 optimizations are identified."""

from collections import Counter
import json
from pathlib import Path


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
audit = json.loads((results / "aws-lc-topup-blob-audit.json").read_text())
fixed = json.loads((results / "aws-lc-pinned-sample-audit.json").read_text())
assert audit["pin"] == fixed["pin"]

# Draw indices refer to the pinned seeded order, not commit chronology.
confirmed = {
    2, 7, 9, 21, 24, 27, 31, 32, 39, 42, 46, 50, 66, 69, 70, 77,
    80, 81, 85, 87, 89, 90, 92, 99, 110, 120, 121, 123, 127, 129,
    130, 134, 136, 138, 143, 145, 146, 149, 154, 157, 159, 166,
    174, 179, 180, 184, 193, 194, 195, 197,
    200, 206, 209, 225, 229, 232, 234, 239, 240, 250, 264, 265,
    270, 282, 283, 284, 287, 294, 297, 298, 303, 306, 308, 311,
    312, 313, 317, 318, 319, 322, 332, 339, 345, 348, 349, 352,
    375, 376, 377, 378, 387, 398,
    400, 401, 404, 406, 411, 415, 416, 422, 423, 424, 430, 438,
    447, 453, 457, 459, 464, 472, 473, 495, 505, 507, 508, 511,
    518, 520, 527, 529, 531, 539, 542, 546, 551, 568, 587, 588,
    601, 603, 610, 612, 623, 629, 631, 637, 640, 643, 648, 655,
    669, 671, 672, 673,
}
unresolved = {
    41: "Inlining refactor may affect speed, but the commit states no resource objective.",
    79: "Inlines a call and removes unreachable paths without stating a speed or size objective.",
    176: "Lets the compiler optimize equality checks, but states no demonstrated resource gain.",
    202: "Inlines a single-use function but states no speed or size objective.",
    219: "Uses shorter DH private keys for recognized safe groups, but states no resource objective.",
    307: "Replaces an unrolled loop with memcpy without stating a speed or size objective.",
    413: "Removes a slow alignment branch, but the message states code simplification as its objective.",
    452: "Changes affine conversion and mentions testing speed, without stating an intended resource gain.",
    469: "Removes secret-dependent divisions for constant-time behavior; speed intent is unstated.",
    486: "Removes duplicated dispatch logic without stating a resource objective.",
    552: "Deduplicates two ASN.1 implementations, with no code-size objective stated.",
    567: "Deduplicates OBJ_cmp without stating a resource objective.",
    602: "Refactors backend selection to add future implementations, without changing its speed objective.",
    614: "Removes an obsolete alignment branch, but the stated objective is simplification.",
    658: "Avoids a division for a future dependency change; the message does not report a speed gain.",
}
unsupported = {
    2, 21, 39, 50, 66, 77, 80, 81, 87, 99, 110, 120, 121, 123,
    130, 136, 154, 157, 159, 179, 180, 184, 193, 194, 197,
    200, 206, 209, 229, 239, 240, 250, 264, 265, 282, 284,
    287, 303, 306, 312, 339, 345, 348, 349, 352, 387, 398,
    401, 416, 424, 438, 447, 453, 457, 459, 472, 473, 505, 507,
    508, 511, 520, 527, 529, 546, 568, 588,
    603, 610, 612, 648, 655, 669, 671, 672, 673,
}
reasons = {
    7: "Reduces EVP_CIPHER_CTX memory per instance.",
    9: "Uses a more efficient string search overload.",
    24: "Uses faster Montgomery multiplication and removes a modulus copy.",
    27: "Avoids unused X.509 subject pretty-printing during parsing.",
    31: "Avoids an immediately discarded stack allocation.",
    32: "Simplifies ex_data to make its built-in implementation performant.",
    42: "Avoids an extra RSA verification copy.",
    46: "Removes a CBB_init_fixed allocation.",
    69: "Avoids a modular inversion in RSA key checking.",
    70: "Shrinks P-256 tables and speeds their scans.",
    85: "Uses faster public multi-scalar multiplication in Trust Tokens.",
    89: "Replaces a potentially linear first-match fixup with binary search.",
    90: "Removes virtual calls in TLS CBC; the upstream benchmark differences are noisy.",
    92: "Removes constant-time table lookups for public P-224 multiplication.",
    127: "Retunes the exponentiation window for reported RSA throughput gains.",
    130: "Skips slow test cases on non-x86 to reduce test runtime.",
    138: "Buffers urandom reads under an explicit no-fork promise.",
    143: "Switches the FIPS integrity hash to faster SHA-512 on 64-bit systems.",
    149: "Reuses affine coordinates and batches inversions.",
    159: "Adds assembly prefetch for performance; upstream reports no clear gain.",
    166: "Reduces an ML-KEM modulus-check performance regression.",
    174: "Reworks SHAKE to expose a batched Keccak backend.",
    179: "Reduces ARM fuzz runtime to meet the CI time limit.",
    194: "Speeds file-test suffix construction, outside the crypto API.",
    225: "Reorders RSA trial division and GCD to reduce key-generation time.",
    232: "Allows link-time elimination of otherwise retained error code.",
    234: "Avoids stack-allocating SSL_SESSION during hash-table lookup.",
    265: "Adds a constant-time GHASH fallback faster than the former C fallback, while some assembly paths slow down.",
    270: "Removes generated OID-table code and its binary search.",
    283: "Removes BIGNUM work from uncompressed-coordinate parsing.",
    297: "Routes tuned curve arithmetic to the public EC_POINT operations.",
    298: "Avoids a GHASH table word-order fixup.",
    306: "Reduces a TSAN test workload to keep its runtime bounded.",
    308: "Uses independently faster P-256 field-inversion chains; whole ECDH speed is unchanged upstream.",
    311: "Removes BN_CTX work and helper calls from EC point construction.",
    318: "Uses faster Barrett-style trial division in RSA key generation.",
    319: "Restores the faster variable-time setup for public Montgomery moduli.",
    349: "Selects a faster overall X25519 C path instead of retaining x86-64 assembly.",
    375: "Batches inversions in Trust Token operations.",
    376: "Uses superoptimized HRSS mod-3 circuits.",
    377: "Reduces HRSS stack use; the historical message reports mixed runtime effects.",
    378: "Eliminates delayed-initialization state in legacy AEAD contexts.",
    398: "Combines vpaes and bsaes to keep CTR throughput while making the path constant-time.",
    404: "Enables dead-code elimination of unused modular inversion implementations.",
    411: "Removes a known-DH-group fast path to save code bytes after its use was deprecated.",
    415: "Defers slow FIPS known-answer tests until first use to reduce startup work.",
    422: "Eliminates function-name strings and saves 100 KB in the upstream release build.",
    423: "Caches RSA Montgomery contexts instead of recomputing them per exponent.",
    430: "Shares built-in EC_GROUP objects and avoids construction in the ECDH benchmark path.",
    438: "Avoids repeated AES backend dispatch.",
    495: "Skips an unnecessary lock and free callback on empty ex_data.",
    511: "Removes an AArch64 prefetch instruction to reduce code size and decode time.",
    527: "Adds an HMAC precomputed-key API to save hash compression calls; no old API counterpart exists.",
    531: "Replaces a conservative TLS CBC block count with a faster SHA-1 suffix update.",
    546: "Drops unreachable s2n-bignum variants from OPENSSL_SMALL builds.",
    551: "Uses constant curve groups and avoids unnecessary EC_GROUP_free calls.",
    588: "Removes stitched RC4-MD5 assembly to reduce binary size despite a runtime slowdown.",
    601: "Defers RSA self-tests until an RSA operation first needs them.",
    603: "Reworks RNG locking and adds a much faster RDRAND-backed path.",
    610: "Adds AArch64 multiword arithmetic assembly for better throughput.",
    612: "Uses a borrowed EC_GROUP order to avoid a heap allocation.",
    623: "Shrinks P-384/P-521 precomputed and runtime scalar-multiplication tables.",
    629: "Removes BIGNUM operations and many allocations from PKCS#12 derivation.",
    631: "Returns early when modular inversion has no solution.",
    637: "Stack-allocates EC field elements and replaces a multiply with a square.",
    640: "Deduplicates repeated CPU-capability and library-init calls.",
    643: "Avoids a modular inversion when loading some RSA keys.",
    655: "Passes a known size to sdallocx for faster deallocation when available.",
    672: "Enables link-time elimination of unused WNAF multiplication code.",
    673: "Drops RC4 assembly to optimize the binary for size.",
}
assert unsupported <= confirmed
assert not (confirmed & unresolved.keys())

screened = []
for entry in audit["entries"][:674]:
    draw = entry["draw"]
    assert 0 <= draw < 674
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in unresolved else "excluded_non_optimization")
    item = {"draw": draw, "commit": entry["commit"], "subject": entry["subject"],
            "screen": status,
            "reason": reasons.get(draw, entry["subject"] if draw in confirmed else
                      unresolved.get(draw, "No performance objective established for the changed behavior.")),
            "missing_changed_blobs": entry["missing_changed_blobs"]}
    if draw in confirmed:
        assert entry["missing_changed_blobs"], entry["commit"]
        item.update({"source_status": "missing_changed_blob", "checker_status": "not_run",
                     "verdict": "UNSUPPORTED" if draw in unsupported else "UNKNOWN",
                     "coverage": "metadata intent/scope screen; exact historical old/new source unavailable"})
    screened.append(item)

original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
added = [e for e in screened if e["screen"] == "confirmed_optimization"]
sample = original + added
assert len(screened) == 674 and len(original) == 56 and len(added) == len(confirmed) == 144
assert len({e["commit"] for e in sample}) == len(sample) == 200

(results / "aws-lc-topup-first200-screen.json").write_text(json.dumps({
    "repo": "aws-lc", "pin": audit["pin"], "draws_reviewed": 200,
    "confirmed_optimizations": 50, "intent_unresolved": 3,
    "entries": screened[:200],
}, indent=2) + "\n")
(results / "aws-lc-topup-first400-screen.json").write_text(json.dumps({
    "repo": "aws-lc", "pin": audit["pin"], "draws_reviewed": 400,
    "confirmed_optimizations": 92, "intent_unresolved": 6,
    "entries": screened[:400],
}, indent=2) + "\n")
(results / "aws-lc-topup-first600-screen.json").write_text(json.dumps({
    "repo": "aws-lc", "pin": audit["pin"], "draws_reviewed": 600,
    "confirmed_optimizations": 128, "intent_unresolved": 12,
    "entries": screened[:600],
}, indent=2) + "\n")
(results / "aws-lc-topup-first674-screen.json").write_text(json.dumps({
    "repo": "aws-lc", "pin": audit["pin"], "draws_reviewed": 674,
    "confirmed_optimizations": len(added), "intent_unresolved": len(unresolved),
    "entries": screened,
}, indent=2) + "\n")
(results / "aws-lc-optimization-sample.json").write_text(json.dumps({
    "repo": "aws-lc", "pin": audit["pin"],
    "selection": "all fixed 200 and first 674 of 796 remaining seeded keyword candidates after intent screening; first 200 confirmed optimizations in order",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(screened), "added": len(added),
                  "sample": len(sample), "unsupported_scope": len(unsupported),
                  "intent_unresolved": len(unresolved)}))
