#!/usr/bin/env python3
"""Screen source-gap s2n-bignum commits using local commit messages and trees."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/s2n-bignum"
ledger_path = root / "history-eq/results/s2n-bignum-pinned-sample-audit.json"
evidence_path = root / "history-eq/hol/s2n-bignum/metadata-source-gap-screening.md"

performance = {
    "002fdb01": "Adds an AVX2 ML-DSA inverse NTT path with an upstream official benchmark; no prior same-signature implementation is claimed.",
    "0f214056": "Adds an AVX2 rejection-sampling path specialized from the reference implementation.",
    "02df8e4d": "Adds NEON P-521 multiply/square alternatives; the message reports faster upstream GV2 timings.",
    "0667cb03": "Removes an ARM instruction; the message reports a Graviton2 speed improvement.",
    "07529972": "Adds vectorized, rescheduled NEON counterparts to existing P-256 field routines.",
    "0af76bcf": "Switches existing P-384 point operations to optimized NEON field routines; the message reports about 9% gain.",
    "128ad8cb": "Adds mulcache precomputation explicitly to speed ML-KEM base multiplication.",
    "13db58e4": "Optimizes HOL Light tactics explicitly to reduce proof-running latency.",
    "1be9ed86": "Adds an X25519 basepoint specialization explicitly described as faster than the general function.",
    "1f16fdc6": "Removes constant-load instructions to reduce ARM P-256 code size.",
    "1f745d69": "Uses NEON field routines in existing P-521 point operations; the message reports 17% and 22% gains.",
    "389bc721": "Propagates field-operation improvements into existing ARM X25519 routines.",
    "39ab4657": "Adds P-256 point routines with stated shortcuts in modular reduction; no old same-signature API is claimed.",
    "3d4b79ee": "Changes existing ARM P-256 point routines to hybrid forms for slow-multiplier cores.",
    "3f5d9819": "Adds four-way AVX2 Keccak assembly and benchmark coverage as a throughput-oriented alternative.",
    "44baba00": "Propagates improved field operations into existing ARM Curve25519 routines.",
    "47771faf": "Avoids a slower term-matching step in HOL equivalence tactics.",
    "48ccdaff": "Shortens dependency chains in ARM modular-inverse inner loops.",
    "4bb56e58": "Removes unnecessary HOL tests explicitly to speed proof-file execution.",
    "4cd65476": "Adds a pure-projective doubling specialization stated to be faster than extended-projective doubling.",
    "4d2e22a3": "Refactors equivalence tactics and explicitly avoids an assumption scan for speed.",
    "4da7afa0": "Avoids a save/restore by using an otherwise free register in x86 squaring.",
    "4f57e3e4": "Includes an explicit bounds-phase optimization in pointwise-accumulation proofs.",
    "54f11bf3": "Replaces repeated inlined field operations with subroutines to reduce P-521 code size.",
    "56058eaf": "Includes explicitly faster x86 symbolic simulation in a broader safety-proof change.",
    "56ed3a40": "Partially evaluates HOL tactic quotations; the message states a speed improvement.",
    "5aed0222": "Replaces masking with BTR/BTS in existing x86 routines; the message states shorter and faster code.",
    "5b05f025": "Adds precomputed mixed point addition for efficient known-point scalar multiplication.",
    "5e84e568": "Reduces ARM multiplication additions for improved scheduling on alternate microarchitectures.",
    "5ee9f50c": "Adds a squaring specialization that avoids duplicated generic multiplication terms.",
    "627607f5": "Propagates an optimized Montgomery multiplier into existing ARM point operations.",
    "656c9148": "Improves accumulation in existing x86 1024-bit multiplication.",
    "65f046ec": "Adds NEON P-521 Montgomery routines with faster upstream benchmark timings.",
    "6a890820": "Switches existing ARM P-521 scalar multiplication to faster field routines; the message reports about 20% gain.",
    "6c8fa63d": "Replaces a linear instruction lookup in HOL symbolic execution with constant-time array indexing.",
    "777d5745": "Switches existing ARM Curve25519 paths from generic to field-specific modular inversion.",
    "799bfaea": "Replaces scalar ARM implementations with NEON versions and moves originals to unopt directories.",
    "7a38caa1": "Ports AVX2 rejection-sampling kernels as architecture-specialized alternatives.",
    "7e7b18e8": "Switches existing ARM Ed25519 paths from generic to field-specific modular inversion.",
    "87b19d7f": "Regenerates ML-KEM NTT assembly with SLOTHY for a Neoverse N1 scheduling target.",
    "8c279779": "Uses subroutines instead of inlining to reduce P-521 code size and proof time.",
    "92d118ae": "Replaces ARM extract instructions with shifts that may be faster on some microarchitectures.",
    "935ebaea": "Uses a lower-cost x86 quotient multiply; the message reports a speed gain.",
    "9682bf92": "Adds ARM secp256k1 alternatives optimized for higher multiplier throughput.",
    "9a53ff2d": "Removes a modular reduction from the existing ML-KEM inverse NTT.",
    "9f41f2fe": "Adds a Karatsuba-based optimized 2048-bit multiplication alternative.",
    "a5e920a8": "Adds an ARM Montgomery reduction alternative with upstream Graviton2 benchmark gains.",
    "a69657bd": "Eliminates five-digit intermediates in ARM X25519; the message states a slight speed gain.",
    "a7e47d30": "Adds a Keccak alternative for machines with limited SHA3-instruction throughput.",
    "aaacb80a": "Optimizes ARM Curve25519 multiplication for low UMULH throughput.",
    "ac6a59a6": "Changes existing ARM 4x4 multiplication to Karatsuba for stated microarchitectural gains.",
    "b8670b22": "Adds an AVX2 ML-DSA forward NTT implementation as an architecture-specialized path.",
    "bffc1883": "Adds multiplication/squaring alternatives tuned for different CPU microarchitectures.",
    "c08d6d2e": "Reorders P-256 point-doubling field operations; the message reports a 2–3% speed gain and less stack use.",
    "c220217a": "Targets slow HOL Light tactics built around ASSIGNS_SEQ rewriting.",
    "c60b31e4": "Adds 6x6 multiplication alternatives tuned for high multiplier throughput or older x86 CPUs.",
    "c8c00c8d": "Loosens modular reductions in existing X25519 basepoint code for a stated speed gain.",
    "d3a7b195": "Adds faster NEON P-384 field operations and speeds equivalence-checking tactics.",
    "d87a8289": "Improves HOL symbolic-simulation speed by grouping assumptions with CLARIFY_TAC.",
    "df4f617b": "Optimizes existing ARM field-squaring implementations for slow multipliers.",
    "e03c52cb": "Speeds safety proof simulation by omitting private information from the symbolic trace.",
    "e0980af5": "Shortens the existing modular-inverse inner loop and its dependency chain.",
    "ec62054c": "Aligns x86 loops to avoid the Skylake JCC performance erratum.",
    "ed5fdd3c": "Includes fewer instructions in existing P-256/P-384 negation paths alongside a new SM2 operation.",
    "ee2f0a11": "Pre-reduces repeated SIMD semantic expressions; the message reports faster cosimulation.",
    "f07c7679": "Includes efficiency tweaks to existing Curve25519 functions alongside a new operation.",
    "f1ad23c1": "Adds NEON table-lookup specializations for fixed-width tables.",
    "f2f66e81": "Caches repeated proof constructs to prevent CI proof timeouts.",
    "f357fee8": "Regenerates an existing ML-KEM NTT kernel; the message reports 2.5%–6% upstream speed gains.",
    "f6c36445": "Avoids repeated real-arithmetic proof expansion with integer congruence tactics.",
    "f91afbae": "Native-compiles simulators expressly for speed.",
    "fc0b9bf7": "Replaces non-alt ARM X25519 with SLOTHY-generated unsaturated arithmetic.",
}
excluded = {
    "018b27b0": "Deduplicates HOL Light list helpers without a stated performance objective.",
    "01f0a9b9": "Expands supported input/output aliasing behavior; no speed objective is stated.",
    "03a969e8": "Repairs expression canonicalization in the ARM simulator.",
    "08447462": "Adds a new curve-order modulus routine, not a faster replacement.",
    "153f345f": "Adds a new ML-KEM conversion routine, not a faster replacement.",
    "190efeef": "Extends the x86 model to decode short operations.",
    "1fcccc89": "Adds a new rejection-sampling primitive, not a faster replacement.",
    "2293d042": "Adds an AVX2 instruction model for proofs.",
    "2343008b": "Adds ARM instruction models for proofs.",
    "24a288af": "Fixes negative-immediate underflow in the proof model.",
    "2753744c": "Adds ARM load/store instruction models and cosimulation tests.",
    "29149f33": "Adds ARM SIMD instruction models for proofs.",
    "2d3ea07d": "Adds ARM SIMD instruction models for proofs.",
    "2f8b8d85": "Adds x86 AVX2 instruction models for proofs.",
    "31c39878": "Adds negative decoder tests, not an optimized runtime path.",
    "32be314a": "Adds AES-XTS routines and proofs, without a faster existing implementation claim.",
    "37480555": "Adds a new full-group-order modulus routine.",
    "3750058a": "Changes assembly syntax and labels for delocator/build compatibility.",
    "39ccdf32": "Adds a new ML-KEM canonical reduction routine.",
    "3a78bc3d": "Adds a new word-level divstep primitive.",
    "3b4f73ce": "Changes assembly syntax for AWS-LC delocator compatibility.",
    "3d725778": "Adds a new Curve25519 modulus routine without a faster-replacement claim.",
    "4155b2fa": "Adds ML-DSA conditional-addition code and its proofs; unrolling is described as a proof-framework requirement.",
    "4320f649": "Adds carryless-multiply instruction models for proofs.",
    "4453af8a": "Improves constant-expression reduction in symbolic simulation without a speed claim.",
    "471fca76": "Adds an x86 instruction model for proofs.",
    "482277db": "Adds x86 instruction models needed for ML-KEM proofs.",
    "49971c80": "Adds an AVX2 instruction model for proofs.",
    "4d1356a7": "Lifts an ARM proof over a BTI landing pad.",
    "4d49cc4a": "Avoids conditional memory loads for safety in even/odd tests, not a stated speed change.",
    "4dec8bc9": "Adds ARM LD3 instruction support to the proof model.",
    "54faf6a4": "Adds x86 instruction models for ML-DSA rejection sampling.",
    "5596db71": "Factors common proof patterns without a stated runtime or proof-speed objective.",
    "5804be5e": "Cleans up x86 decoder pattern matching without a stated speed objective.",
    "5c707a62": "Changes assembler macros to C preprocessing for toolchain compatibility.",
    "5e11cba6": "Factors a reusable modular-inverse proof theorem without a speed objective.",
    "5e9277b8": "Adds a new Curve25519 modular-inverse routine without a stated faster-replacement claim.",
    "6003edaf": "Extends constant-time test coverage and robustness.",
    "65f2a138": "Adds code alignment required by existing proof assumptions.",
    "66aa7e1b": "Adds memory-safety theorems for existing ML-KEM variants.",
    "67430bea": "Adds an Ed25519 point-encoding operation.",
    "67ae54e1": "Adds a constant-time reciprocal primitive without a stated faster-replacement claim.",
    "68a258c5": "Adds an ML-KEM polynomial-packing operation.",
    "6f4e7a68": "Corrects headers and comment banners for ML-KEM functions.",
    "733b7ed2": "Adds an x86 instruction model for proofs.",
    "76a8cf54": "Adds proof-timing measurement output rather than speeding a proof.",
    "7948ca13": "Adds new ML-DSA polynomial routines and their proofs.",
    "7a293e02": "Adds microarchitectural-event semantics to the ARM proof model.",
    "7fc58833": "Adds a new multiply-add modulo basepoint-order operation.",
    "86da89dc": "Generates BMI feature-list metadata for builds.",
    "8a0b7777": "Adds new SM2 Montgomery conversion operations.",
    "8ac40107": "Adds Windows ABI wrappers for existing functions.",
    "8b443376": "Adds ARM BTI security and proof infrastructure.",
    "8f89e236": "Moves constant tables into read-only data and updates relocation proofs.",
    "9061e8b7": "Adds an x86 instruction model for proofs.",
    "91fc4ec5": "Extends ARM SIMD load/store decoding in the proof model.",
    "93f7ae8e": "Adds a scalar Keccak primitive for SHA3 support.",
    "9639f32e": "Adds a new word-level popcount operation.",
    "99a7bfc4": "Adds x86 instructions needed by AES-XTS proofs.",
    "9aa81555": "Changes labels and syntax for delocator compatibility.",
    "9c395a54": "Adds a new Curve25519 Montgomery ladder-step operation.",
    "a0194c75": "Adds ARM instruction semantics and refactors proof-model names.",
    "a26281f5": "Adds ARM UBFM instruction semantics to the proof model.",
    "a32c7188": "Adds secp256k1 Montgomery conversion operations.",
    "a3c392bf": "Adds ARM instructions needed by AES-XTS proofs.",
    "a48ec947": "Improves automatic proof bounds and fixes a conversion; no speed claim is stated.",
    "a7a4f770": "Adds an SM2 scalar-multiplication operation.",
    "a9628597": "Extends x86 AVX2 support in the proof model.",
    "a987ef41": "Adds constant-time x86 table lookup and its proof, not a faster replacement.",
    "abe4a7b3": "Adds AVX2 instruction models for proofs.",
    "acd969b4": "Changes ML-KEM NTT APIs to accept constant tables.",
    "af5bbade": "Adds a new x86 AVX2 polynomial-reduction implementation and proof.",
    "b00d0c1b": "Adds ARM test-bit branch instruction models.",
    "b189eb7c": "Removes dead flag-setting instructions to address static-analysis findings.",
    "b365f8e0": "Adds Ed25519 basepoint multiplication, a new operation.",
    "b3c320c3": "Adds P-256 precomputed-point scalar multiplication, a new operation.",
    "b5cc41ae": "Adjusts ARM SHA3 build and test restrictions.",
    "b6c77c52": "Adds ML-DSA polynomial routines and their proofs.",
    "bba136c5": "Adds RISC-V cosimulation tests.",
    "717b57ac": "Adds x86 Keccak code and proofs, without a faster existing-path claim.",
    "836a75c9": "Migrates x86 assembly from NASM to GNU assembler syntax.",
    "b677535e": "Generalizes proof bounds for ML-KEM/ML-DSA without a speed claim.",
    "bdb44878": "Extends ARM cosimulator instruction coverage.",
    "bf75b6c6": "Adds a partial RISC-V instruction model.",
    "c19516a3": "Adds ARM ML-DSA rejection-sampling code and proofs without a faster-replacement claim.",
    "c1988430": "Renames ML-KEM polynomial functions and their call sites.",
    "c241557f": "Adds a new P-521 scalar-multiplication operation.",
    "c3ed931c": "Adds ARM NEON instruction models for proofs.",
    "c747b1b6": "Refreshes assembly comment banners.",
    "c7cb7f4b": "Updates CI and test targets, not runtime or proof speed.",
    "c9ae3219": "Adds call-frame annotations for debugging and unwinding.",
    "ca6ec31a": "Adds ML-DSA pointwise implementations and proofs without a faster-replacement claim.",
    "cb13eb85": "Adds ARM SIMD load/store semantics to the proof model.",
    "cb68859b": "Extends lockstep simulation support without a speed claim.",
    "ccefa2a7": "Expands automatic proof bounds for integer operations without a speed claim.",
    "cecacd1d": "Adds a generic modular-exponentiation operation.",
    "d0470fbf": "Adds ML-KEM base multiplication for new vector sizes.",
    "d0666504": "Adds ARM widening-multiply decoding to the proof model.",
    "d0d52193": "Strengthens modular-inverse specification for degenerate inputs.",
    "d3115cd4": "Adds an ARM instruction-semantics test simulator.",
    "d32508ba": "Adds ARM saturating-multiply instruction semantics.",
    "d4083a8d": "Refactors shared proof definitions and conversions without a speed claim.",
    "d445f5e9": "Adds a new Curve25519/Ed25519 group-order modulus operation.",
    "d5da19ad": "Generalizes ISA proof infrastructure for 32-bit backends.",
    "d74fd949": "Adds general-size secp256k1 modulus operations.",
    "d8b8135c": "Adds ML-KEM vector base multiplication for two elements.",
    "df8e913c": "Adds new P-384 point operations without a faster-replacement claim.",
    "e14394d7": "Simplifies Montgomery-ladder zero handling and proof structure without a speed claim.",
    "e236c376": "Generalizes alignment proof automation.",
    "e23fd300": "Adds a generic-size basepoint-order modulus operation.",
    "e335aa8a": "Adds x86 memory-operation cosimulation tests.",
    "e4263e08": "Refactors modular-inverse proofs for reuse.",
    "e45e34ae": "Adds single-word bignum division operations.",
    "e6ef86f7": "Renames duplicate x86 assembly labels.",
    "ed9baaf8": "Introduces P-521 modular addition, not a faster existing-path replacement.",
    "f0f54dc0": "Adds ARM conditional-comparison semantics to the proof model.",
    "f214965f": "Expands interval reasoning automation without a speed claim.",
    "f3e59309": "Adds ML-DSA polynomial-use-hint code and proofs.",
    "f51c8227": "Renames an ML-DSA reducer to avoid an AWS-LC name conflict.",
    "fce78c7c": "Improves OCaml version compatibility and exception handling.",
}
assert len(performance) + len(excluded) == 192
assert performance.keys().isdisjoint(excluded)

subject_tree_only = {"002fdb01", "3d4b79ee", "799bfaea", "836a75c9", "b677535e", "c1988430", "f51c8227"}

data = json.loads(ledger_path.read_text())
by_prefix = {e["commit"][:8]: e for e in data["entries"]}
assert len(by_prefix) == len(data["entries"]) == 200
lines = [
    "# s2n-bignum historical metadata screen", "",
    "All 192 source-gap fixed-sample commits have changed-path trees. Seven have no local commit "
    "message: those cases use the pinned sample subject and changed paths; upstream pages were "
    "also reviewed for `002fdb01` and `799bfaea`. The other cases use local commit messages. "
    "Performance intent is metadata-screened, not an assembly proof. The "
    f"{len(performance)} "
    "performance cases remain `UNKNOWN`: no before/after HOL Light relation was run for them. "
    "Upstream timing statements are intent evidence, not benchmark reruns here.", "",
    "For the message-gap cases, [PR #318](https://github.com/awslabs/s2n-bignum/pull/318) "
    "provides the `002fdb01` benchmark context, and the [official `799bfaea` commit]"
    "(https://github.com/awslabs/s2n-bignum/commit/799bfaea9af92a0b567cf3357ca6c889cbf7de53) "
    "describes replacing scalar ARM routines with NEON. The other five use the pinned subject "
    "and changed-path tree only.", "",
    "Reproduce the metadata with `git -C benchmarks/repos/s2n-bignum show -s --format=%B <commit>` "
    "and `git -C benchmarks/repos/s2n-bignum diff-tree --no-commit-id --name-only -r <commit>`.", "",
    "| Commit | Subject | Screen | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix, reason in sorted({**performance, **excluded}.items()):
    entry = by_prefix[prefix]
    assert entry["source_status"] == "missing_changed_blob"
    assert entry["screen"] in ("intent_pending", "confirmed_optimization", "excluded_non_optimization")
    message_result = subprocess.run(
        ["git", "-C", str(repo), "show", "-s", "--format=%B", entry["commit"]],
        capture_output=True, text=True,
    )
    message = message_result.stdout.strip()
    paths = subprocess.run(
        ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", entry["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout.splitlines()
    assert paths
    if prefix in subject_tree_only:
        assert message_result.returncode != 0 and not message
        message = entry["subject"]
    else:
        assert message_result.returncode == 0 and entry["subject"] in message
    if prefix in performance:
        entry.update({
            "screen": "confirmed_optimization", "checker_status": "not_run", "verdict": "UNKNOWN",
            "coverage": "historical commit-message and changed-path intent screen; exact changed source and HOL Light relation unavailable",
            "reason": reason, "evidence": str(evidence_path.relative_to(root)),
        })
        label = "performance; UNKNOWN"
    else:
        entry.update({
            "screen": "excluded_non_optimization", "checker_status": "not_run",
            "reason": reason, "evidence": str(evidence_path.relative_to(root)),
        })
        entry.pop("verdict", None)
        entry.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/awslabs/s2n-bignum/commit/{entry['commit']}"
    lines.append(
        f"| [`{prefix}`]({url}) | {entry['subject'].replace('|', '&#124;')} | "
        f"{label} | {reason} | {len(paths)} |"
    )

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert sum(screens.values()) == 200
assert screens["confirmed_optimization"] == len(performance) + 8
assert screens["excluded_non_optimization"] == len(excluded)
assert screens["intent_pending"] == 0
assert verdicts["UNKNOWN"] == len(performance) + 1 and verdicts["EQUIV_PARTIAL"] == 6 and verdicts["REFINES"] == 1
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "outcome_labeled_optimizations": sum(verdicts.values()),
    "pending_outcome_labels": 0,
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_refinement_full": verdicts["REFINES"],
    "verified_equal_refine_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger_path.write_text(json.dumps(data, indent=2) + "\n")
evidence_path.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
