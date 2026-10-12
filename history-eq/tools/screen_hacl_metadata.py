#!/usr/bin/env python3
"""Screen HACL* fixed-sample source gaps using pinned Git metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/hacl-star"
ledger = root / "history-eq/results/hacl-star-pinned-sample-audit.json"
evidence = root / "history-eq/fstar/hacl-star/metadata-source-gap-screening.md"

performance = {
    "05efc7ec": "Avoids an expensive F* type-equality proof obligation.",
    "0827c7fe": "Repairs hint replay for a particularly slow F* verification file.",
    "16b907ce": "Avoids nested F* normalizations in assertions.",
    "17aae611": "Adds missing extraction-control annotations to the HPKE interface.",
    "193deb93": "Reduces solver fuel and resource limits in two expensive proofs.",
    "1d58ac50": "Removes an unnecessary StackInline marker used to force generated-code inlining.",
    "21a042b7": "Adds an extraction inline marker to a Chacha20 vector specification.",
    "259d7825": "Removes unnecessary extraction inlining in the Blake2 specification.",
    "2a4026fd": "Inlines and removes unused sequence helpers and changes extraction behavior.",
    "2c66212c": "Avoids an if-then-else expression in an SMT pattern.",
    "2e700e7b": "Removes superfluous state from alloca_st.",
    "2f18e544": "Restructures Blake2 split_blocks so KreMLin eliminates a temporary tuple.",
    "2f8edd52": "Adds a missing extraction inline marker in vector Chacha20.",
    "301d6dfd": "Works toward avoiding field inversion in ECDSA verification.",
    "31b5ebda": "Revises a sequence helper to speed up F* proofs.",
    "336420dc": "Prevents inlining a SHA-512 initializer used by Ed25519.",
    "34a5f92c": "Simplifies loop arguments and adds an inline_let hint.",
    "3b05020c": "Adds a missing extraction inline marker to bignum parameters.",
    "5e60e031": "Removes a branch from incremental Blake2.",
    "6622b4db": "Retunes GF(2^128) precomputation for performance.",
    "6c51e279": "Makes extracted allocation sizes constant so KreMLin eliminates size checks.",
    "6cb675bc": "Adds a missing C inlining marker to P256 scalar code.",
    "7772398d": "Changes Blake2 extraction and normalization hints.",
    "7bba7ddd": "Removes slow files from the build selection.",
    "7e6d6a8f": "Avoids a higher-order Chacha20 specification path.",
    "8097d859": "Inlines a SHA-3 rotation and makes constants private.",
    "80e80726": "Adds inlining to HMAC-DRBG implementation and interface.",
    "841ad5af": "Eliminates generated variable-length arrays in Blake2.",
    "84bdad84": "Avoids copying SHA-3 state in chi.",
    "84f3abec": "Adds missing extraction-inline markers to buffer key types.",
    "8ed2c159": "Inlines bignum result length in addition and subtraction.",
    "8f712390": "Optimizes experimental Curve25519 field implementations.",
    "92afd60d": "Adds missing C inlining to Chacha20-Poly1305.",
    "92d96343": "Changes Ed25519 proof scripts to improve verification performance.",
    "93f92adb": "Attempts to inline a Chacha20 call within Chacha20-Poly1305.",
    "9791cbb8": "Adds inline_let to avoid a generated C variable-length array.",
    "994e08cc": "Removes a slow Poly1305 specification file from CI for performance reasons.",
    "9aa6631d": "Avoids a costly vector-extensionality proof step.",
    "9f725cd2": "Avoids generated variable-length arrays in specialized bignum code.",
    "a4520377": "Loopifies SHA2-256 scheduling for better runtime performance while verification is temporarily lost.",
    "a5576a0e": "Introduces a faster 64-bit Poly1305 implementation.",
    "a63bd036": "Moves a bignum specification into slow-file build selection.",
    "a747a9e1": "Inlines a Montgomery add-carry helper.",
    "a8b403d7": "Removes extraction-inline markers from stateful AES-GCM functions.",
    "a9ceb13e": "Avoids variable-length arrays inside bignum loops.",
    "a9d2e741": "Removes a slow file from Curve25519 build selection.",
    "aea6783b": "Applies small optimizations in the streaming functor.",
    "b4920973": "Inlines Chacha20 setup.",
    "b9f67b0f": "Experiments with Vale assembly as inline assembly for extraction.",
    "bc3c243e": "Speeds up GF(2^128) NI implementation.",
    "bdf6cbd7": "Avoids an extra copy in bignum byte conversion.",
    "c0a97531": "Inlines Blake2 initialization with parameters.",
    "c3aef0d2": "Adds inlining to Ed25519 functions.",
    "c7eb7313": "Speeds up Chacha20 in GCC builds.",
    "c947e994": "Avoids KreMLin runtime size-check generation.",
    "cc102ce1": "Marks bignum functions CInline for generated-code inlining.",
    "ce1b2016": "Reorders Ed25519 build files to improve CI speed.",
    "d0ff595e": "Adds missing P256 C inlining.",
    "d4218224": "Restores CInline markers in Chacha20 and Chacha20-Poly1305.",
    "d7b2b456": "Unrolls SHA-2 alongside vector-intrinsic fixes.",
    "da9453e5": "Fixes an inefficient proof path using a new lemma.",
    "dd9a7606": "Restores an omitted Blake2 inlining marker.",
    "e1a21e9e": "Changes SHA-2 specification code for extracted OCaml performance.",
    "e1bea358": "Attempts a vectorized Chacha20 encrypt path inside Chacha20-Poly1305.",
    "e67aa05f": "Inlines an experimental SHA-256 update4 helper.",
    "e87ba299": "Prevents Ed25519 point_negate inlining.",
    "eeca5446": "Speeds up bitsliced AES.",
    "f3d804f3": "Adds CInline to obtain the desired Poly1305 C code.",
    "fa233328": "Adds extraction-inline markers to Poly1305 bignum code.",
    "fc471ec9": "Shrinks SHA-2 update_last branches.",
    "fc8d2d25": "Avoids generating unused Ed25519 signing variables.",
}
unsupported = {"7bba7ddd", "994e08cc", "a63bd036", "a9d2e741", "b9f67b0f", "ce1b2016", "d7b2b456"}
excluded = {
    "03a3bcde": "Removes a retired SHA-2 one-shot implementation without a speed claim.",
    "056a67a0": "Fixes Poly1305 and reorganizes bignum specification files.",
    "06804d9b": "Integrates SHA-2 and adds Ed25519 performance tests, but does not optimize an existing path.",
    "06df58b8": "Removes an F* assumption to strengthen the proof.",
    "07ccb8ee": "Repairs a snapshot.",
    "0a19e656": "Updates a snapshot.",
    "0f11ca98": "Changes SHA-2 syntax without a stated speed objective.",
    "0fb3d34a": "Improves Curve25519 specification style.",
    "1058917e": "Serializes KreMLin Makefile invocations to avoid a build race.",
    "1173c5a5": "Improves the SHA-2 specification without a speed claim.",
    "15a049ac": "Repairs SHA2-256 work with a remaining failing hint, not a measured optimization.",
    "17177ef8": "Corrects multiplication-lemma usage.",
    "1e343ebe": "Addresses comments, license text, and test targets.",
    "1ee9b814": "Moves an EC formatting file in the build without a speed claim.",
    "210afdf4": "Makes unspecified proof changes without evidence of a speed objective.",
    "2d1bcdd4": "Improves a Blake2s specification interface.",
    "2eff9c4b": "Moves vectorized Blake2 functions between modules without a speed claim.",
    "31ed3f96": "Reorganizes hash Makefiles without a stated build-time objective.",
    "33f6eaa5": "Renames Curve25519 Vale procedures.",
    "36d78edd": "Strengthens ECIES specification entropy handling.",
    "38e6586a": "Changes specification style.",
    "3d2872ea": "Changes distribution headers for packaging quality.",
    "3d545626": "Makes unspecified Blake2 streaming changes without a speed objective.",
    "3d920ee8": "Makes unspecified SPARKLE and ESCH specification improvements.",
    "3f749c4e": "Makes unspecified Blake2s specification improvements.",
    "419816db": "Uploads unfinished vectorized SHA-3 modules rather than optimizing an existing path.",
    "4470a77e": "Adds StackInline allocation helpers without evidence of an existing-path speedup.",
    "44cbf092": "Adds a Chacha20 specification without a stated performance objective.",
    "4537761b": "Makes unspecified changes to experimental Blake2b incremental code.",
    "48657f6d": "Adds a specification loop helper and cosmetic changes.",
    "48a055da": "Updates a snapshot.",
    "4bc1dfe1": "Strengthens a partial PRNG proof without a stated speed objective.",
    "4e95e99e": "Makes unspecified Blake2s stateful changes.",
    "53dfe2bd": "Experiments with secure_api verification flags in a snapshot.",
    "543bb94e": "Makes unspecified AES-GCM module changes.",
    "57c68278": "Renames target configuration macros for compatibility.",
    "5c14c0ee": "Adds debug vector functions and a temporary assumption.",
    "5e26a875": "Makes unspecified library/specification changes.",
    "61646a51": "Removes diagnostic printing without a stated throughput objective.",
    "61af6ce9": "Makes an unspecified Lib.PrintSequence change.",
    "63de8148": "Adds unfinished experimental vectorized Chacha20 code.",
    "668e60b7": "Reverts a build-disabling change to restore AES availability.",
    "6d73fabf": "Rewrites a tactic to insert preconditions, with no stated verification-speed objective.",
    "73afb4ac": "Makes unspecified Blake2s specification improvements.",
    "7645f392": "Improves the SHA-2 specification without a speed claim.",
    "7abf8872": "Collects and tests a snapshot.",
    "7c3d3c72": "Points out unsound randomness operations in the specification.",
    "7de364e2": "Detects a broken Xcode version and disables incompatible inline assembly.",
    "7f93e249": "Revises a random-sequence specification without a speed claim.",
    "7ff930c9": "Avoids unpredictable names caused by module clashes.",
    "80e68998": "Makes unspecified Blake2s implementation changes.",
    "8454bcfe": "Stabilizes a Vale field-addition call.",
    "85e93fda": "Removes inlining to fix Windows builds.",
    "869f0ef4": "Reverts an extraction change to restore CompCert compatibility.",
    "876877a6": "Updates a snapshot.",
    "877553a2": "Improves a Chacha20-Poly1305 specification without a speed claim.",
    "8a6fff82": "Deduplicates P256 source through extraction inlining for maintainability.",
    "8d217e4f": "Updates the Blake2 one-shot API.",
    "958c7067": "Improves the streaming Blake2 API without a speed claim.",
    "978a87f4": "Adds unfinished P256 reduction helper work.",
    "9bb035e7": "Changes test configuration to avoid invalid cases.",
    "9fd43bdc": "Adds static inline to debug vector primitives without a production speed claim.",
    "a108801e": "Makes an unspecified Makefile cleanup.",
    "a1541fe9": "Makes unspecified meta-program changes.",
    "a282f48a": "Experiments with snapshot extraction and tests.",
    "a32f3e7d": "Improves tests only.",
    "a3ba1cd4": "Adds unfinished experimental vectorized Chacha20 code.",
    "a6086100": "Improves the hash specification without a speed claim.",
    "a6887765": "Updates a snapshot.",
    "a6b780fb": "Makes an unspecified Endianness interface change.",
    "a8054344": "Updates a snapshot.",
    "acca142a": "Improves the clean build target.",
    "aead1a77": "Moves DRNG snapshot files into an experimental tree.",
    "aebae50b": "Fixes SHA3 SIMD256 correctness.",
    "afd2dcf2": "Aligns code style.",
    "b3d4a32b": "Adds a vectorized Chacha20 test.",
    "b5a3bb0b": "Adds an unrolled specification helper without wiring it to an existing faster path.",
    "b5cfe039": "Renames target configuration macros.",
    "b7b27426": "Removes friend declarations after an extraction-language capability change.",
    "b80117b5": "Improves sequence printing without a speed claim.",
    "b8a69631": "Updates an extracted snapshot.",
    "bf0fa5db": "Makes unspecified IntBuf specification changes.",
    "c32dc750": "Adds snapshot generation to the Makefile.",
    "c4f017e5": "Adds NaCl box/secretbox implementation and speed tests, not an old-path optimization.",
    "c9dfbba1": "Changes Curve25519 compile guards for target compatibility.",
    "cdd50d0c": "Removes superfluous recursion syntax without a speed claim.",
    "cf410f95": "Moves an experimental snapshot.",
    "d03afc82": "Moves vectorized Blake2 modules into separate files.",
    "d1f34f8d": "Adds a Chacha20-Poly1305 performance test only.",
    "d2edc8aa": "Adds P256 modular-multiplication benchmark coverage.",
    "d837d8e9": "Improves HMAC Makefile targets without a stated build-time speed objective.",
    "dbdaf9ae": "Improves the HPKE specification without a speed claim.",
    "ddae471d": "Makes unspecified Makefile improvements.",
    "dfa95b3d": "Makes unspecified spec Makefile improvements.",
    "e06847b6": "Changes extra_state length types to fix mismatches.",
    "e24fcb58": "Updates an experimental snapshot.",
    "e4303d21": "Improves a Blake2 specification without a stated speed objective.",
    "e5af524c": "Makes unspecified Blake2 Makefile improvements.",
    "e71f8ad4": "Restores SHA-2 extraction correctness through inlining markers.",
    "e98ad431": "Moves a cryptographic specification to another branch.",
    "edca0c11": "Makes unspecified buffer specification improvements.",
    "ee701f77": "Fixes vectorized Poly1305 correctness.",
    "f011f6c9": "Adds a primitive benchmark without changing an existing path.",
    "f11379ec": "Adds a Makefile target for a slow Curve25519 variant.",
    "f3d0e574": "Factors a KreMLin call in the HMAC Makefile without a speed claim.",
    "f46c7ef7": "Renames generated inline assembly functions.",
    "f6bc184a": "Makes unspecified Blake2 changes.",
    "f87afb77": "Improves an ECIES specification without a speed claim.",
    "f8cfcb91": "Adds debug vector-function infrastructure.",
    "f97f77aa": "Cleans up signed-integer specification qualifiers and lemmas.",
    "fa07469e": "Removes inlining markers to avoid verbose warnings.",
}
assert len(performance) + len(excluded) == 182
assert performance.keys().isdisjoint(excluded)
assert unsupported <= performance.keys()

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
initial_exclusions = {"4938a825", "65486209", "8700bbb3", "87854e1b", "ad77bc4b",
                      "dd91794c", "ef67858c", "f771a3e0", "fb049bf4"}
pending_source_gaps = sorted(e["commit"][:8] for e in data["entries"]
                             if e["source_status"] == "missing_changed_blob" and e["commit"][:8] not in initial_exclusions)
assert set(performance) | set(excluded) == set(pending_source_gaps)
lines = [
    "# HACL* fixed-sample metadata screen", "",
    "All 182 previously pending source-gap candidates were screened from exact local Git "
    "commit messages and changed-path trees. `UNKNOWN` means no historical F* old/new relation or generated-C "
    "comparison was run: exact changed source is missing. `UNSUPPORTED` marks build-selection, inline-assembly, or C-intrinsic changes "
    "outside a function-level F* relation. Extraction annotations may change generated C even "
    "when F* source-level behavior is the same. These metadata classifications are not proofs or benchmark reruns.", "",
    "| Commit | Subject | Classification | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix in sorted(performance.keys() | excluded.keys()):
    item = items[prefix]
    assert item["source_status"] == "missing_changed_blob"
    assert item["screen"] in ("intent_pending", "confirmed_optimization", "excluded_non_optimization")
    obj = subprocess.run(["git", "-C", str(repo), "cat-file", "-p", item["commit"]],
                         check=True, capture_output=True, text=True).stdout
    assert "\n\n" in obj and " ".join(item["subject"].split()) in " ".join(obj.split("\n\n", 1)[1].split())
    paths = subprocess.run(["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", item["commit"]],
                           check=True, capture_output=True, text=True).stdout.splitlines()
    assert paths
    if prefix in performance:
        reason = performance[prefix]
        verdict = "UNSUPPORTED" if prefix in unsupported else "UNKNOWN"
        item.update({"screen": "confirmed_optimization", "checker_status": "not_run", "verdict": verdict,
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched F* or generated-C old/new relation run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/hacl-star/hacl-star/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (77, 123, 0)
assert (verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (2, 68, 7)
data["summary"] = {"confirmed_optimizations": screens["confirmed_optimization"],
                   "checked_optimizations": sum(verdicts.values()), "pending_checker_optimizations": 0,
                   "excluded_non_optimizations": screens["excluded_non_optimization"],
                   "pending_intent_screening": screens["intent_pending"],
                   "verified_inequal": verdicts["NOT_EQUIV"],
                   "verified_equal_refinement_partial": verdicts["EQUIV_PARTIAL"],
                   "unverified": verdicts["UNKNOWN"], "unsupported": verdicts["UNSUPPORTED"]}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
