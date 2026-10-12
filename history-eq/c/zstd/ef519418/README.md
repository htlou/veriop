# zstd `ef519418`: optimal-parser speed change

**Verdict: EQUIV_PARTIAL.** The [exact historical diff](source.diff) and [old/new `zstd_opt.h` and `zstd_compress.c` files with hashes](source_manifest.json) are archived. The commit changes the optimal parser's match and literal-window logic, moves the header inclusion, and removes an always-enabled conditional-compilation branch around `ZSTD_getLiteralPrice`. The latter helper is the scope checked here; the full parser and compressed output remain unproved.

[`prepare.py`](prepare.py) extracts the exact old and new `ZSTD_getLiteralPrice` bodies into the same C declaration model for `seqStore_t`, `ZSTD_highbit`, and `LL_bits`. Clang 20 preprocessing produces **byte-identical** [old](old.pre.c) and [new](new.pre.c) translation units (both SHA-256 `ea66ea26b47b3370c7b4fa85be062e2f5c7a914acd1421c7a93710a30b9f18dc`). At `-O1`, the LLVM modules differ only in source filenames; [`normalize_ir.py`](normalize_ir.py) removes those filenames and the single symmetric `nocapture` hint unsupported by this Alive2 build, then asserts the modules are byte-identical. LLVM's verifier accepts both normalized modules. Alive2 reports **one correct transformation, zero incorrect transformations, zero errors in each direction** ([forward](forward-alive.log), [reverse](reverse-alive.log)); it recognizes syntactic equality rather than solving distinct programs with SMT.

The declaration model shares an external `ZSTD_highbit` and `LL_bits` on both sides; it does not recreate every historical header or the whole compressor. The direct unnormalized Alive2 attempt fails on `nocapture` on both sides ([forward diagnostic](forward.log), [reverse diagnostic](reverse.log)). The helper result includes its cache-field writes because the same compiled target body executes on both sides. No official historical zstd benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/c/zstd/ef519418/prepare.py
for side in old new; do
  alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -E -P history-eq/c/zstd/ef519418/$side.c > history-eq/c/zstd/ef519418/$side.pre.c
  alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O1 -fno-strict-aliasing -S -emit-llvm history-eq/c/zstd/ef519418/$side.c -o history-eq/c/zstd/ef519418/$side.ll
done
cmp history-eq/c/zstd/ef519418/old.pre.c history-eq/c/zstd/ef519418/new.pre.c
python3 history-eq/c/zstd/ef519418/normalize_ir.py
alive2/toolchain/usr/lib/llvm-20/bin/opt -passes=verify history-eq/c/zstd/ef519418/old-alive.ll -disable-output
alive2/toolchain/usr/lib/llvm-20/bin/opt -passes=verify history-eq/c/zstd/ef519418/new-alive.ll -disable-output
alive2/build/alive2/alive-tv --func=target history-eq/c/zstd/ef519418/old-alive.ll history-eq/c/zstd/ef519418/new-alive.ll
alive2/build/alive2/alive-tv --func=target history-eq/c/zstd/ef519418/new-alive.ll history-eq/c/zstd/ef519418/old-alive.ll
```
