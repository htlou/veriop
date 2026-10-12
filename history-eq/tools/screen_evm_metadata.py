#!/usr/bin/env python3
"""Screen EVM source-gap candidates from local commit metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/evm-semantics"
ledger = root / "history-eq/results/evm-semantics-pinned-sample-audit.json"
evidence = root / "history-eq/k/evm-semantics/metadata-source-gap-screening.md"

# UNKNOWN means K source was changed but the exact historical files are unavailable.
# UNSUPPORTED means the changed optimization is in Python/build/test orchestration.
performance = {
    "0a98f608": ("UNSUPPORTED", "Adds parallel proof strategies and worker options in Python."),
    "0f57d7e3": ("UNSUPPORTED", "Runs Foundry proofs in parallel from the Python proof driver."),
    "13cfef54": ("UNKNOWN", "Optimizes K opcode summary rules and their preconditions."),
    "145f4d4b": ("UNSUPPORTED", "Precompiles proof definitions in the build and optimizer scripts."),
    "1683cd40": ("UNSUPPORTED", "Caches precompiled K definitions for integration tests in Python."),
    "20a29241": ("UNSUPPORTED", "Avoids launching KoreServer for already-passing proofs and changes proof-suite orchestration."),
    "284ae464": ("UNSUPPORTED", "Speeds up the Python gst_to_kore conversion path."),
    "2aaec12b": ("UNSUPPORTED", "Builds proof graphs directly and skips generating spec modules in Python."),
    "306ef67f": ("UNSUPPORTED", "Optimizes Python test-harness lookups; its separate K fallback-rule change is not the speed path."),
    "31bd3d88": ("UNSUPPORTED", "Runs large lemma proof-suite jobs eight at a time in Python."),
    "38893bd2": ("UNKNOWN", "Removes a looping K lemma and changes the proof simplification budget."),
    "3ff57a45": ("UNSUPPORTED", "Shares one compiled verification target across five proof test suites."),
    "426cb635": ("UNSUPPORTED", "Reuses a KoreServer between proof initialization and execution in Python."),
    "472b5afd": ("UNKNOWN", "Adds generated K opcode optimizations and an optimizer proof suite."),
    "4e6b9581": ("UNKNOWN", "Prioritizes and adds K bitwise simplification lemmas for proof search."),
    "50a77a3d": ("UNSUPPORTED", "Reuses MCD Vat proof claims across test specifications."),
    "5e7a5937": ("UNSUPPORTED", "Adds a Python option to optimize proof graphs."),
    "7e99cf74": ("UNKNOWN", "Simplifies K semantic rewrites while preserving definedness."),
    "876e4a69": ("UNKNOWN", "Adds K range and writeRange simplification rules."),
    "8a2ba8b7": ("UNSUPPORTED", "Builds K definitions at optimization level O1 or higher."),
    "8f9b0063": ("UNSUPPORTED", "Reuses dependency claims before discharging KClaim proofs in Python."),
    "9d3c329b": ("UNSUPPORTED", "Increases parallelism for CI proof tests."),
    "a225bcb3": ("UNSUPPORTED", "Streamlines Python GST interpretation through the upstream llvm_interpret API."),
    "a4d59d37": ("UNKNOWN", "Generates optimized K opcode-summary rules for execution."),
    "b460c098": ("UNKNOWN", "Adds K simplification rules and definedness hints to improve Booster coverage."),
    "b79c1d8d": ("UNKNOWN", "Tunes K rule matching and definedness hints for better Booster execution."),
    "b7ef38f6": ("UNSUPPORTED", "Switches the Python proof driver to RPC graph exploration and increases CI parallelism."),
    "bf5a2472": ("UNKNOWN", "Integrates optimized opcode-summary K definitions into execution targets."),
    "c6e01ac7": ("UNKNOWN", "Improves bool2Word K simplification lemmas for proof reasoning."),
    "c7f70994": ("UNSUPPORTED", "Reduces Python summarizer proof depth and skips expensive CI cases."),
    "d2337fe5": ("UNSUPPORTED", "Uses proof cut rules and reorganizes optimization proof orchestration."),
    "d6d151b8": ("UNKNOWN", "Adds a K chop simplification lemma to eliminate a spurious proof branch."),
    "dca94263": ("UNKNOWN", "Avoids generating cell fragments in K execution rules."),
    "f01c1964": ("UNSUPPORTED", "Adds Python proof-graph node merging and anti-unification."),
    "f5ffb680": ("UNSUPPORTED", "Constructs per-method proof graphs directly instead of round-tripping through K claims."),
    "fb58d3b3": ("UNKNOWN", "Moves a K rule's linearity check into a side condition so Booster avoids matcher fallback."),
}
excluded = {
    "01598f74": "Implements EIP-7918 blob-fee semantics.",
    "03d2542a": "Fixes checkCall branch exploration.",
    "047f2f02": "Refactors EVM types and removes old lemmas without a stated speed objective.",
    "04a7d29e": "Changes proof digest identifiers and display.",
    "051c16ca": "Renames the kontrol module for package compatibility.",
    "0957714a": "Implements EIP-7702 SetCode transactions.",
    "0a8eb3a8": "Updates K dependency versions and release configuration.",
    "0b6d468e": "Refactors CLI options and help text.",
    "0f62d621": "Fixes compilation options, rebuild triggers, and proof tests.",
    "123f3f9a": "Adds infinite-gas test configuration and a cheatcode.",
    "134a57d8": "Implements the SLOTNUM opcode.",
    "14d739e5": "Removes bash dependencies and restructures command plumbing.",
    "183e857b": "Refactors EIP-4844 blob-transaction semantics.",
    "1e1449c6": "Refactors claim-generation helpers without a speed claim.",
    "1e74cfb0": "Adds an automatic gas-abstraction feature without a stated performance result.",
    "1ebb5f33": "Changes proof-test logging and verbosity.",
    "1ebcd703": "Extends tuple encoding for dynamic structures.",
    "1f9f6dda": "Exposes a configurable SMT tactic rather than changing an existing proof path.",
    "20b39d1e": "Adds a hardfork schedule and fixture support.",
    "21617b67": "Changes conformance-test selection and output.",
    "22d61dee": "Defines a hardfork and updates its test fixtures.",
    "24787fb5": "Implements the EIP-4844 point-evaluation precompile.",
    "2709f494": "Updates Python and K dependency pins.",
    "2820bd87": "Changes Foundry command options and output paths.",
    "286ce660": "Fixes the initial storage state for Foundry contracts.",
    "295280c7": "Uses full method signatures to disambiguate selectors.",
    "2bc6e6f2": "Adds word constants for downstream engagements.",
    "2fb85fbf": "Implements EIP gas-accounting semantics.",
    "353c22d7": "Exposes a fail-fast proof-control option.",
    "3540f86e": "Updates dependency pins.",
    "3ab9ae7a": "Changes Nix release automation.",
    "3d4dde42": "Defines gas2Int for additional gas terms.",
    "3ee4b387": "Imports more proof specifications and enables their tests.",
    "3f688584": "Adds cheatcode and serialization features in a mixed cleanup.",
    "40854311": "Removes indirect proof claims without a stated speed objective.",
    "423b4bbe": "Adds package version and release files.",
    "4323bd52": "Updates failing-test lists and CI test coverage.",
    "4709f669": "Adds opcode gas-cost summarization and fixes its analysis branches.",
    "496cb34b": "Implements EIP-6780 SELFDESTRUCT semantics.",
    "4a69051f": "Fixes arithmetic proof specifications.",
    "4bb1e686": "Redesigns precompiled-account semantics without a speed objective.",
    "4c21a832": "Adds a Foundry proof-start option and associated graph behavior.",
    "4e903475": "Fixes two functional proof suites and their Booster configuration.",
    "4ecbb98f": "Updates plugin dependency pins.",
    "4fad7d99": "Implements the Shanghai hardfork schedule.",
    "51aaf140": "Fixes release-tag pushing.",
    "5206e149": "Fixes terminal-node removal in a Foundry command.",
    "5401023b": "Updates dependency pins.",
    "5672e27d": "Adds a release action for proof output.",
    "5a72ed6b": "Implements EIP-7623 calldata cost semantics.",
    "5ab75200": "Moves account-access logic for semantic correctness without a speed claim.",
    "61b8f9e8": "Implements EIP-7610 contract-creation behavior.",
    "638dd0b9": "Refactors CLI argument modules.",
    "6b2b9aa9": "Adds Foundry examples and tests.",
    "6b651542": "Updates plugin dependency pins.",
    "70aa404f": "Repairs proof-suite coverage and removes unused tests.",
    "710742cb": "Refactors summarize command options.",
    "72767047": "Fixes repeated automatic gas abstraction.",
    "7475ca96": "Fixes definedness of gasExec for exponentiation.",
    "749c7552": "Changes which infinite-gas rules compile for LLVM, without a speed claim.",
    "77073978": "Adds test selection by method signature.",
    "776867c0": "Changes proof digests and version handling.",
    "7c1de748": "Implements the BLOBHASH opcode.",
    "7efaf7ad": "Changes proof-control defaults.",
    "7f7d1ef4": "Clarifies CLI documentation for proof depth limits.",
    "7fb1f9af": "Implements BLS12-381 precompiles.",
    "82abf6c6": "Implements the EIP-7825 transaction gas cap.",
    "861fbc39": "Updates EIP-7691 blob-throughput schedule values.",
    "88c67356": "Changes a proof subsumption option default without a speed claim.",
    "8f4a32ad": "Restructures failing-test lists.",
    "93e5e068": "Fixes example proof specifications.",
    "9a3ccc44": "Moves CI proof jobs to faster hardware rather than optimizing program code.",
    "9a3fa78f": "Updates plugin dependency pins.",
    "9a78a3aa": "Enables more proofs and fixes prover test configuration.",
    "9d864f41": "Deduplicates gas-related rules without a stated speed objective.",
    "9ddceb22": "Fixes Foundry name collisions with K internals.",
    "9e88278f": "Adds Kontrol lemmas and removes redundant preconditions for proof coverage.",
    "a4afc05f": "Makes the buffer function total and removes a bottom rule.",
    "a68c97a2": "Fixes K version-file synchronization.",
    "a7e1c8b1": "Adds Foundry load/store cheatcodes.",
    "a859c1a2": "Adds backend logging and per-claim filtering options.",
    "ab2e2bf1": "Refactors gas functions without a speed claim.",
    "ad28202d": "Expands GeneralStateTests and fixes EIP behavior.",
    "b03e5291": "Improves proof-node printing and tests BMC output.",
    "b2336fc6": "Moves storage-access logic back into gas calculation.",
    "b3de3420": "Updates the conformance-test suite.",
    "b50a2468": "Adds a no-gas semantic mode and proof feature, not an old-path speed claim.",
    "ba06470f": "Fixes GitHub Pages deployment.",
    "ba56ecb1": "Adds rule-list display and break-on-call behavior.",
    "c0e85ade": "Adds a setGas cheatcode.",
    "c12a11dd": "Updates dependency pins.",
    "c6005650": "Adds command support for proving individual claims.",
    "cc1f5770": "Renames a compiler command flag.",
    "cc3c92b6": "Updates conformance tests and CI setup.",
    "cd2e87a3": "Adds Boolean, set, and map lemmas for proof coverage.",
    "ce2089ab": "Adds custom RPC-server and LLVM-library options.",
    "ce9febe2": "Updates dependency pins.",
    "d1892e9e": "Adds backend-comparison tooling and documentation.",
    "d2b9df66": "Updates K dependency pins.",
    "d66996a4": "Removes the Java backend and its obsolete tests.",
    "d81886ef": "Updates dependency pins and CI configuration.",
    "db7d25e3": "Standardizes opcode-summary labels.",
    "dc7fb856": "Fixes jump-destination handling of PUSH immediate data.",
    "e128e473": "Implements the CLZ opcode.",
    "e77b5461": "Fixes a renamed Nix package reference.",
    "ef924081": "Implements EIP-4844 gas accounting.",
    "efeb85f5": "Changes argparse defaults.",
    "f25ce4a3": "Implements an infinite-gas semantic mode.",
    "f326cfb1": "Consolidates concrete-rule specifications without a speed claim.",
    "f5c206d1": "Exposes K definitions for imports.",
    "f7435bab": "Fixes transaction-loading semantics.",
    "fc0b16a6": "Adds golden proof-graph tests.",
}
assert len(performance) + len(excluded) == 148
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 152
lines = [
    "# EVM fixed-sample metadata screen", "",
    "All 148 previously pending source-gap candidates were screened from local commit "
    "messages and changed-path trees. This is optimization-intent and checker-scope evidence, "
    "not a before/after proof. Exact changed historical source is unavailable for each case.", "",
    "Reproduce with `git -C benchmarks/repos/evm-semantics cat-file -p <commit>` and "
    "`git -C benchmarks/repos/evm-semantics diff-tree --no-commit-id --name-only -r <commit>`.", "",
    "| Commit | Subject | Classification | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix in sorted(performance.keys() | excluded.keys()):
    item = items[prefix]
    assert item["source_status"] == "missing_changed_blob"
    assert item["screen"] in ("intent_pending", "confirmed_optimization", "excluded_non_optimization")
    obj = subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-p", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout
    assert "\n\n" in obj and item["subject"] in obj.split("\n\n", 1)[1]
    paths = subprocess.run(
        ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout.splitlines()
    assert paths
    if prefix in performance:
        verdict, reason = performance[prefix]
        item.update({
            "screen": "confirmed_optimization", "checker_status": "not_run",
            "verdict": verdict, "reason": reason,
            "coverage": "historical commit message and changed-path checker-scope screen; no old/new K relation run",
            "evidence": str(evidence.relative_to(root)),
        })
        label = f"performance; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/runtimeverification/evm-semantics/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (40, 112, 0)
assert (verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (4, 14, 22)
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
