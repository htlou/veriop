# zstd `0c654d22`: force inline `ZSTD_BtFindBestMatch`

**Verdict: partial local equality, not whole-compressor equivalence.** The historical diff changes only `static` to `FORCE_INLINE_TEMPLATE` on `ZSTD_BtFindBestMatch`; its function body and the rest of `lib/compress/zstd_lazy.c` are byte-identical. [`prepare.py`](prepare.py) saves both exact historical source blobs and extracts the changed function verbatim. Their SHA-256 values and parent commit are in [`source_manifest.json`](source_manifest.json).

The exact historical `compiler.h` and `zstd_compress_internal.h` dependencies are absent from this partial Git object store. The harness therefore models `FORCE_INLINE_TEMPLATE` as Clang `static inline __attribute__((always_inline))`, supplies a minimal struct containing just the two fields read by this function, and leaves `ZSTD_updateDUBT` and `ZSTD_DUBT_findBestMatch` as shared opaque calls. This proves the local control flow and return relation under the same external callees; it does **not** prove the historical whole-program build, the update/search callee behavior, or public compression output.

At `-O1`, both extracted versions yield the same `target` LLVM body, and Alive2 reports one correct transformation in each direction ([forward](forward.log), [reverse](reverse.log)). Both modules pass `opt -passes=verify`. An exploratory `-O0` run put the old function in a separate call and inlined the new one; Alive2 produced a null-pointer/opaque-call counterexample in both directions ([forward](forward-O0.log), [reverse](reverse-O0.log)). That run is **not** a historical program counterexample: its harness permits a null `ms` and does not link the historical callees. The accepted result is limited to the `-O1` local model.

Reproduce from the project root:

```sh
python3 history-eq/c/zstd/0c654d22/prepare.py
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O1 -fno-strict-aliasing -S -emit-llvm history-eq/c/zstd/0c654d22/old.c -o history-eq/c/zstd/0c654d22/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O1 -fno-strict-aliasing -S -emit-llvm history-eq/c/zstd/0c654d22/new.c -o history-eq/c/zstd/0c654d22/new.ll
alive2/build/alive2/alive-tv --func=target --always-verify history-eq/c/zstd/0c654d22/old.ll history-eq/c/zstd/0c654d22/new.ll
alive2/build/alive2/alive-tv --func=target --always-verify history-eq/c/zstd/0c654d22/new.ll history-eq/c/zstd/0c654d22/old.ll
```

No official historical zstd benchmark score was measured for this pair.
