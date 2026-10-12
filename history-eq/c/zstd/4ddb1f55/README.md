# zstd `4ddb1f55`: small-segment FSE counting

**Verdict: VERIFIED INEQUAL at the public `FSE_count` API.** The commit replaces the old `FSE_count_generic` dispatch with `FSE_count_simple` for small inputs. [`prepare.py`](prepare.py) extracts the old and new counting functions verbatim from the exact historical [`fse.c` sources](source_manifest.json), and preserves both revisions of `fse.h` and `fse_static.h`. The full [historical source diff](../source-screening/4ddb1f556680.source.diff) includes unrelated formatting and table-building changes.

The witness passes a valid one-byte source pointer with `srcSize=0`, a 256-cell `unsigned count[]`, and `*maxSymbolValuePtr=255`. It initializes `count[64]` to `0xA5A5A5A5`. The parent reaches `FSE_count_generic`, whose zero-input branch clears only `(255+1) * sizeof(BYTE) = 256` bytes, leaving cell 64 intact. The child reaches `FSE_count_simple`, whose zero-input branch clears `(255+1) * sizeof(unsigned) = 1024` bytes, setting cell 64 to zero. Both return zero and set `maxSymbolValue` to zero. The counterexample respects the historical header's minimum count-table size.

Alive2 refutes both directions on the exact extracted counting functions plus this fixed public-API call ([forward](forward.log), [reverse](reverse.log)); the old and new LLVM modules pass `opt -passes=verify`. Independent native runs of those historical function bodies produce [`0xa5a5a5a5`](native-old.log) and [`0x00000000`](native-new.log). The small harness supplies `ERROR` and `MEM_read32` definitions only to compile the extracted functions; neither helper is reached on this zero-length path. The observed difference is in the caller-visible count table. It does not establish a difference in zstd compressed bytes, and no official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/c/zstd/4ddb1f55/prepare.py
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -S -emit-llvm history-eq/c/zstd/4ddb1f55/old.c -o history-eq/c/zstd/4ddb1f55/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -S -emit-llvm history-eq/c/zstd/4ddb1f55/new.c -o history-eq/c/zstd/4ddb1f55/new.ll
alive2/build/alive2/alive-tv --func=target_zero_count --always-verify history-eq/c/zstd/4ddb1f55/old.ll history-eq/c/zstd/4ddb1f55/new.ll
alive2/build/alive2/alive-tv --func=target_zero_count --always-verify history-eq/c/zstd/4ddb1f55/new.ll history-eq/c/zstd/4ddb1f55/old.ll
```
