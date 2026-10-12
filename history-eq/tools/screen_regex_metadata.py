#!/usr/bin/env python3
"""Screen regex source-gap sample commits from local Git commit metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/regex"
results = root / "history-eq/results"
ledger_path = results / "regex-pinned-sample-audit.json"
evidence = root / "history-eq/rust/regex/metadata-source-gap-screening.md"

performance = {
    "036ce80c": "Prevents lazy-DFA false quits on ASCII text and slower-engine fallback.",
    "055816db": "Adds a feature to trade runtime DFA speed for lower compile time and binary size.",
    "096a5ea8": "Makes force-inlining optional to reduce compile time and binary size.",
    "09d17668": "Improves the DFA inner loop with local state access and other hot-path changes.",
    "0e84e194": "Uses Unicode instructions more aggressively in matching paths.",
    "10edff6b": "Optimizes anchored-prefix matching that previously took linear time on nonmatching text.",
    "11e395ce": "Avoids storing compiled DFA states twice.",
    "139d6681": "Adds a Boyer-Moore-Horspool literal-search path.",
    "175761e3": "Keeps ASCII text on the lazy DFA for Unicode word boundaries instead of slower fallback.",
    "1e7efa41": "Adds configurable performance features to reduce binary size, compile time and dependencies.",
    "203c509d": "Adds SIMD-accelerated multiple-pattern search via Teddy.",
    "2436434e": "Adds inline annotations to tiny cross-crate LookSet methods.",
    "2c2a3eee": "Makes the fast cache optional to reduce dependencies at a stated runtime cost.",
    "3127e3b5": "Uses a capture-selection knob that the message says halves RegexSet memory use.",
    "31b43983": "Boxes AST variants to reduce memory consumption.",
    "32397821": "Replaces Teddy's slow loop with Aho-Corasick for low match rates.",
    "356d3c95": "Fixes a DFA start-state performance bug.",
    "3616358b": "Adds targeted force-inlining to DFA and automata hot paths.",
    "37b6d318": "Restores reverse-suffix literal search with a guard against quadratic behavior.",
    "39b656a8": "Corrects DFA cache-size accounting to avoid cache thrashing.",
    "3ecb4b1d": "Selects a faster Aho-Corasick automaton.",
    "3fc4d2c8": "Optimizes generated Unicode tables.",
    "3ff6ae19": "Reserves capacity during escape_into to reduce allocations.",
    "43ba6b81": "Extracts stronger literals from unbounded repetitions.",
    "476e82a8": "Adds inlining annotations for small cross-crate syntax helpers.",
    "4e89cbf6": "Avoids eager 256 KiB backtracker allocations for every regex.",
    "50d991ea": "Removes a reverse-suffix optimization whose worst case was quadratic.",
    "553ef80a": "Lowers the backtracking threshold to avoid runs slower than PikeVM and optimize state-table size.",
    "56584ad9": "Accelerates Teddy fingerprint verification; the message reports up to about 10% gain.",
    "57346e01": "Combines alternations of character classes into one cheaper class node.",
    "5bec54ae": "Collapses counted repetitions of empty-only assertions to avoid repeated checks.",
    "608c1915": "Removes a Debug-stringifier dependency to shrink release binaries.",
    "66c4ea61": "Reworks case folding to avoid most binary-search lookups.",
    "66c6ddfa": "Changes Match storage to let LLVM optimize tight loops better.",
    "6770e234": "Uses a faster byte-buffer extension path; an upstream benchmark reported about 2x.",
    "6d2b09ed": "Reduces or eliminates IntervalSet allocations.",
    "77a72f9f": "Avoids repeated memchr calls in the single-literal search path.",
    "78c7cefb": "Shrinks Regex stack size from 856 to 16 bytes with a boxed cache pool.",
    "7f41cd3f": "Tunes the TBM selection heuristic using benchmark results.",
    "83fa9817": "Uses a sparse Aho-Corasick automaton to remove inner-loop case analysis.",
    "84653029": "Prevents unnecessary inlining to save about 12 KiB of binary size.",
    "85ac3852": "Adds a fast path for c_char in the NFA compiler.",
    "8a8d599f": "Broadens reverse-suffix prefilter selection using the speed heuristic.",
    "8fd2bc29": "Truncates backtracking state before clearing to avoid work from earlier long inputs.",
    "918d4a0c": "Skips a redundant DFA pass for anchored patterns with captures.",
    "92e0f220": "Avoids repeated available_parallelism queries during cache-pool setup.",
    "977feeb9": "Initializes PikeVM caches lazily to avoid unused memory allocation.",
    "9c139f4f": "Simplifies Hir::dot construction and avoids spurious allocations.",
    "9ee9943e": "Avoids pointless DFA-to-NFA thrashing when the configured DFA limit is zero.",
    "9f701e32": "Uses vector-call ABI for Teddy lanes, avoiding repeated stack/register copies alongside a UB fix.",
    "9fd5019e": "Elides bounds checks and other overhead from the DFA inner loop.",
    "a30708a7": "Removes a fast-path String allocation alongside expansion-correctness fixes.",
    "ab72269b": "Adds ASCII word-boundary support to the lazy DFA with upstream throughput gains.",
    "ac2d0e1b": "Stops the replacement loop when replacen reaches its limit.",
    "ba9b7867": "Adds explicit literal-sequence optimization routines.",
    "bdea6128": "Force-inlines Program dereference; the message reports a few percent gain.",
    "c21ed55e": "Tunes cache-pool stack count to available parallelism for multithreaded performance.",
    "2aa17277": "Adds a lazy DFA to avoid repeated NFA epsilon-transition work.",
    "31a317ea": "Rewrites literal discovery, adds reverse-suffix search, and reduces match-time pool overhead.",
    "4634fa0a": "Rewrites literal extraction and adds prefilter-size heuristics, while noting some benchmark regressions.",
    "5f32b5aa": "Reduces constant matching overhead through fewer DFA loads, inlining, and compile-time dispatch.",
    "6b869838": "Moves Teddy to aho-corasick's packed searcher; the message reports mixed benchmark changes.",
    "91296ddc": "Ports Teddy to std::arch so runtime feature detection enables it without target flags.",
    "c86c0256": "Adds faster bounded backtracking, cached engines, and literal prefilters.",
    "d98ec1b1": "Adds byte matching and makes the existing DFA give up on excessive cache flushing for better performance.",
    "ccdcf278": "Replaces ad hoc substring search with memchr memmem; upstream benchmarks show mixed speed changes.",
    "cd6f1e2d": "Uses a SparseSet-like SuffixCache to reduce regex compiler allocation and initialization.",
    "cedfc8db": "Moves case folding into automata so matching avoids input folding and can use literal prefilters.",
    "cf1fdb84": "Avoids cloning an empty NamedGroups Arc by adding a compact Empty variant.",
    "cf8acc76": "Stops repeated literal searches after the first match for start-anchored regexes.",
    "cfd887d4": "Removes a free API that encouraged recompiling regexes on every match call.",
    "d2645a7a": "Rewrites the compiler to remove Jump instructions and reduce runtime instruction count.",
    "d5be8391": "Adds Tuned Boyer-Moore as a faster path for some literal searches.",
    "da5490b4": "Optimizes case folding to avoid slow HIR translation on crafted regexes.",
    "ddc3df72": "Uses variable-width DFA encoding to reduce cache memory for large alternations.",
    "e10c9d7b": "Adds capture-state configuration to address RegexSet memory regression.",
    "e25dd950": "Caches the vector used to build DFA state keys and avoids reallocations.",
    "e29b915c": "Allows capture-free PikeVM/backtracker construction to avoid unnecessary memory allocation.",
    "e455d531": "Enables SIMD optimizations automatically on supported stable Rust versions.",
    "e98090db": "Adds a feature to disable literal optimizations as a compile/runtime performance tradeoff.",
    "f2518f3c": "Changes literal representation for expected space efficiency.",
    "f578d74f": "Reduces cache-pool mutex contention in parallel regex search.",
    "f8ebdbbf": "Uses Aho-Corasick for literal alternations to avoid a common performance bug.",
    "f962ddbf": "Adds an AVX2 Teddy search path with an upstream performance gain.",
    "f9fc8614": "Optimizes case folding that was slow in debug builds.",
    "fbe2e164": "Factors alternation prefixes to reduce branching and improve literal extraction.",
    "fce37e49": "Removes redundant branches from the DFA implementation.",
}
excluded = {
    "0086dec6": "Fixes stack overflow when dropping deep HIR trees.",
    "03759543": "Deletes an unmaintained, broken macro crate.",
    "088d7f32": "Documents an already-existing Cow API guarantee without changing runtime behavior.",
    "0ad91256": "Fixes incorrect HIR printing.",
    "0c6dfbc1": "Fixes compilation when a feature is disabled.",
    "10fe722a": "Cleans lint violations.",
    "116343fc": "Changes Debug formatting for character classes.",
    "19172cc2": "Applies formatting style changes.",
    "1a8f5e65": "Adds a use_std feature gate for API configuration.",
    "21eb31e3": "Adds special word-boundary assertion support.",
    "225f8e19": "Disables an unsound literal optimization for partially anchored regexes.",
    "2918aab4": "Exposes lower-level search APIs.",
    "2bab9871": "Extends Replacer API input types.",
    "2ec5229e": "Refactors syntax literal APIs without a performance claim.",
    "2f6f88e6": "Removes nightly SIMD features for compiler compatibility.",
    "3563d734": "Fixes an incorrect capture match.",
    "3feff9e1": "Strengthens sparse-DFA validation.",
    "40585afe": "Fixes incorrect anchored PikeVM search results.",
    "40d883d4": "Fixes incorrect complete-literal matches.",
    "41f14c2d": "Corrects the regex-size error bound for Unicode classes.",
    "5070f758": "Inlines formatting arguments as a style change.",
    "50af5275": "Changes a missing-doc lint attribute.",
    "52ae3dff": "Changes Debug formatting for syntax values.",
    "536cf701": "Removes an HIR API guarantee rather than optimizing a search path.",
    "54e297ce": "Fixes broken negated character classes.",
    "63a26c1a": "Fixes unintended std feature activation in Cargo configuration.",
    "64ad0b61": "Fixes wrong leftmost match offsets from reverse optimizations.",
    "661bf53d": "Fixes skipped matches in reverse-suffix search.",
    "706b07de": "Renames a syntax flag and inverts its spelling.",
    "70c7f575": "Fixes incorrect anchored-search behavior.",
    "7102a057": "Fixes a SIMD fallback import.",
    "73f78890": "Fixes incorrect reverse-inner match offsets.",
    "7536e055": "Removes a redundant borrow expression.",
    "75ba9a43": "Removes superfluous noncapturing HIR groups without a stated speed objective.",
    "79c376fa": "Simplifies HIR construction and fixes empty-alternation semantics.",
    "821a8ea2": "Inlines formatting arguments as a style change.",
    "8c34f41d": "Disables reverse-suffix optimization for correctness under non-leftmost-first matching.",
    "8f5d9479": "Fixes inconsistent find behavior when captures are disabled.",
    "961d6f07": "Adds named-group syntax support.",
    "a3723ac1": "Disables an unsound literal optimization for partially anchored patterns.",
    "baf1e4cb": "Fixes duplicated capture-group behavior.",
    "bd5f2b4b": "Adds HIR classification helpers for callers; no existing call path is optimized.",
    "be9653c9": "Fixes wrong RegexSet matches from literal optimization.",
    "c187cbf0": "Adds a ClassUnicode helper method without changing existing search behavior.",
    "cacdf377": "Improves Unicode-class fuzz input generation and tests.",
    "cb22d85c": "Replaces unsafe-style casts with checked conversions and formatting changes.",
    "d50d31ba": "Fixes literal-classification behavior for empty HIR alternations.",
    "d6b35461": "Fixes lazy-DFA state-ID rollover correctness.",
    "d813518e": "Corrects capture-search end positions.",
    "dbc5e6d9": "Adds special word-boundary syntax support to regex-lite.",
    "ddcbf5b4": "Rejects empty subexpressions the compiler could not handle correctly.",
    "e02952c9": "Reverts an earlier memchr optimization without a new performance claim.",
    "e1685fae": "Changes Match Debug formatting.",
    "e1e36925": "Extends allowed capture-group name syntax.",
    "e4f8117d": "Adds Match convenience methods.",
    "eb950f65": "Reverts a reverse-suffix heuristic that violated search behavior.",
    "edf45e6f": "Fixes reverse-suffix search starting at the wrong position.",
    "f003d725": "Fixes a false-positive prefix-literal match.",
    "f0822447": "Reverts incorrect IntervalSet optimizations after fuzz regressions.",
    "f6559fe2": "Fixes parser panics for invalid AST values.",
    "f9b0ab14": "Adds tests for regex-engine selection.",
    "2d0e77a4": "Separates the macros crate for build compatibility and reorganizes tests and documentation.",
    "4fab6c12": "Adds RE2 and TCL to the benchmark harness without optimizing production matching code.",
    "e040c1b0": "Replaces thread_local to fix memory leaks; its fast path aims to avoid a slowdown, not improve baseline speed.",
}
assert len(performance) + len(excluded) == 151
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger_path.read_text())
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
source = next(r for r in availability["repos"] if r["repo"] == "regex")
source_by_commit = {e["commit"]: e["status"] for e in source["items"]}
items = {e["commit"][:8]: e for e in data["items"]}
assert len(items) == len(data["items"]) == 162

lines = [
    "# regex fixed-sample metadata screen", "",
    "These 151 sampled commits have local commit messages and changed-path trees, but at least one "
    "changed historical source blob is missing. Intent classification is not an Aeneas verdict. "
    f"The {len(performance)} performance commits remain unverified at the public regex scope; "
    "one now has an exact-source internal Aeneas relation, while most lack changed source blobs. "
    "Compile-time, binary-size, memory and runtime improvements are "
    "included when the commit message states them.", "",
    "Reproduce the metadata with `git -C benchmarks/repos/regex cat-file -p <commit>` "
    "and `git -C benchmarks/repos/regex diff-tree --no-commit-id --name-only -r <commit>`.", "",
    "| Commit | Subject | Intent screen | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix, reason in sorted({**performance, **excluded}.items()):
    item = items[prefix]
    assert source_by_commit[item["commit"]] == "missing_changed_blob"
    assert item["classification"] in ("intent_pending", "confirmed_performance", "excluded_non_optimization")
    commit_object = subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-p", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout
    assert "\n\n" in commit_object
    message = commit_object.split("\n\n", 1)[1].strip()
    paths = subprocess.run(
        ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout.splitlines()
    assert item["subject"] in message and paths
    item.update({"reason": reason, "evidence": str(evidence.relative_to(root))})
    if prefix in performance:
        item.update({
            "classification": "confirmed_performance", "checker_verdict": "unverified",
            "checker_status": "not_run",
            "coverage": "commit-message and changed-path screen; historical changed source missing; no Aeneas relation",
        })
        label = "performance; unverified"
        if prefix == "9ee9943e":
            item.update({
                "checker_status": "checked",
                "checker_target": "exact-source helper; Aeneas + Lean",
                "coverage": "exact old/new can_exec bodies; positive-limit equality and zero-limit selection difference; public matching unproved",
                "evidence": "history-eq/rust/regex/9ee9943e/README.md",
            })
            label = "performance; internal relation checked"
    else:
        item.update({"classification": "excluded_non_optimization", "checker_verdict": "not_run"})
        item.pop("coverage", None)
        item.pop("checker_status", None)
        label = "excluded"
    url = f"https://github.com/rust-lang/regex/commit/{item['commit']}"
    lines.append(
        f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | "
        f"{label} | {reason} | {len(paths)} |"
    )

screens = Counter(e["classification"] for e in data["items"])
verdicts = Counter(e.get("checker_verdict") for e in data["items"] if e["classification"] == "confirmed_performance")
assert (screens["confirmed_performance"], screens["excluded_non_optimization"], screens["intent_pending"]) == (5 + len(performance), 6 + len(excluded), 0)
assert (verdicts["unverified"], verdicts["verified_equal_partial"], verdicts["unsupported"]) == (2 + len(performance), 1, 2)
data["counts"] = {
    "confirmed_performance": screens["confirmed_performance"],
    "excluded_non_optimization": screens["excluded_non_optimization"],
    "intent_pending": screens["intent_pending"],
    "outcome_labeled_optimizations": sum(verdicts.values()),
    "pending_outcome_labels": 0,
    "verified_inequal": verdicts["verified_inequal"],
    "verified_equal_partial": verdicts["verified_equal_partial"],
    "unverified": verdicts["unverified"],
    "unsupported": verdicts["unsupported"],
}
ledger_path.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["counts"], sort_keys=True))
