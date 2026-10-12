#!/usr/bin/env python3
"""Screen OpenSSL fixed-sample source gaps using pinned Git metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/openssl"
ledger = root / "history-eq/results/openssl-pinned-sample-audit.json"
evidence = root / "history-eq/c/openssl/metadata-source-gap-screening.md"

# UNKNOWN: missing historical C source; UNSUPPORTED: no direct C-function Alive2 pair for assembly/generators.
performance = {
    "015364ba": ("UNSUPPORTED", "Retunes AArch64 AES assembly interleaving for instruction latency."),
    "034688ec": ("UNKNOWN", "Rewrites binary-field inversion with reported ECDSA signing gains."),
    "0b0896cd": ("UNSUPPORTED", "Optimizes the ARMv4 SHA-1 assembly implementation."),
    "0f529cbd": ("UNSUPPORTED", "Optimizes the s390x Montgomery assembly prologue."),
    "1cf8f57b": ("UNSUPPORTED", "Tunes x86-64 GHASH assembly for Atom CPUs."),
    "1fb97e13": ("UNKNOWN", "Optimizes NIST-prime bignum reduction in C."),
    "22de0e65": ("UNSUPPORTED", "Optimizes x86-64 assembly translation output size and speed."),
    "24486294": ("UNKNOWN", "Vectorizes ML-DSA NTT operations using C compiler vector extensions."),
    "2d0c55ed": ("UNSUPPORTED", "Retunes RIPEMD160 assembly with reported lower cycle count."),
    "2d75c5e3": ("UNSUPPORTED", "Optimizes RISC-V SM4-CBC IV updates in generated assembly."),
    "2da2ff50": ("UNKNOWN", "Checks self-signed certificates more efficiently in X.509 verification."),
    "2e4a99f3": ("UNKNOWN", "Optimizes AES-CFB1/8 C paths."),
    "32d3c3ab": ("UNKNOWN", "Reduces PKEY decoder setup cost."),
    "3d5fd312": ("UNSUPPORTED", "Changes AES assembly layout to avoid L1 cache aliasing."),
    "3e00b4c9": ("UNKNOWN", "Improves the existing optional NIST-P224 C implementation and adds P256/P521 paths."),
    "4df2280b": ("UNSUPPORTED", "Tunes x86-64 AES-NI/SHA-1 assembly for Atom CPUs."),
    "558ff0f0": ("UNSUPPORTED", "Tunes x86-64 BSAES assembly for Atom CPUs."),
    "58cc21fd": ("UNSUPPORTED", "Adds x86 GF(2) multiplication assembly with performance data."),
    "5f09d0ec": ("UNKNOWN", "Speeds up the C AES-IGE implementation."),
    "69f45c52": ("UNSUPPORTED", "Removes a SHA-1 x86 assembly instruction from the hot loop."),
    "6c79faaa": ("UNSUPPORTED", "Optimizes x86-64 AES-NI CTR assembly."),
    "701d593f": ("UNSUPPORTED", "Tunes x86-64 Whirlpool assembly for reported throughput gain."),
    "7f2c22c1": ("UNSUPPORTED", "Uses a read lock on the RAND method hot path, changing concurrent locking behavior."),
    "8359421d": ("UNKNOWN", "Uses 32-bit AES words for better cache locality on 64-bit targets."),
    "86cd42fb": ("UNKNOWN", "Removes a redundant global-lock lookup and null check."),
    "8f9842fd": ("UNSUPPORTED", "Uses wider PowerPC Keccak loads; upstream reports a SHAKE128 speedup."),
    "98e143f1": ("UNSUPPORTED", "Retunes x86 GHASH assembly for Atom Silvermont."),
    "9f078e19": ("UNSUPPORTED", "Reuses thread-local ASYNC_CTX objects instead of recreating them on every job."),
    "b2db94d1": ("UNKNOWN", "Avoids an extra /dev/crypto ioctl for one-shot digest calls."),
    "bacaa618": ("UNKNOWN", "Recognizes built-in EC curves to select faster named-curve implementations."),
    "c039e995": ("UNSUPPORTED", "Avoids slow RISC-V misaligned SHA-256 loads using aligned assembly accesses."),
    "c18b6f4c": ("UNSUPPORTED", "Optimizes AVXIFMA RSA exponentiation for Sierra Forest CPUs."),
    "c3cddeae": ("UNSUPPORTED", "Includes a minor s390x AES software-assembly optimization."),
    "c4d9ef4c": ("UNSUPPORTED", "Retunes POWER9 SHA-512 assembly with a reported speedup."),
    "cc77d0d8": ("UNSUPPORTED", "Optimizes PowerPC GHASH assembly with a reported speedup."),
    "cfc32a1e": ("UNKNOWN", "Optimizes Curve25519 ECDH on 64-bit platforms."),
    "d1229190": ("UNSUPPORTED", "Imports a faster s390x ChaCha assembly path for large blocks."),
    "daaf5088": ("UNKNOWN", "Makes a small C XTS-mode optimization."),
    "db6bcc81": ("UNKNOWN", "Adds a fast path to OPENSSL_init_crypto when already initialized."),
    "e747f4d4": ("UNKNOWN", "Adds a faster intermediate-size C GHASH lookup variant."),
    "f0b1d4d1": ("UNKNOWN", "Reduces namemap hash buckets to save memory with a stated large-map speed tradeoff."),
    "f87b4c4e": ("UNSUPPORTED", "Adds AVX512 exponentiation assembly for Ice Lake CPUs."),
    "f99ffceb": ("UNSUPPORTED", "Avoids an RCU flush for hash tables without RCU freeing."),
    "f9ef874a": ("UNSUPPORTED", "Optimizes x86-64 bitsliced AES key conversion assembly."),
    "fccbb9b3": ("UNSUPPORTED", "Retunes SPARC v8plus bignum Comba assembly routines."),
}
excluded = {
    "001a0934": "Merges Curve448 headers without a speed objective.",
    "01c09f9f": "Fixes bignum sign and BN_rand validation behavior.",
    "0239283d": "Ensures key material is cleared on all exits.",
    "02a73e2b": "Updates an assembly comment about performance measurements only.",
    "065121ff": "Adds tests and resolves a duplicate symbol.",
    "06666f0d": "Zeroes newly allocated memory to fix uninitialized reads.",
    "0ae365e1": "Fixes a Montgomery reduction correctness bug; upstream reports no measurable speed effect.",
    "0cdcdacc": "Fixes an AppVeyor build failure.",
    "0cfbc828": "Changes CMS/PKCS#7 controls and PSS-key checks for correctness.",
    "14697d9d": "Reduces a test input to satisfy BN_to_montgomery's precondition.",
    "157997f0": "Fixes encoding error handling.",
    "18285605": "Fixes VAES round-key stack cleansing.",
    "19b8d06a": "Fixes NIST-prime code and adds a lock for race safety.",
    "1a979201": "Fixes Intel compiler miscompilation and linker dependencies without a measured runtime gain.",
    "1b0fe79f": "Improves MASM support for x86-64 assembly.",
    "20e80ad1": "Fixes a spurious decode error at EOF.",
    "22bcc9cb": "Fixes ED448 key lengths.",
    "271da5a2": "Fixes no-dsa link behavior.",
    "281066cb": "Works around an old GCC assembly compiler bug.",
    "285c6913": "Fixes no-dh builds.",
    "2c45bf2b": "Renames a macro and removes warning noise.",
    "309c7ffd": "Adds a digest-size error check.",
    "31b28ad9": "Adds CMP message validation and supporting APIs.",
    "320a8127": "Removes code with unclear contribution provenance.",
    "349d1cfd": "Fixes a Windows one-time initialization deadlock.",
    "35b7c85a": "Removes unused Curve448 code without a stated speed objective.",
    "37124360": "Adds a ladder extension interface for possible future speedups, not a faster existing path.",
    "3a8012cb": "Improves 386 assembly portability.",
    "3c914840": "Replaces unsafe LHASH function-pointer casts.",
    "3d1b8389": "Saves another PowerPC register for future correctness; no performance claim.",
    "3f528d08": "Adds an allocation-failure check.",
    "430efff1": "Fixes CMP extra-certificate validation behavior.",
    "434149c7": "Fixes a Curve448 CI failure.",
    "44612e0a": "Uses secure memory for PEM private-key reads.",
    "44c09667": "Fixes a declaration/name collision.",
    "45197ad3": "Formats OCB source for readability.",
    "4b1fe471": "Unifies HTTP client parameters and minor API behavior.",
    "4f20de0c": "Uses binary mode to avoid a Windows C runtime bug.",
    "4fdc16af": "Improves X.509 error handling.",
    "50f3994b": "Avoids a compiler warning about the name free.",
    "56e840fe": "Renames provider files to avoid build-name collisions.",
    "576129cd": "Fixes zero-length bignum comparison.",
    "57ae2e24": "Reworks the EVP API and generated declarations without a specific runtime speed claim.",
    "57f94478": "Disables unsupported real-number parameters on UEFI.",
    "5811387b": "Removes a redundant assignment without a performance objective.",
    "5811c0e8": "Changes the ML-KEM CAST pairwise self-test flow without a stated speed objective.",
    "594c436d": "Moves generated decoder code into an include template for clarity.",
    "5c41cee2": "Disables diagnostic memory usage counts when TSAN is absent.",
    "5d8b3a3e": "Refactors bignum error reasons for correctness.",
    "62178961": "Improves S/MIME streaming error detection.",
    "62457fd9": "Ignores deprecated HMAC parameters for behavior compatibility.",
    "62dc5aad": "Adds platform-specific global-variable export support.",
    "6450ea27": "Makes DES_set_key return errors consistently.",
    "645edf50": "Adds AES-OCB tag-validation error messages.",
    "667867cc": "Adds an ASYNC capability API and uses it in the speed application.",
    "66bcba14": "Limits PEM blob reads for safety.",
    "6ce84e64": "Fixes big-endian parameter tests.",
    "6cf412c4": "Improves ARM GHASH assembler compatibility with Android NDK.",
    "6e150083": "Merges fixes from a stable branch without an explicit performance objective.",
    "72d5e8dc": "Improves PBKDF2 error text.",
    "7324473f": "Imports new Curve448 functionality, not an optimization of an existing path.",
    "7753a3a6": "Marks inline assembly volatile to prevent incorrect dead-code elimination.",
    "7760384b": "Adds an error check in DSA key encoding.",
    "79221bc2": "Fixes an RSA CRT verification case.",
    "80b2ff97": "Merges a stable-branch update without an explicit performance objective.",
    "81b5eeed": "Fixes a VMS assembly branch mnemonic.",
    "830b8877": "Fixes NIST-prime precomputation correctness and 64-bit support.",
    "8573fa18": "Fixes a const warning in a test.",
    "85d686e7": "Adds feature-disable build options.",
    "86f32187": "Fixes a null-pointer crash in parameter access.",
    "86f50b36": "Fixes C inline linkage semantics.",
    "87a8405b": "Fixes integer overflow in X509_cmp.",
    "8869ad4a": "Adds CMP/CRMF protocol support.",
    "8ae4b236": "Removes unreachable BIO printing code for clarity.",
    "8c6336b0": "Synchronizes DES code with the FIPS branch without a speed claim.",
    "8ca661ab": "Fixes out-of-memory behavior and leaks in X.509 extension handling.",
    "8dee823e": "Corrects inline declarations.",
    "8f332ac9": "Tidies SRP helper implementations without a speed objective.",
    "909c68ae": "Applies Curve448 style changes.",
    "92f91ff4": "Updates stable-branch configuration files.",
    "931627e6": "Synchronizes AEP engine fallback behavior across branches.",
    "93370db1": "Removes duplicated ARM capability storage without a stated runtime-speed objective.",
    "96cce820": "Fixes a strict-warnings build.",
    "978ecbb0": "Avoids an EVP_PKEY_cmp crash for missing public components.",
    "9b6b470a": "Adds performance measurements to comments only.",
    "9cbcea7e": "Fixes a Curve448 debug build.",
    "9cde5f81": "Corrects IA5 string comparison behavior.",
    "9e5cd4ba": "Adds OCSP and timestamp accessors.",
    "a04b0657": "Corrects a BIO write bounds check.",
    "a16e8668": "Corrects EC point-format import and export behavior.",
    "a1e4c8ef": "Fixes CMP exception checks and diagnostics.",
    "a242839f": "Integrates Curve448 with OpenSSL SHAKE256 without an explicit performance objective.",
    "a4465bf6": "Makes ML-KEM key checks consistent.",
    "a4e31088": "Uses a typed empty-stack constructor instead of a null cast.",
    "a8d8e06b": "Avoids direct X.509 structure access for API compatibility.",
    "a908b711": "Adds RC4 performance results to comments only.",
    "a93b01be": "Avoids overlapping buffers during BIO decryption.",
    "aabbc24e": "Improves EdDSA ca application usability.",
    "aacf29b8": "Replaces a Curve448 inline macro for codebase consistency.",
    "ab307dc6": "Applies build and initialization cleanups without a stated speed objective.",
    "abdb460d": "Avoids overlapping BIO encryption read buffers.",
    "ac765685": "Adds missing random-generator initialization.",
    "ad33d623": "Checks a digest update function pointer for correctness.",
    "ade08735": "Improves certificate documentation and comments.",
    "b0452991": "Avoids an aliasing compiler warning.",
    "b0614f0a": "Restores clearer DRBG counter names.",
    "b3161bd9": "Reduces a namemap table to avoid allocation failures, with no speed claim.",
    "b46de72c": "Fixes LoongArch ChaCha20 ABI register preservation.",
    "b697864c": "Fixes DH parameter update behavior.",
    "b82acc3c": "Fixes ARM AES assembly compatibility with a binutils version.",
    "b9a2afdf": "Adds PKEY encoder output-structure API support.",
    "bb6e60ad": "Renames Curve448 files.",
    "bb7ccdfb": "Merges a stable-branch update without a speed claim.",
    "bdec3c53": "Adds a Kronecker test and fixes release notes.",
    "bfa4b8c5": "Merges a stable-branch update without a speed claim.",
    "c162b132": "Invalidates stale CRL cached encodings for correctness.",
    "c225c3cf": "Avoids null dereferences on absent PKCS#7 content.",
    "c2cccfc5": "Initializes a DH context to avoid freeing an uninitialized pointer.",
    "c34e7876": "Improves X.509 coding style and comments.",
    "c3d24d91": "Fixes an X.509 policy tree leak.",
    "c633b973": "Improves X.509 coding style.",
    "c981086d": "Adds ARM SHA-1 performance data to comments only.",
    "cb19528b": "Adds QUIC error diagnostics.",
    "cc2cb7bf": "Improves clang/Android build compatibility.",
    "ce38bb1a": "Fixes a null-result segfault.",
    "cebb1869": "Adds PowerPC performance data to comments only.",
    "cfca56df": "Fixes CMP senderKID behavior and documentation.",
    "d27fd991": "Cleans up secure-memory code readability.",
    "d8ec0dcf": "Renames shadowed variables.",
    "d8ed9e4a": "Updates TSAN lock detection in the namemap.",
    "d9f5cb89": "Fixes an ASN.1 memory leak.",
    "dd6f479e": "Avoids compiler warnings in debugging code.",
    "de0799b0": "Adds const qualifiers to PEM APIs.",
    "df0ee35b": "Adds an ECDSA digest-size validation check.",
    "e0033efc": "Hardens EC inversion against side channels.",
    "e0a675e2": "Cleans up a RAND_bytes call after an earlier API replacement.",
    "e24bdcde": "Fixes target-platform detection order.",
    "e7772577": "Renames Curve448 functions.",
    "e8e55976": "Corrects bignum comments and style.",
    "ecb6cdf0": "Fixes initial provider configuration loading.",
    "ef16f450": "Removes an impossible negative check and compiler warnings.",
    "f06ef165": "Fixes an RSA timing leak and constant-time behavior.",
    "f2348f1f": "Avoids a null dereference in PKCS#7.",
    "f59d72f0": "Removes unsupported floating-point formatting for UEFI.",
    "f5a46ed7": "Changes ERR initialization and string-loader APIs.",
    "f6a6f7b6": "Fixes duplicate build symbols in legacy.a.",
    "f8385b0f": "Removes a Curve448 subdirectory and renames files.",
    "fa86e2ee": "Adds an X.509 invalid-extension error.",
    "fbd6609b": "Fixes an appname lifetime leak.",
    "fe1128dc": "Fixes malloc-null handling.",
    "febac4fb": "Refactors ML-KEM decapsulation and cleanses a key for security.",
    "fffa78c2": "Uses a test RNG in FIPS self-tests to preserve DRBG initialization state.",
}
assert len(performance) + len(excluded) == 197
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
assert set(performance) | set(excluded) == set(sorted(e["commit"][:8] for e in data["entries"] if e["source_status"] == "missing_changed_blob" and not e["commit"].startswith("be3d90de")))
lines = [
    "# OpenSSL fixed-sample metadata screen", "",
    "All 197 previously pending source-gap candidates were screened from exact local Git commit "
    "messages and changed-path trees. Exact historical changed source is missing. `UNKNOWN` means an old/new C "
    "relation was not run; `UNSUPPORTED` marks assembly or an assembly generator without a direct C-function "
    "Alive2 pair or concurrent lock behavior outside that pair. No HOL Light assembly proof was run for these entries. These classifications are not proofs "
    "or local benchmark reruns.", "",
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
        verdict, reason = performance[prefix]
        item.update({"screen": "confirmed_optimization", "checker_status": "not_run", "verdict": verdict,
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched Alive2/HOL Light old/new relation run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/openssl/openssl/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (47, 153, 0)
assert (verdicts["NOT_EQUIV"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (2, 17, 28)
data["summary"] = {"confirmed_optimizations": screens["confirmed_optimization"],
                   "checked_optimizations": sum(verdicts.values()), "pending_checker_optimizations": 0,
                   "excluded_non_optimizations": screens["excluded_non_optimization"],
                   "pending_intent_screening": screens["intent_pending"],
                   "verified_inequal": verdicts["NOT_EQUIV"], "unverified": verdicts["UNKNOWN"],
                   "unsupported": verdicts["UNSUPPORTED"]}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
