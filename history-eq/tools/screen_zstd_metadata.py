#!/usr/bin/env python3
"""Screen zstd source-gap optimization intent from local commit metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/zstd"
results = root / "history-eq/results"
ledger = results / "zstd-pinned-sample-audit.json"
evidence = root / "history-eq/c/zstd/metadata-source-gap-screening.md"

performance = {
    "007c1c6f": "Claims a compression-ratio improvement in the compressor.",
    "05dffe43": "Fixes tree state and separately disables one-thread MT work to save memory and runtime.",
    "07cd78d3": "Adds a four-way AArch64 NEON sequence-conversion path.",
    "0dbf2874": "Speeds compression level 1 on 256 KiB inputs.",
    "1005fc12": "Reduces memory use at high compression levels on 32-bit targets.",
    "15768cab": "Fixes streaming edge cases and improves streaming memory use.",
    "1c62e714": "Writes initial split statistics directly to the destination fingerprint.",
    "1f44b3f7": "Adds a fast compression mode.",
    "1f6d6815": "Specializes a sequence-check-free compressor loop; upstream reports 4% faster compression.",
    "220abe6d": "Avoids copying a borrowed dictionary into memory.",
    "258c0623": "Extracts a specialized single-segment variant of the double-fast matcher.",
    "27498ff0": "Moves normalized counts off a stack high point in CTable construction.",
    "274f5991": "Uses GCC packed accesses instead of memcpy where the author expects better code generation.",
    "2849f3a5": "Adds an eight-way AArch64 SVE2 sequence-conversion path.",
    "287b7d96": "Claims a high-compression speed improvement.",
    "29157320": "Improves the optimal external-dictionary block compressor.",
    "2a62f48b": "Releases worker input buffers earlier to reduce peak multithread memory.",
    "2c2c9e7d": "Changes decompression code for possible GCC 11 code-generation improvements.",
    "2ddef7c8": "Writes advanced hashes on long matches to improve compression ratio.",
    "2fbb1d10": "Shrinks bit tables by about 1.7 KiB of read-only data.",
    "30c76989": "Avoids temporary multithread compression buffers when destination space is sufficient.",
    "338533f7": "Improves optimal-parser price-function initialization.",
    "34ba1443": "Changes a match boundary to improve low-level compression ratio.",
    "37226c1e": "Handles the first compression chunk in one call and removes recombination work.",
    "38654988": "Includes a compression hot-path change under an upstream speed-improvement commit.",
    "4616fad1": "Removes an input buffer from multithread streaming compression.",
    "48572f52": "Rewrites a compressor loop to retain auto-vectorization.",
    "48ef15fb": "Uses dictionary size when selecting streaming compression parameters.",
    "49cf8805": "Approximates FSE encoding costs to choose a lower-cost mode.",
    "4b7f45cb": "Extracts the compressor hot loop into its own function.",
    "61e16ce0": "Claims a small-file compression optimization.",
    "64efba4c": "Adds software pipelining and prefetch to fast dictionary matching.",
    "6755baf9": "Aligns the decoder hot loop; upstream reports about 1.2% decompression speedup.",
    "68dfd14a": "Disables a slower non-SIMD row match finder in the Linux kernel build.",
    "6a3c34aa": "Estimates Huffman and FSE symbol costs for optimal parsing.",
    "6a7ede3d": "Reuses a destination buffer to reduce decompression-context size.",
    "6ae44c0d": "Advances long-match index lookup; upstream reports about 0.5% speedup.",
    "70c80e19": "Fixes greedy matcher performance instability.",
    "72019806": "Prefetches match data on AArch64.",
    "76175898": "Uses a simple FSE counter to reduce stack memory.",
    "7b9a755a": "Removes a hash-chain limit to improve compression ratio.",
    "7cbb8bbb": "Tunes cover dictionary epochs for a small ratio improvement.",
    "802ea885": "Outlines fast/dfast variants to reduce code size and excessive PARISC stack use.",
    "80bc12b3": "Adds a software-pipelined fast compressor.",
    "812e8f2a": "Optimizes the decode path; upstream reports 7.5% average speedup on Silesia.",
    "82b0cd84": "Optimizes ZSTD_wildcopy.",
    "863ec40f": "Claims a minor compression speed improvement.",
    "899f2a29": "Selects the faster binary-tree optimal parser variant.",
    "8c53e526": "Fixes repeated-compression workspace reuse performance.",
    "8d31e8ec": "Skips an unproductive sub-block compression cycle.",
    "8e440046": "Removes a scalar summary hot-loop data dependency.",
    "968f2759": "Changes allocation to reduce ZSTD_compressSequences stack use.",
    "99435dbb": "Adds early-out on sufficient matches for small speed and ratio gains.",
    "9a211d1f": "Loads more empty-table dictionary positions; upstream reports ratio gains.",
    "9ca65af8": "Improves the optimal-parser price function.",
    "a08fabd5": "Changes HUF compression under an upstream speed-optimization commit.",
    "a3c75bad": "Speeds FSE on barely compressible data.",
    "a56ac281": "Restores decoder speed after a regression.",
    "a80d2687": "Optimizes ZSTD_decodeSequence for speed.",
    "af866b3a": "Separates LDM sequence generation and block compression; upstream notes ratio and speed gains.",
    "b37e0a92": "Tweaks binary-tree search on long repeated segments for performance.",
    "b40287aa": "Claims a decompression speed improvement.",
    "b76c8884": "Skips a dictionary-context search after a mismatch in double-fast compression.",
    "b8305995": "Changes wildcopy for faster decompression.",
    "bc601bdc": "Uses a smaller btopt window to improve compression ratio.",
    "be4605d8": "Claims improved decompression speed.",
    "c2abfc5b": "Improves level-3 dictionary compression ratio.",
    "c4f46b94": "Uses calloc instead of memset during CCtx construction; upstream expects any gain to be tiny.",
    "cd1f5829": "Hoists hash-table writes and reports better performance alongside a correctness fix.",
    "ce52acd7": "Checks four bytes early to reduce ZSTD_count calls.",
    "d0f5ba36": "Improves cover dictionary training for small or homogeneous data.",
    "d1006700": "Selects a faster but weaker btopt0 parser variant.",
    "d1760113": "Delegates streaming decompression to a single pass when destination space suffices.",
    "d31018e2": "Tunes optimal parsing for better compression ratio on more files.",
    "d365ae34": "Improves optimal-parser compression ratio.",
    "d7249daf": "Applies a faster two-stage wildcopy on AArch64.",
    "d7841d15": "Reads a cached DDict ID, avoiding repeated dictionary-header checks.",
    "d8b33a59": "Limits multithread job size to speed large-source single-pass mode.",
    "d95123f2": "Adds RVV acceleration for sequence and literal compression.",
    "df28e5ba": "Adds a minimal-decompress preprocessor path that reduces variant branching.",
    "df386b3d": "Fixes duplicate DDS search attempts that slowed matching.",
    "e3bda594": "Prefers compiler prefetch builtins over inline assembly on AArch64.",
    "e7ec8f2b": "Claims an improved compression ratio.",
    "ee3f4515": "Speeds high-compression mode on repetitive data.",
    "eee87cd6": "Removes an optimal-parser price macro call for a stated tiny optimization.",
    "ef0ff7fe": "Removes multithread buffer margin to reduce memory use.",
    "efd37a64": "Removes wildcopy branches for faster decompression alongside an overread fix.",
    "f12c1304": "Integrates a fast compression mode.",
    "facc09aa": "Tunes level 12 for slightly better ratio and speed.",
    "fb8296f5": "Updates FSE for faster 32-bit Huffman decoding.",
    "fc2afcfa": "Claims a small compression-speed increase.",
}
excluded = {
    "07626dfa": "Changes dictionary-builder notifications.",
    "1563bfea": "Fixes FORCE_INLINE compatibility with older compilers.",
    "1a2547f6": "Fixes multithread forward progress.",
    "1a449688": "Refactors logic for clarity without a speed claim.",
    "1b28e804": "Removes a fast reset path without a stated performance objective.",
    "1dba98d5": "Adds a nonblocking streaming mode.",
    "2107c8f1": "Fixes mismatched bitstream declarations and compiler attributes.",
    "22fcb8d4": "Adds split-log support to a matcher without a stated speed result.",
    "23b55d6b": "Fixes a fuzz-build unused-variable warning.",
    "2a402626": "Adds an external matchfinder API.",
    "2e45badf": "Refactors benchmark interfaces for clarity and safety.",
    "2f74507b": "Fixes an invalid zero-bit read in 32-bit offset decoding.",
    "31683c0b": "Adds dictionary support to a benchmark.",
    "3c445476": "Improves API documentation.",
    "3d2cd7f8": "Introduces a parameter API and changes a benchmark caller.",
    "4178f5c2": "Fixes a GCC inlining warning.",
    "434ffe97": "Refactors an API declaration for clarity.",
    "444f4db9": "Changes cast placement without a stated speed objective.",
    "48a6427d": "Fixes a multithread compression completion bug.",
    "4a1a79a5": "Adds explanatory comments only.",
    "4d8a2132": "Fixes an optimal-parser fuzzing bug.",
    "5490c75d": "Adds build switches to exclude compression strategies without a stated size or speed result.",
    "565e925e": "Fixes the FORCE_INLINE macro.",
    "596f7d12": "Fixes signed parameter comparison.",
    "5eed8e7a": "Changes API comments.",
    "63b5e7a2": "Improves comments.",
    "63e435dd": "Fixes a deprecation warning macro.",
    "6a9b41b7": "Exposes existing negative compression levels through a CLI flag.",
    "74c901bb": "Fixes FORCE_INLINE attributes and a decoder entry point.",
    "74f85818": "Uses a portable NetBSD md5 tool.",
    "75525fcb": "Allows user-selected compiler optimization flags rather than optimizing a code path.",
    "759433d6": "Updates fullbench tests.",
    "79a35ac2": "Improves code comments.",
    "809f2f93": "Adds an assertion to the literal cost function.",
    "81512e9e": "Consolidates an inline macro definition.",
    "881abe44": "Prevents undefined behavior in offset reduction.",
    "89342d1e": "Adds a compression-parameter API symbol.",
    "89703d20": "Reduces header dependencies without a stated speed or size objective.",
    "8ab04097": "Adds a compression benchmark scenario.",
    "8cebfd1d": "Fixes a speed-test script.",
    "8cffd6ed": "Fixes an AddressSanitizer failure.",
    "8dd943e4": "Updates the Clang module map.",
    "8f3136a9": "Fixes an assertion edge case and documentation.",
    "901ea61f": "Changes single-file decoder packaging and GCC fallback pragmas.",
    "9171f920": "Improves seqStore_t documentation.",
    "91c9a247": "Fixes an optimal-parser determinism bug.",
    "944e2e9e": "Adds an always-active benchmark contract macro.",
    "9597b438": "Fixes the first match position when initializing a context.",
    "96b0ff78": "Improves copyBlockSequences documentation.",
    "9b5b47ac": "Corrects parameter adjustment when source size is unknown.",
    "9c922234": "Prevents undefined behavior in match-pointer calculation.",
    "a1550613": "Refactors for readability and explicitly says performance should not change.",
    "a232b3bb": "Adds split-log support to double-fast compression without a speed claim.",
    "a30febae": "Makes fast mode compatible with offset validation.",
    "a3a3c62b": "Fixes an HUF dictionary fuzzing failure.",
    "a436a529": "Fixes a skipped first byte in external-dictionary matching.",
    "a494308a": "Updates copyright and licenses.",
    "a927fae2": "Fixes ZSTD_reduceIndex and clarifies comments.",
    "ad2a2785": "Bumps the version number.",
    "afa9c9f5": "Disables an optimization without a stated new performance goal.",
    "b05ae9b6": "Adjusts initialization for ARM compiler behavior without a speed claim.",
    "b8235be8": "Avoids an out-of-bounds dictionary read.",
    "b8d4a388": "Replaces a magic number with a named constant.",
    "b921f1aa": "Narrows variable scope for readability and static analysis.",
    "bad74c47": "Fixes undefined behavior in dictionary-match logs.",
    "bae17496": "Adds a build exclusion variable without a stated speed or size result.",
    "bc880ebe": "Refactors arguments passed to a fast-compressor helper.",
    "bda947e1": "Fixes out-of-bounds checks in Huffman decoders.",
    "be391438": "Introduces an alternate coding scheme while reporting a decompression-speed impact, not an improvement.",
    "bf730e20": "Refactors optimal-parser code for readability.",
    "c17e020c": "Disables assertions in a benchmark calibration program, not production code.",
    "c2638212": "Changes a benchmark threshold.",
    "c689310b": "Makes legacy bounds checks independent of pointer overflow.",
    "c6a64174": "Fixes multithread benchmark timing.",
    "c836992b": "Changes error logging behavior.",
    "c8a72541": "Works around a Clang optimizer bug for correctness.",
    "cb0cad9b": "Adjusts worker limits for 32-bit test stability.",
    "cd1551d2": "Adds a no-trace build switch without a stated performance result.",
    "d4e17d07": "Refactors Boolean branch placement without a speed claim.",
    "d6f208ba": "Improves logging.",
    "db147ea6": "Improves comments.",
    "de0499f7": "Fixes a multithread build guard.",
    "ecabfe37": "Improves index-overflow protection.",
    "ecf90ca2": "Fixes a MemorySanitizer failure.",
    "ed2fb6bd": "Improves a missing-dictionary error and refactors for readability.",
    "efa6dfa7": "Fixes DDS assertion failures.",
    "f31b83ff": "Fixes null-pointer arithmetic and improves fuzz coverage.",
    "f6ecf156": "Refactors Makefiles for readability.",
    "f9e4f892": "Improves parameter-code comments.",
    "fc514595": "Adds a streaming-memory estimation API.",
    "fce4df3a": "Fixes an incorrect double-fast assertion.",
    "fe96e98f": "Adds separate hash-log support without a stated speed result.",
}
assert len(performance) + len(excluded) == 183
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
availability = json.loads((results / "pinned-changed-blob-availability.json").read_text())
source = next(r for r in availability["repos"] if r["repo"] == "zstd")
source_by_commit = {e["commit"]: e["status"] for e in source["items"]}
lines = [
    "# zstd fixed-sample metadata screen", "",
    "All 183 pending source-gap candidates were screened using local commit messages and "
    "changed-path trees. Their intent is classified, but exact historical changed source is "
    "missing and no source-matched Alive2 relation was run. Compression speed, ratio, memory, "
    "and binary size all count as optimization objectives; upstream performance claims are not "
    "local benchmark measurements.", "",
    "Reproduce with `git -C benchmarks/repos/zstd cat-file -p <commit>` and "
    "`git -C benchmarks/repos/zstd diff-tree --no-commit-id --name-only -r <commit>`.", "",
    "| Commit | Subject | Classification | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix, reason in sorted({**performance, **excluded}.items()):
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
        item.update({
            "screen": "confirmed_optimization", "checker_status": "not_run", "verdict": "UNKNOWN",
            "reason": reason,
            "coverage": "historical commit message and changed-path screen; exact C source missing; no Alive2 relation run",
            "evidence": str(evidence.relative_to(root)),
        })
        label = "optimization; UNKNOWN"
    else:
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/facebook/zstd/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (106, 94, 0)
assert (verdicts["NOT_EQUIV"], verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (2, 7, 96, 1)
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(verdicts.values()),
    "pending_checker_optimizations": 0,
    "intent_pending": screens["intent_pending"],
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_or_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
