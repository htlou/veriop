#!/usr/bin/env python3
"""Screen simdjson source-gap candidates against local historical commit metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/simdjson"
ledger = root / "history-eq/results/simdjson-pinned-sample-audit.json"
evidence = root / "history-eq/cpp/simdjson/metadata-source-gap-screening.md"

performance = {
    "031ee329": "Reverts a prior change because of reported parsing performance concerns.",
    "0bafb824": "Adds a LoongArch LASX fast path for JSON string escaping.",
    "0e18453e": "Tunes existing array-assert number parsing with table lookups.",
    "326c175d": "Speeds up the existing get<double> path.",
    "32b52e3f": "Coalesces JSON-builder field separators, keys, and colons into one write.",
    "36ceaa44": "Keeps parser loaded bytes to reduce allocations.",
    "37e6d1e9": "Replaces strtod-dependent number parsing with a bundled parser and tuned slow path.",
    "3801ea77": "Elides out-of-order iteration checks when API usage checks are disabled.",
    "3828e1e5": "Fixes documented Haswell SIMD performance issues.",
    "390a66c6": "Inlines next_structurals in the stage-one scanner.",
    "3d22a2d8": "Changes parser error-state handling for reported GCC and Clang speed gains.",
    "42c047a9": "Keeps builder output position local in reflection serialization to reduce overhead.",
    "460cfcaf": "Inlines parse_structurals in the stage-two parser.",
    "4af7d6f1": "Disables Apple threading in nonoptimized builds; a single parser-function Alive2 pair does not cover build-mode selection.",
    "4beb2ed5": "Makes simd8x64 immutable and applies Visual Studio optimizations.",
    "4d4ed920": "Removes 5 KB of number-parsing tables to reduce library size.",
    "4dfbf98e": "Uses one worker instead of a fresh thread per parse_many batch.",
    "52406402": "Changes ARM64 vector operations for better performance on some systems.",
    "5d1e3efc": "Speeds up the existing minifier.",
    "60c139a8": "Reworks existing serialization for higher throughput and correctness.",
    "63b10bca": "Optimizes the ARM NEON parsing kernel.",
    "64213292": "Reverses an inline-related parsing performance regression.",
    "64b62fd3": "Optimizes simd8x64::compress for Apple M1.",
    "66e6d163": "Removes variable-size memmove and memset from to_chars.",
    "69caa477": "Removes UTF-8-check templates and speeds up GCC/Clang CI compilation; the selected runtime Alive2 pair does not cover build time.",
    "781a7d6c": "Removes an unnecessary JSON-builder branch.",
    "78d8acdd": "Uses ARM64 shrn and fcmp to test comparison masks instead of a horizontal reduction.",
    "7dd590c4": "Saves a faster JSON-character utility implementation.",
    "80d26298": "Redesigns visit_primitive for faster string and number handling.",
    "85b91081": "Reverses an ARM word once before extracting bits for a small speed gain.",
    "90adaa4a": "Writes ARM64 structural indexes in smaller groups to reduce wasted work; upstream reports stage-one speedups.",
    "9eccd7b1": "Inlines start_object and start_array.",
    "a198abc4": "Uses integer indexes to reduce cast instructions in structural indexing.",
    "a456d78f": "Forces inlining of more stage-two helpers.",
    "ac78c625": "Changes stage-one scanner helpers to really_inline.",
    "af4ff7cc": "Adds fast get_number_type() API in place of inspecting get_number() output; no direct old API pair exists.",
    "b3072d25": "Eliminates libc memory-function calls from the to_chars hot path.",
    "befa6423": "Speeds up tight loops that call type().",
    "bf67c967": "Inlines JSON character utilities per implementation.",
    "c1805783": "Tunes the unified stage-three/four parser for performance.",
    "d036fdf9": "Reduces iostream header bloat to improve compile time and binary size; the runtime Alive2 pair does not measure either metric.",
    "d5a606b7": "Avoids fractured_json template instantiation in every translation unit to reduce compile time.",
    "de8df0a0": "Combines parser changes with claimed overall and stage-one throughput gains.",
    "eba02dc1": "Introduces runtime implementation dispatch for architecture-specific parsing.",
    "ebe5e1bf": "Reuses parser buffers when requested capacity shrinks.",
    "f0ec2699": "Removes bit_or because of reported poor Windows performance.",
    "f3c3afd4": "Calls templated flatten_bits directly instead of selecting with an if branch.",
    "f902769b": "Forces builder atom templates inline and replaces integer output writer.",
    "fc1ddcd2": "Speeds up existing case-insensitive string comparisons.",
}
unsupported = {"4af7d6f1", "69caa477", "af4ff7cc", "d036fdf9", "d5a606b7"}
excluded = {
    "02b31e2c": "Removes documented overloads without a speed objective.",
    "04a19f98": "Fixes document-stream behavior without a speed claim.",
    "04c41fc7": "Deletes unused overflow helpers.",
    "05145881": "Improves clang-cl build compatibility.",
    "0d81fd28": "Enables sanitizer-clean tests and adjusts tooling.",
    "0fa68d89": "Fixes noexcept and error tests.",
    "11b9cdf4": "Adds standard-library compatibility for constexpr strings.",
    "1211c01c": "Fixes an issue without a documented speed objective.",
    "131675d2": "Fixes document-stream source ranges and chunk reading.",
    "16e23231": "Fixes undefined behavior when iterating an empty object in development checks.",
    "18b9168e": "Deletes an empty branch that the compiler already removes.",
    "1cdcbf79": "Documents and restores legacy 32-bit compatibility.",
    "1ebf115b": "Improves raw-JSON documentation.",
    "218c2740": "Adds legacy libc++ compatibility.",
    "248d4eb2": "Changes initialization syntax for compiler compatibility.",
    "24a185d2": "Changes amalgamation packaging.",
    "27861f63": "Makes padding a constant for API simplification.",
    "28710f8a": "Fixes JsonStream behavior and updates single-header output.",
    "28db262b": "Strengthens amalgamated-header checks.",
    "2956bce0": "Fixes 32-bit compiler warnings.",
    "2b532489": "Adds on-demand JSON path functionality.",
    "2c23b375": "Defines padding on non-x86 platforms for compatibility.",
    "2d84b6f6": "Changes an is() return type to bool.",
    "2dfd49e9": "Re-vendors fast_float to remove old-style casts.",
    "2ff91103": "Removes a thread-disabling build option.",
    "31e8a12e": "Changes error-message return type and implementation location.",
    "3316df91": "Adds an issue regression test and documentation.",
    "352dd5e7": "Changes parse_json return type and error semantics.",
    "35381279": "Removes a fast ASCII trick without a documented performance target.",
    "37520068": "Corrects exception handling for tag_invoke.",
    "376ef7e8": "Adds optional NaN/Infinity serialization.",
    "3c0d032d": "Adds C++20 deserialization functionality.",
    "3c0f5a3f": "Improves documentation.",
    "4058bf7e": "Adds char8_t string accessors.",
    "44b7a714": "Reorganizes architecture bitmanipulation includes.",
    "4894e54d": "Corrects development-check lock behavior.",
    "49faf7af": "Changes simdjson_result implementation ownership without a speed claim.",
    "4c1256ac": "Reorders conditionals for readability without a speed claim.",
    "4d2fc31b": "Fixes an amalgamation demo build.",
    "53b6deae": "Makes error-code handling safer.",
    "5430544b": "Improves documentation.",
    "559493e2": "Fixes auto_parser initialization.",
    "55faf4c5": "Changes documentation recommendation and benchmark references.",
    "5809e51a": "Rejects invalid UTF-8 surrogate pairs.",
    "59025bc8": "Fixes on-demand document error reporting.",
    "5c590b84": "Adds on-demand NDJSON stream functionality.",
    "5c9c1336": "Changes string padding without a documented speed objective.",
    "5e871f67": "Improves documentation.",
    "5ec85197": "Refactors CMake configuration.",
    "6029af75": "Improves fallback implementation without a documented speed objective.",
    "628e4e35": "Fixes an issue without a documented speed objective.",
    "66a28072": "Renames an exception type.",
    "6913ee1a": "Makes builder wrap guards total for correctness.",
    "6bed34ad": "Exposes reset and rewind APIs.",
    "6d7c77dd": "Enables no-exception test configuration.",
    "6dbd15aa": "Moves a number-parsing method without a stated speed objective.",
    "6e618b08": "Improves DOM implementation without a documented speed objective.",
    "708a5687": "Renames inline header layout.",
    "73d7d704": "Changes CMake export configuration.",
    "751dce98": "Updates build and documentation files without a speed claim.",
    "75402483": "Adds a missing table include.",
    "75545ff7": "Fixes dangling-object API use with ref qualifiers.",
    "75acae5c": "Fixes C++20 conversion compatibility.",
    "769528b6": "Fixes a C++20 auto_parser crash.",
    "76aeda6b": "Fixes a temporary-object lifetime issue.",
    "7898234b": "Adds RISC-V platform detection.",
    "7bf391c5": "Fixes a warning and removes a const cast.",
    "7e1893db": "Prefixes internal macros.",
    "7e74d30f": "Adds a SAX benchmark work-in-progress.",
    "806cb391": "Cleans up benchmark and test code.",
    "818c0491": "Changes negative-zero parsing semantics under a feature flag.",
    "836e1fc3": "Unifies result-class API types without a speed claim.",
    "85cadf40": "Adds convenient padded_input API.",
    "85e84fc1": "Refactors padded_string constructors and buffer ownership without a speed claim.",
    "8611e2c0": "Fixes a fractured-JSON issue.",
    "86f8a4a9": "Introduces a temporary performance regression as preparation for later changes.",
    "89f2b634": "Guards benchmark and RISC-V CI configuration.",
    "8c06c443": "Fixes JSONPath out-of-bounds behavior.",
    "8e7d1a5f": "Separates document state from ParsedJson without a speed claim.",
    "8f01cece": "Moves SIMD input helpers into a separate header.",
    "8fd0cdc7": "Avoids early value release in iteration.",
    "90e4a66c": "Adds reflection-serialization use cases.",
    "910f2724": "Adds parser implementation-selection API without a specific speed result.",
    "9239f751": "Adds a research switch to measure a flattening approach, not a shipping optimization.",
    "9572dd09": "Fixes ARM SIMD zero tests under flush-to-zero for correctness.",
    "9606343b": "Moves ParsedJson definitions between compilation units.",
    "977f57fd": "Adds include guards for SIMD UTF-8 code.",
    "9863f623": "Avoids compiler warnings in ISA detection.",
    "9944db6d": "Moves json_type to prevent target-mismatch compilation errors.",
    "99667f7c": "Creates a top-level header for API consistency.",
    "99a153d9": "Hides an exported runtime-dispatch pointer for API cleanup.",
    "9b89b82d": "Adds document-stream slicing and delimiter features.",
    "9bbfd580": "Changes architecture namespaces.",
    "9dfab9d9": "Suppresses a UBSan diagnostic.",
    "a065805b": "Fixes an issue without a documented speed objective.",
    "a3462237": "Fixes document-stream memory safety and correctness.",
    "a4025788": "Fixes a no-thread build attribute.",
    "a442842f": "Changes editor and amalgamation configuration.",
    "a9871920": "Removes an internal macro.",
    "afb36995": "Disables editor-only warnings.",
    "b160cf06": "Fixes VSCode single-header compilation.",
    "b32c72f1": "Adds a research-only structural-parser flag.",
    "b3a22bea": "Fixes a missing-key bug while addressing performance concerns.",
    "b5a328e0": "Changes builtin implementation minimum at build time.",
    "b648a5fc": "Adds std::ranges API support.",
    "b84a4ec2": "Fixes a LoongArch narrowing conversion build failure.",
    "b92cbbe2": "Fixes underflowing-exponent number sign.",
    "b9b20be8": "Adds optional NaN and Infinity parsing.",
    "bb2bc98a": "Fixes an issue without a documented speed objective.",
    "beaa6a9a": "Adds a Windows-header CMake interface library.",
    "c0010f60": "Adds view support to result arrays and objects.",
    "c6f9c93c": "Enforces initialization order for correctness.",
    "c80dda7c": "Fixes libc++ build compatibility.",
    "c892b83c": "Makes on-demand classes usable through result wrappers.",
    "c9179ad8": "Adds count_fields API.",
    "cc6cd4a0": "Adds 32-bit float support to the On-Demand API.",
    "cdb607f2": "Adds comments about an unused attribute.",
    "cf9dbe58": "Improves const correctness.",
    "d0821adf": "Adds string serialization for On-Demand values.",
    "d506af0a": "Adds tests and fixes an issue.",
    "d6e74492": "Fixes C++11 compatibility of a buffer-size definition.",
    "d89046d5": "Reorganizes ARM SIMD helper use without a documented speed claim.",
    "d8f90bdd": "Changes conversion API exception behavior.",
    "da1c35d0": "Fixes an issue in JSON parsing.",
    "dcd0cb80": "Fixes an issue without a documented speed objective.",
    "deefc88b": "Adds incomplete-JSON parsing functionality.",
    "df65de4a": "Fixes a minifier benchmark and presentation.",
    "e0e0aa9e": "Exposes version information in the single header.",
    "e1b1500e": "Exposes a padded-string literal API.",
    "e370a653": "Fixes portability and same-page overread logic.",
    "e7e09e44": "Changes benchmark code only.",
    "e8ff2fa6": "Reorganizes experimental conversion API exposure.",
    "e926b4b3": "Improves floating-point parse accuracy.",
    "e9cdb875": "Fixes key_selector compilation with Clang and no exceptions.",
    "eb93b98d": "Fixes a parsing issue and updates tests.",
    "ec8e6a67": "Fixes compiler warnings and conversion tests.",
    "f46a0f64": "Adds PPC64 platform support.",
    "f75280ac": "Fixes an issue across tests and generated files.",
    "f93fb21c": "Adds a build switch for deprecated APIs.",
    "fb9a689d": "Adds DOM wildcard JSON-path functionality.",
    "fc57c09c": "Adds FracturedJson serialization format support.",
    "feb1e7fe": "Develops on-demand iterator behavior without a stated speed objective.",
}
assert len(performance) + len(excluded) == 191
assert performance.keys().isdisjoint(excluded)
assert unsupported <= performance.keys()

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
lines = [
    "# simdjson fixed-sample metadata screen", "",
    "All 191 previously pending source-gap candidates were screened from exact local "
    "commit messages and changed-path trees. `UNKNOWN` means the historical old/new C++ "
    "source is missing locally, so no Alive2 relation was run. `UNSUPPORTED` marks new-API "
    "or build-time optimizations outside the selected runtime pair. These are intent and scope "
    "classifications, not executed proofs. Upstream performance claims are not local official benchmark reruns.", "",
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
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched Alive2 old/new relation run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/simdjson/simdjson/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (55, 145, 0)
assert (verdicts["NOT_EQUIV"], verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (2, 4, 44, 5)
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(verdicts.values()),
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
