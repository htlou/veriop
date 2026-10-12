#!/usr/bin/env python3
"""Audit the first 175 zstd candidates in the seeded top-up order."""

from collections import Counter
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/zstd"
seeded = json.loads((results / "topup-candidate-order.json").read_text())
item = next(r for r in seeded["repos"] if r["repo"] == "zstd")
fixed = json.loads((results / "zstd-pinned-sample-audit.json").read_text())
assert fixed["pin"] == item["pin"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

# Reviewed from the full commit messages and changed paths, in seeded draw order.
decisions = [
    ("9b8e4537", True, "Explicit compression-ratio improvement."),
    ("32dfae6f", False, "Fixes multithreaded frame correctness."),
    ("4d1a0ef5", True, "Explicit compression-speed improvement."),
    ("9a24e598", False, "Fixes the fast-mode rolling buffer."),
    ("d988e00a", False, "Addresses flexible-array representation, without a performance claim."),
    ("2cb0740b", True, "Cuts job size to reduce mutex calls in addition to renaming."),
    ("0170cf9a", True, "Changes a compressor helper to favor vectorization."),
    ("ace6a7e7", True, "Eliminates one addition in the fast compressor."),
    ("7d970bd8", False, "Adds a missing magicless-format fallback."),
    ("f6ca09b5", False, "Changes CLI training progress display."),
    ("ed38b645", False, "Corrects benchmark scenario arguments."),
    ("a243020d", True, "Changes weight calculation to improve compression ratio."),
    ("71dd67cf", False, "Adds benchmark scenarios for context constructors."),
    ("0b9b894b", True, "Reduces decompression dictionary memory by 128 KiB."),
    ("a3c3a38b", True, "Skips incompressible input in the lazy matcher."),
    ("b19d5d76", True, "Restores inlining for decompression speed."),
    ("eb47705b", False, "Narrows variable scope and renames variables for clarity."),
    ("63b0014b", False, "Changes BSD installation rules."),
    ("e9d1987f", True, "Explicit optimal-parser speed optimization."),
    ("fadaab8c", True, "Avoids unneeded content-size accounting in dictionary state."),
    ("10bfd0c0", True, "Repairs a decompression performance regression."),
    ("942937f3", False, "Adds aliases for a disabled BMI2 build configuration."),
    ("c224367e", False, "Fixes workspace-size sufficiency."),
    ("7ae67bb1", True, "Explicit compression-speed improvement with CDict."),
    ("abb5c653", True, "Explicit context-copy speed improvement."),
    ("afab0209", True, "Explicit decoding-speed improvement."),
    ("9a11f70d", False, "Merge/refactor whose message reports no speed gain over its comparison branch."),
    ("a7737f6a", True, "Improves compression on small repeated-parameter inputs."),
    ("debe3d20", False, "Removes an unused branch without a stated performance objective."),
    ("f2d9ef1d", True, "Optimizes a dictionary cover case."),
    ("ae703425", True, "Elides a long-offset path on 64-bit targets."),
    ("8e0e495c", True, "Restores a match opportunity and improves compression ratio."),
    ("e928f7e1", True, "Reduces entropy-counting stack memory."),
    ("54144285", True, "Reports strategy-fast speed gains on three corpus inputs."),
    ("d605f482", False, "Adapts the double-fast matcher to a new index representation."),
    ("d1327738", True, "Improves compression ratio with a small stated speed tradeoff."),
    ("b3f33ccf", True, "Reduces decompression-stream buffer allocation."),
    ("66079085", False, "Fixes deterministic index reduction."),
    ("6e1e5459", False, "Avoids a potential thread-limit race."),
    ("d41f707e", True, "Removes near-duplicate dictionary entries."),
    ("b7fba599", False, "Removes a compiler warning for an unused argument."),
    ("7ed996f5", False, "Consolidates context-size estimation code."),
    ("395a2c54", False, "Fixes a rare block-splitter corruption bug."),
    ("5d897715", False, "Fixes an always-inline compiler warning."),
    ("34b545ac", True, "Enables constant propagation and reports 1.5% speed gain."),
    ("2b942881", True, "Improves four-repcodes handling in the lazy compressor."),
    ("ca0135c2", True, "Reformulates the optimal parser with stated speed intent."),
    ("d214d8c8", False, "Shortens conditionals for readability."),
    ("1aff63b1", True, "Uses fractional-bit costs in optimal parsing."),
    ("b0aec17a", False, "Simplifies code while explicitly reducing decompression speed."),
    ("2dd76037", True, "Adapts CLI compression level to slow input throughput."),
    ("1fcad561", False, "Clarifies BMI2 API comments."),
    ("37648590", False, "Avoids an ANSI-mode build failure."),
    ("3cbfac1c", True, "Retunes compression levels for ratio and speed."),
    ("d94efbf9", False, "Fixes fast mode on Windows."),
    ("18500251", False, "Refactors double-fast control flow without a stated performance objective."),
    ("a4941113", True, "Moves prefetch before insertion; reports about 6% speed gain."),
    ("e8a44326", False, "Removes redundant dictionary-initializer arguments."),
    ("cf854f46", False, "Adds verbose build output support."),
    ("186b1324", True, "Selects branch versus cmov search strategy by a performance heuristic."),
    ("7db55267", True, "Shrinks worker queue to save memory and tunes dispatch."),
    ("5c2f2ebf", True, "Avoids repeated multithreaded context creation."),
    ("40133190", False, "Introduces a benchmarking-only experiment."),
    ("387840af", True, "Reorders fast-compressor operations for speed."),
    ("de68c2ff", True, "Combines two index-maintenance scans into one for speed."),
    ("482689b9", True, "Explicit Huffman-log speed optimization."),
    ("eab69221", False, "Changes benchmark size display."),
    ("e557abc8", True, "Adds a less precise block-split variant for the fast strategy."),
    ("c8d870fe", False, "Changes parameter validation logic."),
    ("b01552a0", True, "Forces Huffman decoder inlining to repair a compiler-specific slowdown."),
    ("d0a1d455", True, "Blocks idle stream flushing to avoid CPU spinning and wasted energy."),
    ("e8a7f5d3", True, "Retunes the double-fast insertion tradeoff for compression ratio."),
    ("c2845694", False, "Restricts assembly for portability."),
    ("38cdb6a0", False, "Renames cover hash functions and variables."),
    ("c08e649e", False, "Adds a benchmark using the generic compression API."),
    ("83c76b45", False, "Moves benchmark timing helpers."),
    ("16db0337", False, "Sets a cover parameter without a documented optimization objective."),
    ("335ad5d4", True, "Optimizes dictionary-free stream initialization alongside a new API."),
    ("f6d4a786", True, "Reduces multithreaded latency for small custom sections."),
    ("ecb86d82", False, "Fixes a public prototype mismatch."),
    ("4ab9c913", False, "Replaces a macro with an inline function without a stated performance objective."),
    ("f1cbeec0", True, "Reduces superblock stack usage."),
    ("e60cae33", True, "Explicit compression-ratio optimizations."),
    ("5be2dd25", False, "Reorganizes the library source tree and changes the compression API."),
    ("0068be94", True, "Speeds literal-cost evaluation."),
    ("f65b9e27", False, "Expands decompression fuzz tests."),
    ("dc8dae59", True, "Overlaps sections to improve compression ratio at a CPU cost."),
    ("99e31599", True, "Reduces Huffman table-reading stack usage."),
    ("73c73bf1", False, "Deduplicates test code."),
    ("a0d742b1", True, "Adds a workspace variant to reduce Huffman stack memory."),
    ("ae986fcd", True, "Lets MSVC eliminate an unreachable condition check."),
    ("809f6529", True, "Optimizes the repcode predicate."),
    ("b8413872", False, "Fixes freestanding macro resolution."),
    ("f48e35c2", None, "Message says only 'minor bt improvements'; performance intent is not established."),
    ("a2ff6ea7", False, "Changes skippable-frame header reporting."),
    ("458e955c", True, "Uses more threads and overlapping sections to improve compression ratio."),
    ("2162aa9f", None, "Message says only not to inline a DMS search helper; performance intent is not established."),
    ("6b88d592", True, "Lowers the 32-bit maximum chain log to reduce memory needs."),
    ("eb52e2f4", False, "Simplifies a helper because no compiler auto-vectorizes it."),
    ("a1d4041e", False, "Removes redundant multithreaded job state without a stated performance objective."),
    ("326c45bb", False, "Completes a benchmark sample."),
    ("1bee2d5e", True, "Explicit decompression-speed improvement."),
    ("fe234bf4", False, "Repairs a Visual Studio benchmark."),
    ("15e67bfa", True, "Deduplicates fast-compressor implementations to reduce code size."),
    ("19eb459d", True, "Avoids forced inlining to reduce Linux-kernel build size by measured amounts."),
    ("1f83b7cf", True, "Removes a one-byte sequence-count inefficiency in superblocks."),
    ("a81d9ac4", True, "Explicit binary-tree compression-speed improvement."),
    ("3c6b8088", True, "Explicit decompression-speed gains."),
    ("e63896eb", True, "Explicit dictionary-compression speed improvement."),
    ("81b86a20", False, "Fixes a compressor dispatch table when variants are excluded."),
    ("b71405dc", False, "Removes cached literal-price code without a stated performance objective."),
    ("add66f81", False, "Turns a macro into a function for compiler checking and parameter validation."),
    ("bd88f633", False, "Fixes a zstreamtest option parser."),
    ("e8b4011b", True, "Separates hash-cache and chain-table loops for speed."),
    ("94db4398", False, "Simplifies large-dictionary loading and reduces nondeterminism."),
    ("42c1e642", True, "Recovers compression ratio at level 22."),
    ("8bed4012", False, "Fixes a decompression-only benchmark."),
    ("eb1ee868", False, "Refactors superblock statistics without a stated performance objective."),
    ("a288751d", False, "Claims no performance impact despite an optimization label."),
    ("b97ad3f4", None, "Says only that changes were ported from fast to double-fast; intent needs source review."),
    ("635783da", True, "Avoids unhelpful probability estimation on small inputs to improve ratio."),
    ("0fd4df6e", False, "Relocates BMI2 functions for maintenance and experimentation."),
    ("718f00ff", True, "Explicit compiler-specific decompression-speed optimization."),
    ("1840d6af", False, "Adjusts benchmark handling of variable block sizes."),
    ("7c05b9ae", True, "Removes an expensive assertion from a hot loop."),
    ("c6f91a41", False, "Fixes an out-of-bounds dictionary hashset probe."),
    ("5a759560", False, "Avoids dispatch to excluded compressor variants."),
    ("39f2491b", True, "Speeds a long-match look-ahead at a small ratio cost."),
    ("a880ca23", False, "Corrects spelling."),
    ("166901dc", False, "Relaxes a thread-pool resize restriction."),
    ("83095970", True, "Speeds local compressed-dictionary release."),
    ("b6a4d5a8", True, "Reports a ten-percent scalar block-summary speed gain."),
    ("7c24c3e6", True, "Avoids costly end-of-block match searches."),
    ("8168a451", False, "Describes a clarity-oriented refactor without a documented performance effect."),
    ("cbbc114e", True, "Allows kernel integrations to resolve BMI2 dispatch through CPU alternatives."),
    ("3b1aba42", True, "Reduces FSE decompression stack use by 512 bytes."),
    ("7c3d1cb3", True, "Enables static BMI2 selection for compiler-specific speed gains."),
    ("b521183c", False, "Changes package-config build machinery."),
    ("1bdf0410", True, "Tracks a step value rather than recomputing it for speed."),
    ("54c4babd", True, "Chooses Huffman table reuse versus rebuilding for better compression ratio."),
    ("943cff9c", False, "Fixes a multithreaded CLI hang."),
    ("cdb9481e", True, "Optimizes repetitive-data binary-tree insertion."),
    ("86db6075", True, "Exits earlier on incompressible input."),
    ("fa5e01c4", True, "Adds a build option targeting minimum library size."),
    ("12c47d32", True, "Explicit sequence-conversion speed improvement."),
    ("a419777e", True, "Reuses prior Huffman tables when they improve compression."),
    ("20fb9e7f", False, "Corrects an assertion limit in fuzz tests."),
    ("450542d3", False, "Fixes zero-length format strings under warning-as-error builds."),
    ("1bbb372e", False, "Fixes a long-distance matcher parameter bound."),
    ("988ce61a", False, "Initializes a missing compression level and adds fuzzer CI."),
    ("6901c94c", False, "Deduplicates code comments."),
    ("c2555f8c", True, "Backs off overflow correction to reduce fuzzer runtime."),
    ("6025465e", True, "Reduces multithreaded compression-context memory."),
    ("1db59475", True, "Reports about five-percent decompression-speed gain from prefetching."),
    ("82a49c88", True, "Adjusts incompressible-data stepping to improve ratio at similar speed."),
    ("a8ebc140", True, "Uses profiler evidence to improve MSVC bitstream inlining."),
    ("b241e9de", True, "Explicit compression improvement."),
    ("91f4c23e", True, "Salts row hashes to avoid compression regressions."),
    ("020b960e", True, "Speeds cover dictionary optimization."),
    ("1e65711c", True, "Explicit long-distance matching performance improvements."),
    ("cdceb0fc", False, "Fixes assertion macro guards."),
    ("036b30b5", False, "Fixes superblock bounds and raw-block streaming."),
    ("34aff7ea", False, "Fixes overflow correction and makes tests exercise it more often."),
    ("07c6ff58", True, "Inlines entropy error checks based on compiler optimization remarks."),
    ("03c41112", False, "Fixes dictionary invalidation logic."),
    ("ee5b7258", True, "Avoids allocating a dictionary object when none is used."),
    ("61efb2a0", True, "Adds a maximum-block-size parameter to reduce streaming memory."),
    ("2cc600ba", False, "Refactors search into a function for future parameter swapping."),
    ("28d0120b", False, "Fixes an Arm alignment fault."),
    ("4489daec", True, "Retunes strategy thresholds for compression and decompression speed."),
    ("1f188ae6", False, "Moves assertions to avoid an unused-function warning."),
    ("18fc3d3c", True, "Uses fractional costs to improve ratio with a stated speed tradeoff."),
    ("e2c0e3d4", True, "Nudges choices to fewer sequences and improves corner-case compression."),
    ("3732a08f", False, "Fixes zero-sequence decoder behavior."),
    ("aec1a3ec", False, "Avoids a GRUB typedef conflict."),
]
assert len(decisions) == 175


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                          check=True, env=env).stdout.strip()


entries = []
for draw, (expected, confirmed, reason) in enumerate(decisions):
    candidate = item["order"][draw]
    commit = candidate["commit"]
    assert commit.startswith(expected)
    raw = git("diff-tree", "--no-commit-id", "--raw", "-r", commit).splitlines()
    paths, blobs = [], []
    for line in raw:
        if not line.startswith(":"):
            continue
        ids, path = line.split("\t", 1)
        paths.append(path)
        blobs.extend(sha for sha in ids.split()[2:4] if sha != "0" * 40)
    missing = [sha for sha in blobs if subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-e", sha], capture_output=True, env=env
    ).returncode]
    assert paths and missing, commit
    entries.append({
        "draw": draw, "commit": commit, "subject": candidate["subject"],
        "screen": "confirmed_optimization" if confirmed is True else
                  "excluded_non_optimization" if confirmed is False else "intent_unresolved",
        "reason": reason, "changed_paths": paths, "missing_changed_blob_ids": missing,
        **({"checker_status": "not_run", "verdict": "UNKNOWN",
            "coverage": "historical message/path intent screen; exact changed C source missing"}
           if confirmed is True else {}),
    })

error_path = root / "history-eq/c/zstd/4d1a0ef5"
assert entries[2]["commit"].startswith("4d1a0ef5") and entries[2]["verdict"] == "UNKNOWN"
recheck = subprocess.run(["sh", str(error_path / "verify.sh")], cwd=root,
                         capture_output=True, text=True, check=True)
assert recheck.stdout.strip() == "Exact blobs, sanitizer witness, and Alive2 value mismatch checked"
entries[2].update({"checker_status": "checked", "verdict": "NOT_EQUIV",
                   "checker_target": "Alive2 + exact historical native ASan/UBSan witness",
                   "coverage": "exact old/new ZSTD_execSequence bodies: different destination-buffer bytes after the same dstSize_tooSmall error; valid-stream output unverified",
                   "evidence": "history-eq/c/zstd/4d1a0ef5/README.md"})

fixed_confirmed = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
for entry in fixed_confirmed:
    if entry["commit"].startswith("b89e8c2a"):
        assert entry["verdict"] == "UNKNOWN"
        entry["checker_status"] = "checked"
all_added = [e for e in entries if e["screen"] == "confirmed_optimization"]
added = all_added[:94]
assert len(fixed_confirmed) == 106 and len(added) == 94
assert len({e["commit"] for e in fixed_confirmed + added}) == 200
(results / "zstd-topup-first175-audit.json").write_text(json.dumps({
    "repo": "zstd", "pin": item["pin"], "draws_reviewed": len(entries),
    "confirmed_optimizations": len(all_added), "entries": entries,
}, indent=2) + "\n")
(results / "zstd-optimization-sample.json").write_text(json.dumps({
    "repo": "zstd", "pin": item["pin"],
    "selection": "fixed 200-candidate draw, followed by seeded top-up candidates until 94 more confirmed optimizations were found; only confirmed optimizations retained",
    "sample_size": 200, "entries": fixed_confirmed + added,
    "summary": dict(Counter(e["verdict"] for e in fixed_confirmed + added)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(entries), "confirmed_topup": len(all_added),
                  "sampled_topup": len(added), "sample_size": 200,
                  "intent_unresolved": sum(e["screen"] == "intent_unresolved" for e in entries),
                  "all_new_source_gapped": True}, sort_keys=True))
