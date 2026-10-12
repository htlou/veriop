# zstd `b89e8c2a`: skip BMI2 probing in a fixed build

**Whole-commit verdict: UNKNOWN.** The parent and child change the BMI2 flag stored in `ZSTD_CCtx` and passed to compression helpers. The exact historical `lib/compress/zstd_compress.c` and `zstd_compress_internal.h` blobs are retained as `old-source.c`, `new-source.c`, `old-internal.h`, and `new-internal.h`. The [source diff](../source-screening/b89e8c2aaf94.source.diff) covers all three changed files, including `zstd_compress_superblock.c`.

`bmi2_projection.c` models the changed `ZSTD_initCCtx` assignment followed by the changed `ZSTD_CCtx_get_bmi2` result at a compression-helper call. The unchanged `ZSTD_cpuSupportsBmi2()` result is a symbolic Boolean input. When `DYNAMIC_BMI2=1`, Alive2 proves both directions equal (`dynamic-forward.log`, `dynamic-reverse.log`). When `DYNAMIC_BMI2=0`, Alive2 finds a **local argument difference** (`static-witness.log`): a CPU result of 1 produces an old argument of 1 and a new argument of 0. This is the intended effect of skipping the probe. It is **not** a proof that compressed bytes differ: helper implementations, compile-time BMI2 selection, context size/layout, allocation behavior, and the public compressor are outside this projection. The historical `portability_macros.h` and downstream helpers are not available locally, so those contexts have no complete check. No official before/after benchmark score was measured.

All four generated LLVM modules passed `opt -passes=verify`. Reproduce the core checks from the project root:

```sh
for child in 0 1; do
  for dynamic in 0 1; do
    alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -DCHILD=$child -DDYNAMIC_BMI2=$dynamic -S -emit-llvm history-eq/c/zstd/b89e8c2a/bmi2_projection.c -o history-eq/c/zstd/b89e8c2a/repro-$child-$dynamic.ll
  done
done
alive2/build/alive2/alive-tv --func=target_heap_bmi2_argument --always-verify -quiet history-eq/c/zstd/b89e8c2a/repro-0-1.ll history-eq/c/zstd/b89e8c2a/repro-1-1.ll
alive2/build/alive2/alive-tv --func=target_heap_bmi2_argument --always-verify -quiet history-eq/c/zstd/b89e8c2a/repro-0-0.ll history-eq/c/zstd/b89e8c2a/repro-1-0.ll
```
