#!/usr/bin/env python3
"""Screen AWS-LC source-gap optimization intent from local commit metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/aws-lc"
results = root / "history-eq/results"
ledger = results / "aws-lc-pinned-sample-audit.json"
evidence = root / "history-eq/c/aws-lc/metadata-source-gap-screening.md"

# UNSUPPORTED is a checker-scope finding: assembly, build selection, or a new API has no direct old/new Alive2 function pair.
# UNKNOWN means the changed path is C, but exact historical source is missing.
performance = {
    "013240ba": ("UNSUPPORTED", "Reorders AArch64 AES assembly for instruction fusion in the zero-tail case."),
    "0260ef4f": ("UNSUPPORTED", "Adds hand-optimized AArch64 MD5 assembly."),
    "02ea4c4a": ("UNSUPPORTED", "Switches P-256/384/521 scalar multiplication to s2n-bignum implementations; upstream reports speedups."),
    "04c36b50": ("UNSUPPORTED", "Disables an RC4 assembly mode that the message reports slower on modern x86."),
    "0e0ca82b": ("UNKNOWN", "Removes an ASN.1 cache after upstream found no performance benefit."),
    "141062fe": ("UNKNOWN", "Removes an LCM calculation from RSA key checking; upstream reports about 2x faster checks."),
    "15b2f730": ("UNSUPPORTED", "Adds optimized ARMv8 SHA3/SHAKE assembly."),
    "1741a9d1": ("UNKNOWN", "Reuses an HMAC context to save allocations in TLS MAC computation."),
    "1b5e247a": ("UNSUPPORTED", "Dispatches to new AArch64 Keccak assembly; upstream formal-verification claims are not a local old/new proof."),
    "25f3d84f": ("UNKNOWN", "Rewrites BN_rand to avoid an extra allocation."),
    "26ba48a6": ("UNSUPPORTED", "Routes x86 AES calls to AES-NI assembly when available."),
    "317ead12": ("UNKNOWN", "Reduces PBKDF self-test iterations from 4096 to 2 to speed startup."),
    "362e25eb": ("UNSUPPORTED", "Adds optimized AArch64 batched SHA3/SHAKE assembly."),
    "3adb1e5a": ("UNSUPPORTED", "Removes unused XTS assembly to reduce shipped code size."),
    "51ae4b1b": ("UNSUPPORTED", "Dispatches P-256/384/521 inversions to s2n-bignum assembly; upstream reports throughput gains."),
    "5b74f41b": ("UNSUPPORTED", "Enables s2n-bignum P-384/521 assembly on Apple platforms; upstream reports throughput gains."),
    "5f04b6bc": ("UNSUPPORTED", "Adds POWER AltiVec SHA-1 C intrinsics in place of a scalar assembly path; cross-ISA comparison is outside the selected Alive2 setup."),
    "61503f7f": ("UNKNOWN", "Replaces the Windows global refcount lock with Interlocked atomics to avoid contention."),
    "617804ad": ("UNKNOWN", "Removes a hard link dependency on BN_mod_exp so unused code can be dropped."),
    "638a408c": ("UNKNOWN", "Adds tuned variable-time P-256 multiplication; upstream reports platform-specific throughput gains."),
    "6541308f": ("UNKNOWN", "Shrinks temporary big-number multiplication arrays by removing oversized allocation."),
    "6603b76f": ("UNKNOWN", "Removes a redundant EC coordinate reduction under a strengthened input precondition."),
    "6a289b3e": ("UNKNOWN", "Removes an affine-conversion optimization after upstream throughput comparison showed little benefit."),
    "6f0c4db9": ("UNSUPPORTED", "Enables upstream Poly1305 assembly variants and dispatch."),
    "7121fe24": ("UNKNOWN", "Avoids allocating ECDSA inversion and one multiplication in the verify path."),
    "74f79b60": ("UNSUPPORTED", "Retunes AArch64 AES and SHA-1 assembly for Cortex-A5x."),
    "762e1d03": ("UNSUPPORTED", "Imports x86 ChaCha assembly fix to restore upstream speed improvement."),
    "7a22a650": ("UNKNOWN", "Avoids slow RDRAND additional-data calls on affected processors."),
    "8480499f": ("UNSUPPORTED", "Changes CPU dispatch to select faster AArch64 assembly on Neoverse-V3; upstream reports throughput gains."),
    "8b28ae4d": ("UNSUPPORTED", "Selects s2n-bignum P-384 assembly alternatives on x86 CPUs without BMI2/ADX."),
    "8de7597a": ("UNKNOWN", "Uses aligned buffering to remove ChaCha20 ARM input-alignment restrictions; upstream reports throughput changes."),
    "92654dbd": ("UNSUPPORTED", "Enables C11 atomics by default at build time to remove a refcount performance cliff; a C function-pair Alive2 check does not cover build selection."),
    "9700b44f": ("UNKNOWN", "Eliminates ciphertext reconstruction in HRSS re-encryption."),
    "97770d17": ("UNKNOWN", "Uses Montgomery arithmetic throughout EC affine-coordinate extraction."),
    "9edbc7ff": ("UNSUPPORTED", "Re-enables x86-64 ECDSA verification assembly speedup."),
    "a7a75f20": ("UNKNOWN", "Reduces trial divisions in RSA-3072/4096 key generation."),
    "a838f9dc": ("UNKNOWN", "Reworks ECDSA signing for an upstream 10% throughput improvement and timing safety."),
    "af351076": ("UNSUPPORTED", "Adds optimized AArch64 AES-GCM assembly."),
    "afdddacb": ("UNKNOWN", "Adds Fiat-based P-521 implementation; upstream reports ECDH and signing gains."),
    "b00c3bd4": ("UNKNOWN", "Uses a function reference to get CPU capabilities and avoid carry-flag save/restore."),
    "b4cc925c": ("UNSUPPORTED", "Removes specialized x86-64 P-256 assembly to reduce code size."),
    "b65e630e": ("UNKNOWN", "Moves BN_nnmod out of low-level curve setup so built-in curve binaries can drop it."),
    "b706d7e7": ("UNSUPPORTED", "Dispatches AArch64 Montgomery multiplication to s2n-bignum assembly on narrow-multiplier CPUs."),
    "b987355a": ("UNSUPPORTED", "Adds new power-of-two BIGNUM APIs for downstream allocation savings; no old API function exists to compare directly."),
    "c1dd49a7": ("UNSUPPORTED", "Re-enables the existing x86-64 HRSS AVX2 assembly fast path."),
    "c763a401": ("UNKNOWN", "Replaces quadratic CBC MAC rotation with a logarithmic-stage constant-time rotation."),
    "ca5f197e": ("UNSUPPORTED", "Dispatches Apple M-series CPUs to wide-multiplier assembly implementations."),
    "cbae965c": ("UNKNOWN", "Replaces HRSS inversion algorithm; upstream reports a small ARM speed gain."),
    "d3fa1f23": ("UNSUPPORTED", "Enables faster assembly implementations on Neoverse-V2 through CPU dispatch."),
    "d9785e39": ("UNKNOWN", "Adds P-384 Fiat-crypto C implementation with upstream performance comparisons."),
    "dfdb1b9b": ("UNSUPPORTED", "Adds x86 AES-CTR assembly prefetch instructions for reported benchmark gains."),
    "eb7d5b69": ("UNKNOWN", "Replaces a Windows critical section with a more efficient SRWLOCK."),
    "eeffae10": ("UNKNOWN", "Imports Jitterentropy code with stated performance improvements but missing exact changed source."),
    "fa3fbda0": ("UNSUPPORTED", "Adds optimized AArch64 P-256 assembly."),
    "fee8709f": ("UNKNOWN", "Generalizes stack allocation to avoid heap allocation in modular exponentiation paths."),
}
excluded = {
    "01338f5a": "Improves verify and X.509 CLI compatibility.",
    "02ba1789": "Simplifies a C loop without a stated speed objective.",
    "05ee4fda": "Adds no-op compatibility APIs.",
    "09050cb4": "Adds a SipHash implementation.",
    "096f73a6": "Adds random-generator benchmarks.",
    "0ba0a1ed": "Fixes CMake directory permissions.",
    "0df6edff": "Splits primality-check constants for clarity.",
    "0f76ff19": "Prepares a release.",
    "1044553d": "Adds GCD primitives needed for RSA key generation.",
    "12b5dd5c": "Removes 32-bit BIT_INTERLEAVE support to simplify the implementation.",
    "12f7737d": "Removes an unused exported Montgomery API.",
    "15f053cf": "Adds brainpool elliptic-curve support.",
    "16503c51": "Changes FIPS integrity-check algorithm requirements.",
    "19670949": "Aligns Ed25519 EVP API behavior with upstream.",
    "1e7565c4": "Prepares a release.",
    "1f53747b": "Removes whitespace.",
    "1f5e9456": "Removes an unnecessary SHA-1 dependency from ECDSA code without a speed claim.",
    "22ac2d9b": "Fails MSan builds that include uninstrumented assembly.",
    "22edd877": "Fixes size_t truncation warnings.",
    "22ff8b80": "Disables an HRSS AVX2 path after a memory-safety diagnostic.",
    "232a6be6": "Makes primality testing mostly constant-time for security.",
    "253c05e1": "Consolidates even-modulus inversion logic.",
    "253f5ca3": "Changes HMAC context cleanup behavior.",
    "25f081ff": "Adds locale-independent character predicates.",
    "26c4d4d3": "Silences a GCC false-positive warning.",
    "26ccfec9": "Avoids fragile union use in CCM.",
    "27e863e7": "Improves NewHope test vectors.",
    "28bc6eba": "Avoids an MSan compiler miscompile.",
    "28be5302": "Extends constant-time checks to assertions for security.",
    "2c58c2fd": "Fixes a concurrent RSA blinding double free.",
    "2ed11afe": "Adds allocation error handling in X.509 algorithms.",
    "2f9c3b66": "Removes legacy X.509 extension support.",
    "2fe0360a": "Fixes undefined unaligned pointer casts in SHA-512.",
    "2ff4d9d1": "Avoids entropy use during a deterministic RSA self-test.",
    "302ef5ee": "Consolidates GCM declarations.",
    "34a2c5e4": "Makes recursive big-number multiplication constant-time; speed is not the objective.",
    "375124b1": "Corrects BER parsing for PKCS#12.",
    "378b394a": "Keeps a CPU capability check for deployment safety.",
    "382bc292": "Handles error-path pointer advancement defensively.",
    "38993942": "Adds Cortex-A15 performance data rather than changing the algorithm.",
    "3ab3b128": "Adds signature-algorithm compatibility functions.",
    "3ac32b1e": "Fixes Curve25519 MSVC behavior and a broken speed test.",
    "3dfbcc1f": "Adds Silvermont performance data to assembly files.",
    "3f81b607": "Fixes certificate verification error state.",
    "4091649c": "Adds an EVP context API for FIPS behavior.",
    "45ad222b": "Adds a PBKDF2 service indicator and adjusts its tests.",
    "4edaef51": "Enables AArch64 Valgrind tests.",
    "52483994": "Fixes undefined comparator casts in stack operations.",
    "5267ef7b": "Changes TLS shutdown handling for correctness.",
    "5d940871": "Removes unreachable window-size cases for code cleanup, without a measurable performance goal.",
    "612f99d5": "Moves digest-sign APIs within the FIPS module.",
    "61a7ef4f": "Removes constant-time validation false positives.",
    "61dd5614": "Clears RSA constant-time validation false positives.",
    "62c67347": "Updates hash-to-curve formulation for standards alignment.",
    "666f2ab6": "Updates Python scripts for Python 3 compatibility.",
    "696b6b50": "Fixes prime-number correctness issues.",
    "6b352622": "Maintains digest-context invariants under allocation failure.",
    "6f564afb": "Changes modular operations to constant-time behavior for security.",
    "704453fa": "Adds deprecated compatibility APIs.",
    "70e660fa": "Avoids a compiler warning.",
    "71809b15": "Uses unique include guards for ML-KEM headers.",
    "75327884": "Relaxes X.509 context caller requirements.",
    "779d13f7": "Rejects invalid large DH parameters.",
    "77c3c0b0": "Enables Ed25519 in reduced-size builds without a performance change.",
    "77c88cd9": "Fixes MinGW release builds and compiler warnings.",
    "7830af62": "Frees cipher data on error paths.",
    "78fe4fd2": "Fixes old-style prototype warnings.",
    "7da8ea72": "Adds a declaration to fix a POWER build warning.",
    "8017cdde": "Makes bit-count timing constant for security.",
    "83a82981": "Renames and refactors error-printing APIs.",
    "843ab66e": "Adds Android NDK build support.",
    "8604eda6": "Adds Broadwell performance results as comments, without an implementation change.",
    "86361a39": "Requires an RSA public exponent for blinding correctness.",
    "86b79b46": "Removes cached EC_GROUP field-minus-order state with negligible speed effect, without a performance objective.",
    "86c06924": "Adds Skylake performance-result comments.",
    "87c76407": "Replaces an INLINE macro with the C inline keyword for style consistency.",
    "8a7164d0": "Corrects RDRAND retry behavior.",
    "8d685ec8": "Fixes Perl syntax warnings in ARM GHASH assembly generation.",
    "8df3a71e": "Repairs Rust binding API and optimized-build support; no existing operation speed change is identified.",
    "91122edc": "Fixes Apple cross-compile entropy-source selection.",
    "958aaf1e": "Adds error handling to BN_bn2dec.",
    "9660ac3f": "Redesigns SHA3/SHAKE APIs and functionality without a stated speed objective.",
    "96628433": "Converts digest tests to GTest.",
    "96ac8191": "Normalizes ARM build support.",
    "973b5925": "Adds error-stack APIs.",
    "97caff75": "Makes RSA structures opaque.",
    "9806ae00": "Checks a resumed TLS ClientHello binder for correctness.",
    "9d0e7fb6": "Reorganizes PKCS code and API dependencies for maintainability.",
    "9da9035b": "Adds digest tests.",
    "9dadc3b6": "Replaces a Windows one-time initialization wrapper with INIT_ONCE for API cleanup.",
    "9f05de4e": "Removes an untested BN_div branch; upstream reports no meaningful speed difference.",
    "9fc31378": "Makes EC point comparison constant-time for security.",
    "a166bd16": "Uses an existing no-inline macro.",
    "a1e7b54d": "Bounds ASN.1 output size for safety.",
    "a2f2bc3a": "Aligns error strings with upstream.",
    "a87de9b3": "Moves a Windows build define to avoid a conflict.",
    "ac81d929": "Reverts an unused assembler-conversion script change.",
    "ad2d942a": "Adds tagged ASN.1 integer APIs.",
    "ade291c5": "Cleans up DES key-schedule representation.",
    "b18cb6a5": "Moves POWER CPU capability state to preserve constructor initialization.",
    "b36a3156": "Adds a big-number modexp regression test.",
    "b571e777": "Adds an experimental handshake-hints API.",
    "b74d80de": "Exposes OCSP ASN.1 declarations for compatibility.",
    "b95767e0": "Adds a prefix header for build compatibility.",
    "b9c26014": "Removes compiler-version checks from pregenerated perlasm for build cleanup.",
    "bb1aabad": "Exposes SHAKE through the EVP API.",
    "bbc42914": "Adds generated-file notices.",
    "bc7e2cb9": "Selects the Windows UWP random API for compatibility.",
    "bda01b40": "Updates Dilithium from upstream.",
    "be837402": "Makes RSA CRT timing constant for security.",
    "bf681a40": "Fixes an out-of-bounds read in modular exponentiation.",
    "bfefc27c": "Removes nonstandard void-pointer arithmetic for compiler compatibility.",
    "c07635f8": "Removes redundant ARM assembler conditional directives.",
    "c1399186": "Repairs GOT-pointer handling in an assembly relocation tool.",
    "c1c6eeb5": "Checks an RSA key-reduction invariant.",
    "c5e372e6": "Returns early on a missing inverse, for error-path consistency.",
    "c946aff2": "Changes the Windows random-number API.",
    "cd24a39f": "Corrects the DHE group size limit.",
    "ce9b8737": "Simplifies big-number subtraction code without an explicit performance goal.",
    "cf9a98cc": "Updates x86 assembly performance-result comments.",
    "d035730a": "Changes Montgomery setup return type for error handling.",
    "d3192050": "Rejects unsafe CRT use for unbalanced RSA keys.",
    "d60b60e8": "Adds a FIPS AArch64 proof-of-concept CI build.",
    "d726d061": "Adds OpenBSD platform support.",
    "d87021d2": "Fixes an X.509 time comparison out-of-bounds read.",
    "d94682dc": "Removes an ex_data duplication hook for API and error-handling simplification.",
    "d974f265": "Adds an RSAZ reduction step to fix arithmetic correctness.",
    "da7f0c65": "Fixes X.509 type confusion and retry handling.",
    "dc94b547": "Cleans up Windows SDK header use.",
    "e1cc35e5": "Fixes TLS 1.3 resumption interoperability.",
    "e2ff2ca0": "Reverts an ARM assembly syntax change to reduce upstream divergence.",
    "e38cf79c": "Fixes NO_THREADS build configuration; lower overhead is incidental.",
    "e3caab68": "Aligns TLS EOF reporting with OpenSSL behavior.",
    "ea99a849": "Changes entropy read retries for robustness.",
    "f3e5ebc9": "Improves X.509 test coverage.",
    "f64c3737": "Fixes a GCC build warning.",
    "f8d3b922": "Fixes AF_UNIX address-length handling.",
    "f9e20cd6": "Adds ARM unwind metadata to Montgomery assembly.",
    "ff905b09": "Avoids an invalid size_t sentinel conversion for correctness.",
}
assert len(performance) + len(excluded) == 194
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
source = next(r for r in availability["repos"] if r["repo"] == "aws-lc")
source_by_commit = {e["commit"]: e["status"] for e in source["items"]}
lines = [
    "# AWS-LC fixed-sample metadata screen", "",
    "All 194 previously pending source-gap candidates were screened from local commit "
    "messages and changed-path trees. Exact changed historical source is unavailable. "
    "`UNKNOWN` means the C old/new relation was not run; `UNSUPPORTED` marks assembly, "
    "build-selection, or new-API changes without a direct old/new Alive2 function pair. "
    "These are checker-scope classifications, "
    "not executed proofs. Upstream benchmarks or formal-verification claims are not local reruns.", "",
    "Reproduce with `git -C benchmarks/repos/aws-lc cat-file -p <commit>` and "
    "`git -C benchmarks/repos/aws-lc diff-tree --no-commit-id --name-only -r <commit>`.", "",
    "| Commit | Subject | Classification | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix in sorted(performance.keys() | excluded.keys()):
    item = items[prefix]
    assert source_by_commit[item["commit"]] == "missing_changed_blob"
    assert item["screen"] in ("intent_pending", "confirmed_optimization", "excluded_non_optimization")
    obj = subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-p", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout
    assert "\n\n" in obj and " ".join(item["subject"].split()) in " ".join(obj.split("\n\n", 1)[1].split())
    paths = subprocess.run(
        ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout.splitlines()
    assert paths
    if prefix in performance:
        verdict, reason = performance[prefix]
        item.update({
            "screen": "confirmed_optimization", "checker_status": "not_run", "verdict": verdict,
            "reason": reason,
            "coverage": "historical commit message and changed-path screen; no source-matched Alive2 old/new relation run",
            "evidence": str(evidence.relative_to(root)),
        })
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/aws/aws-lc/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (56, 144, 0)
assert (verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (28, 28)
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(verdicts.values()),
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
