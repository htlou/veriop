# zstd historical optimization `68c14bd`

Commit `68c14bdff296c87bfc7a5447a29c10407121bdd2` optimizes `HUF_readCTable` by replacing a scan for zero weights with `rankVal[0] > 0`. `source.diff` records its complete two-file source change. The pre/post worktrees are at exact commits `0418ba2ba32cbcd4123b94c1d95653b606cbdea6` and `68c14bdff296c87bfc7a5447a29c10407121bdd2`.

**Verdict: verified unequal at the callable advanced `HUF_readCTable` interface.** The new version writes `*hasZeroWeights` before checking whether `nbSymbols > *maxSymbolValuePtr + 1`; the old version returns on that error without writing it. [`full_stats_witness.c`](full_stats_witness.c) calls the exact historical `HUF_readCTable` implementations with the valid special HUF header `{130, 0x01, 0x10}`, `maxSymbolValue=0`, and initial `hasZeroWeights=7`. Each version's real historical `HUF_readStats` implementation is linked into the LLVM module and inlined before comparison. Alive2 refutes [old→new](full-stats-extracted-forward.log) and [new→old](full-stats-extracted-reverse.log) on the resulting [old](old-full-stats-target.ll) and [new](new-full-stats-target.ll) `target` functions: the returned caller-owned flag is **7 before and 1 after**, with zero failed-to-prove transformations. The IR modules pass LLVM verification. This removes the opaque-`HUF_readStats` approximation from the earlier full-function attempt.

An independent [native probe](error_path_probe.c) against separately built historical `libzstd.a` files confirms the same values ([old](probe-old.log), [new](probe-new.log)). Both `HUF_readStats` versions report 4 symbols, table log 2, and one zero weight. Both `HUF_readCTable` versions return the same error code (`18446744073709551568`), but the parent leaves `hasZeroWeights=7` and the child writes `1`. The table pointer is valid and aligned. The earlier reduced [error-branch Alive2 model](alive2-error-branch.log) corroborates the source statement ordering but is not needed for the exact linked proof.

**Success-path flag calculation: locally equivalent.** `HUF_readStats_body` zeroes `rankStats`, counts every explicit weight into it, and appends a nonzero implied final weight. `zero_weights.c` compares the old scan with the new zero-rank test over the 255-entry bound after successful weight validation. Bidirectional Alive2 reports equivalent (`alive2.log`); the injected `rank_zero > 1` mutant is rejected with a value mismatch (`alive2-negative.log`). The generated IR in `zero_weights.checked.ll` removes only Clang's unsupported `nocapture` hint and nonsemantic loop/TBAA/module metadata from `zero_weights.ll`.

The only in-tree compressor caller passes `maxSymbolValue=255`; this error-path witness does not establish a difference in the documented zstd compress/decompress API or compressed bytes. The earlier direct whole-function Alive2 attempt ([log](alive2-full.log)) left `HUF_readStats` opaque and is superseded for this concrete witness. The commit-level `NOT_EQUIV` label is scoped to the callable advanced HUF interface, not the documented compressor API. No official before/after zstd performance score was measured for this historical pair.

Reproduce the dependency-aware Alive2 check from the project root (both worktrees are clean and pinned at the commits above):

```sh
for side in old new; do
  src="history-eq/wt/zstd-68c14bd-${side}/lib"
  out="history-eq/c/zstd/68c14bd/${side}"
  for pair in "compress/huf_compress.c:huf" "common/entropy_common.c:stats"; do
    file=${pair%%:*}; label=${pair##*:}
    alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -fno-strict-aliasing -I "$src/common" -I "$src/compress" -S -emit-llvm "$src/$file" -o "${out}-${label}-full.ll"
  done
  alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -fno-strict-aliasing -I "$src/common" -I "$src/compress" -S -emit-llvm history-eq/c/zstd/68c14bd/full_stats_witness.c -o "${out}-witness-full.ll"
  alive2/toolchain/usr/lib/llvm-20/bin/llvm-link "${out}-huf-full.ll" "${out}-stats-full.ll" "${out}-witness-full.ll" -S -o "${out}-linked-full.ll"
  alive2/toolchain/usr/lib/llvm-20/bin/opt -passes='default<O3>' -inline-threshold=100000 "${out}-linked-full.ll" -S -o "${out}-inlined-full.ll"
  alive2/toolchain/usr/lib/llvm-20/bin/llvm-extract --func=target -S "${out}-inlined-full.ll" -o "${out}-full-stats-target.ll"
  alive2/toolchain/usr/lib/llvm-20/bin/opt -passes=verify "${out}-full-stats-target.ll" -disable-output
done
alive2/build/alive2/alive-tv --func=target --always-verify history-eq/c/zstd/68c14bd/old-full-stats-target.ll history-eq/c/zstd/68c14bd/new-full-stats-target.ll
alive2/build/alive2/alive-tv --func=target --always-verify history-eq/c/zstd/68c14bd/new-full-stats-target.ll history-eq/c/zstd/68c14bd/old-full-stats-target.ll
```

Check Alive2's `incorrect transformations` count and returned values; its process exit code alone is not the verdict.
