#!/usr/bin/env python3
"""Screen EverParse fixed-sample source gaps using pinned Git metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/everparse"
ledger = root / "history-eq/results/everparse-pinned-sample-audit.json"
evidence = root / "history-eq/fstar/everparse/metadata-source-gap-screening.md"

performance = {
    "041c3a7c": ("UNKNOWN", "Adds a faster constant-int32 validator."),
    "0598aff6": ("UNKNOWN", "Avoids intermediate C compound literals in LowParse extraction."),
    "09987d94": ("UNSUPPORTED", "Avoids no-op and always-false AST nodes during CDDL parsing, including an OCaml parser."),
    "10f3b306": ("UNSUPPORTED", "Makes Pulse static-backend C stream primitives static inline through generated headers."),
    "1d899755": ("UNKNOWN", "Inlines constants into validator_max_length."),
    "1df5035c": ("UNKNOWN", "Avoids extracted GC bignums in Pulse serializers."),
    "20a9b7d3": ("UNSUPPORTED", "Adds a missing inline_let hint in the OCaml F* generator."),
    "3095d52d": ("UNKNOWN", "Reduces solver fuel in an inefficient vlarray_nth proof."),
    "3394b156": ("UNKNOWN", "Adds extraction inlining before CBOR re-export."),
    "347d4d46": ("UNKNOWN", "Optimizes 3D interpreter join functions."),
    "376403df": ("UNKNOWN", "Marks additional Pulse combinators inline for extraction."),
    "407b99f1": ("UNKNOWN", "Backports CBOR/CDDL proof-engineering and solver-option tuning."),
    "41d42977": ("UNSUPPORTED", "Adds extraction inlining to kinds emitted by the OCaml generator."),
    "45bc9fd3": ("UNSUPPORTED", "Compares serialized CBOR payload bytes instead of descending recursively across F* and generated Rust."),
    "4687db55": ("UNSUPPORTED", "Removes extraction inlining from intermediate parsers in the OCaml generator."),
    "49a78091": ("UNKNOWN", "Avoids a spurious branch when a validator skips a buffer."),
    "4e5f361c": ("UNKNOWN", "Enables argument-removal optimization for aliased types."),
    "5ec871e4": ("UNKNOWN", "Revises interpreter global bindings with reported speedups."),
    "6f8ead06": ("UNKNOWN", "Simplifies extracted bounded-integer readers with read_inline_synth."),
    "7059ec7a": ("UNKNOWN", "Addresses a bitwise-not performance issue in Z3 test generation."),
    "7c3cd8ce": ("UNKNOWN", "Avoids polymorphism in LowParse test code."),
    "7fdb5b4f": ("UNKNOWN", "Uses abstract choices to speed up positive ELF witness generation."),
    "8733d0cd": ("UNSUPPORTED", "Changes OCaml generator output to improve sum-accessor verification time."),
    "8767c2f4": ("UNKNOWN", "Avoids fully normalizing ancillary environments during proof construction."),
    "8884d379": ("UNSUPPORTED", "Optimizes rewriting and length computation in the OCaml generator."),
    "8e2e0ef5": ("UNKNOWN", "Splits a large Pulse serializer proof to reduce typechecking from over an hour to about nine minutes upstream."),
    "9be04703": ("UNSUPPORTED", "Avoids deeply nested conditionals in generated probe-action handling."),
    "ab84de34": ("UNKNOWN", "Avoids generating needless instantiated types and mangled names."),
    "af47bd1d": ("UNKNOWN", "Adds attributes to reduce F* coerce normalization cost."),
    "b1dd381b": ("UNKNOWN", "Avoids table-derived TDef ancillary generation."),
    "bfe424ef": ("UNSUPPORTED", "Avoids spurious 3D Makefile rebuilds."),
    "cb3e4211": ("UNKNOWN", "Fixes exponential Pulse verification time as named-type nesting grows."),
    "da594599": ("UNKNOWN", "Avoids repeated parser-kind queries."),
    "de81a0f3": ("UNKNOWN", "Enables optimize_let_vc with targeted F* unfold hints."),
    "f5a9ee01": ("UNSUPPORTED", "Emits additional static-inline C definitions in EverParse.h."),
    "f813cc3d": ("UNKNOWN", "Avoids branching on always-successful action results."),
}
excluded = {
    "00d9cea5": "Changes extraction flag selection without a stated performance objective.",
    "010725d0": "Adds a snapshot-diff build rule.",
    "0360717c": "Disables a parser-kind optimization because its generated code fails verification.",
    "06c2a261": "Updates CBOR/COSE snapshots.",
    "0739c1ef": "Rechecks witnesses for correctness despite a stated performance cost.",
    "08a0899c": "Avoids inlining type names without a stated performance objective.",
    "0a978ed1": "Changes snapshot extraction-test verification grouping.",
    "0ab3698a": "Avoids OCaml variable shadowing.",
    "0e12609d": "Updates a COSE snapshot.",
    "0fe346f6": "Updates a snapshot.",
    "10f19bfb": "Fixes a C compiler test and KreMLin bug.",
    "1318fd68": "Adds new bounded-int validators rather than optimizing an existing path.",
    "13e89b4b": "Adds an unfinished Rust snapshot.",
    "154bf2a4": "Prepares interpreter disjointness optimization without applying it.",
    "1aa50c81": "Adds a tuple combinator without a speed claim.",
    "1c616e97": "Restores an error-handler typedef for Pulse compatibility.",
    "20cc14a2": "Removes an unsound size assumption.",
    "224afa77": "Avoids generated C function-pointer variables for code correctness.",
    "23ab9470": "Replaces admits with proofs.",
    "244b5ede": "Removes an unsound CDDL size assumption.",
    "2566ef67": "Refactors snapshot Makefile rules without a speed objective.",
    "2629c9a4": "Removes FStar.Bytes dependencies in new generated Pulse code.",
    "27701bf4": "Changes the Windows F* build source.",
    "27f26688": "Adds a new Pulse accessor combinator.",
    "2a6d52a2": "Changes generator pattern matching without a stated speed objective.",
    "2a9597b8": "Adds an explicit synthesis step to avoid a soundness issue.",
    "2dca6890": "Removes unsound streaming-validator assumptions.",
    "30caf10d": "Updates a COSE snapshot.",
    "33e603c3": "Updates CBOR/COSE snapshots.",
    "3b3f499c": "Adds graceful list/array writer generation.",
    "3e3632e4": "Adds Pulse strong-validator generation and context changes.",
    "3edddc5d": "Updates a COSE snapshot.",
    "4321d9ec": "Makes unspecified extraction improvements without a speed claim.",
    "43562504": "Replaces an invariant admit with a proof.",
    "43d006b0": "Replaces assumed invariants with lemmas.",
    "47790b2b": "Updates a COSE snapshot.",
    "4a25ab66": "Reverts a CBOR/COSE snapshot.",
    "4a8d1893": "Updates a COSE snapshot header.",
    "4ad1c0c7": "Adds parser/free generation for a new list case.",
    "4bd976b6": "Removes unsound serializer size assumptions.",
    "4c4e91b0": "Moves interop tests into a subdirectory.",
    "4e3bc623": "Updates CBOR/COSE snapshots.",
    "523065f1": "Adds transparent vmatch proof constructs without a stated speed objective.",
    "54219dab": "Makes complete-consumption wrappers opt-in while preserving default generated code.",
    "579f1815": "Fixes generated local names for error handling.",
    "58d706be": "Reorders Pulse friend declarations for compiler compatibility.",
    "5d5d8d4a": "Makes unspecified struct changes without a speed objective.",
    "5d83882f": "Improves validation tests.",
    "5da1b69a": "Adds an error-handler typedef to the generated header.",
    "5db5922c": "Updates a CBOR snapshot.",
    "5df881d9": "Adds a depth-indexed CBOR match predicate.",
    "5f3d453b": "Pins a release commit instead of a branch.",
    "62e30568": "Adjusts proofs for another F* branch without a speed claim.",
    "65aeff4b": "Updates a COSE snapshot.",
    "6807b3ba": "Fixes a COSE snapshot path.",
    "697ea117": "Updates generated C type names for compatibility.",
    "6be030bb": "Adds admits to recover proofs under another solver branch.",
    "6c24d60a": "Updates a COSE snapshot.",
    "6d8f4123": "Adds new VCList writer and size functions.",
    "6faaef0e": "Separates CBOR snapshot compilation from extraction without a stated speed objective.",
    "757f135c": "Adds transparent proof predicates for new sum cases.",
    "769d3b11": "Fixes extraction compatibility in Pulse bit-sum code.",
    "76e6ea5d": "Reverts temporary CI branch selection.",
    "76ec7cf7": "Updates a COSE snapshot.",
    "77bdfa1a": "Records an extraction failure work-in-progress commit.",
    "77c67c0b": "Moves handwritten COSE C into a snapshot.",
    "78a2ad4d": "Adds a benchmarking tool only.",
    "7a60f009": "Adds Z3 test generation support to Pulse.",
    "7b187458": "Fixes release line endings.",
    "7ea374fa": "Restricts field_pos_32 to the supported buffer backend.",
    "807f6f4b": "Allows benchmark compiler override without optimizing parser code.",
    "8096afec": "Records an ifthenelse branch trace for testing.",
    "81144fe5": "Fixes generated header inclusion paths.",
    "844354b4": "Reverts temporary Windows F* build branch selection.",
    "88052bff": "Changes release branch metadata.",
    "8bcc34c8": "Makes an unspecified proof improvement without a measured speed objective.",
    "90dd373a": "Updates a COSE snapshot.",
    "93289eeb": "Moves COSE snapshots into a C directory.",
    "94039d0f": "Temporarily selects alternate F*/KreMLin branches in CI.",
    "94686718": "Fixes F* verification failures.",
    "94945563": "Renames a generated local to avoid collisions.",
    "9627d980": "Strengthens Pulse loop proof state.",
    "97fbb866": "Adds unit tests and benchmark coverage only.",
    "983887ff": "Changes snapshot build ordering.",
    "99552c02": "Reserves a ghost binder for correctness.",
    "99c9adb1": "Replaces admitted proof wrappers with helpers.",
    "99d45e23": "Adds Rust snapshot output to a Makefile target.",
    "99f63372": "Updates a COSE snapshot.",
    "9db8f431": "Adds serialization benchmark coverage.",
    "a2b0051e": "Updates CBOR/COSE C snapshots.",
    "a5ac23b1": "Avoids catch-all patterns in a Z3 generator without a speed claim.",
    "a7cfb1f6": "Reverts a parser type change.",
    "ab10a2d9": "Reduces a snapshot's build dependency, not a runtime path.",
    "ae285700": "Disables unsafe array-validation optimization when actions are present.",
    "aed125c8": "Adds PulseParse bounded-integer validators.",
    "aee8523e": "Downloads a Windows clang-format snapshot.",
    "af3a2873": "Fixes implicit-sum extraction.",
    "b20d71eb": "Improves generator unification without a stated speed objective.",
    "b37f2453": "Avoids 16-bit bitfield promotion for type correctness.",
    "b5d231fa": "Fixes a race on temporary KreMLin files.",
    "b62ec5c5": "Rejects unsupported non-Pulse if-then-else generation for correctness.",
    "ba0e7bc0": "Updates a snapshot and fixes probe-name collisions.",
    "bad3df13": "Fixes extern/static Pulse stream linkage and trust assumptions.",
    "bb3c422a": "Updates a COSE snapshot.",
    "bb96d279": "Adds transparent vmatch constructs without a stated speed objective.",
    "beae3ff3": "Restores iterators in a COSE snapshot.",
    "bf665993": "Fixes benchmark Makefiles.",
    "bf82288a": "Updates CBOR/COSE snapshots.",
    "c37dfc70": "Renames generated validator status locals for wrapper correctness.",
    "c3d13e58": "Adds owned-representation parser/free generation for new sum types.",
    "c6d1aea8": "Updates a COSE snapshot.",
    "c9fe2bee": "Adds bounded-vldata safe writer generation.",
    "cbea7541": "Updates CBOR/COSE snapshots.",
    "ce369036": "Adds QCBOR dependency and benchmark build rules.",
    "ce846a5a": "Ports Pulse subdirectory tests and fixes copy-buffer reuse.",
    "cf6cc8f1": "Removes an unsound CBOR length assumption.",
    "cfad0318": "Moves runtime bundle declarations to the public header.",
    "d055eafe": "Repairs a recursive CBOR proof's decreases clause.",
    "d42a3cef": "Separates proof normalization from extraction inlining for correctness.",
    "d60722a4": "Updates a CBOR snapshot.",
    "d68af3f6": "Adds new Pulse leaf-reader generation.",
    "d85390fb": "Adds enum safe-writer generation.",
    "d8ab31ff": "Preserves existing parser syntax for compatibility.",
    "dafcf0bd": "Updates benchmark inputs only.",
    "db25d9f4": "Documents required Pulse client primitives.",
    "dbcdf57b": "Proves recursive CBOR serializer termination.",
    "dc27c04a": "Updates a snapshot.",
    "dd7ece74": "Names an error-handler typedef in generated headers.",
    "ddd5e3ae": "Updates benchmark fixtures.",
    "ded2496a": "Fixes a Windows build-script error.",
    "e0f01d82": "Fixes array parsing blocked by compile-time specialization.",
    "e44540af": "Updates Rust documentation snapshots.",
    "e4ccd208": "Changes enum inlining and SMT context without a stated speed objective.",
    "e4cd9b75": "Updates generated Rust snapshot after extraction changes.",
    "e7301636": "Removes an unused F* plugin after generator replacement.",
    "e8b4736a": "Updates a snapshot.",
    "e9116020": "Backports stricter-typing coercions.",
    "ea5e6961": "Updates CBOR/COSE snapshots.",
    "eaf5f751": "Imports LowParse changes without a specific speed objective.",
    "eb7a3909": "Renames generated position locals.",
    "ebac216d": "Replaces a KreMLin header dependency for packaging.",
    "ecdf4f49": "Adds copyful parsers for new bounded lists.",
    "ed220adb": "Adds a test case for identical branches.",
    "f59b8920": "Updates a CBORDet snapshot.",
    "f87bb862": "Makes the extern backend extractable to C.",
    "fae66fe3": "Adds bounded-integer readers and tests.",
    "fd5ac317": "Renames generated length-check locals.",
    "fdf2de4e": "Updates a Windows clang-format version.",
    "fe008b00": "Updates a COSE Rust snapshot.",
}
assert len(performance) + len(excluded) == 185
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
initial_exclusions = {"209556b9", "2f432b73", "437b36ac", "568fa849", "6b4e888b", "b49591ff", "d43d361d"}
pending_source_gaps = sorted(e["commit"][:8] for e in data["entries"]
                             if e["source_status"] == "missing_changed_blob" and e["commit"][:8] not in initial_exclusions)
assert set(performance) | set(excluded) == set(pending_source_gaps)
lines = [
    "# EverParse fixed-sample metadata screen", "",
    "All 185 previously pending source-gap candidates were screened from exact local Git commit "
    "messages and changed-path trees. `UNKNOWN` means the exact historical F* source is missing, so no old/new "
    "relation was run. `UNSUPPORTED` marks OCaml generators, generated Rust, or C linkage/build behavior outside the selected "
    "F* checker. These are metadata and checker-scope classifications, not proofs or benchmark reruns.", "",
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
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched F* old/new or generated-output relation run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/project-everest/everparse/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (41, 159, 0)
assert (verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (1, 27, 13)
data["summary"] = {"confirmed_optimizations": screens["confirmed_optimization"],
                   "checked_optimizations": sum(verdicts.values()), "pending_checker_optimizations": 0,
                   "excluded_non_optimizations": screens["excluded_non_optimization"],
                   "pending_intent_screening": screens["intent_pending"],
                   "verified_inequal": verdicts["NOT_EQUIV"], "verified_equal_partial": verdicts["EQUIV_PARTIAL"],
                   "unverified": verdicts["UNKNOWN"], "unsupported": verdicts["UNSUPPORTED"]}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
