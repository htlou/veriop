# zstd `90a03a95`: sequence-table error normalization

**Whole-commit verdict: UNKNOWN.** The historical commit `90a03a95a1a20ce8b8cf4c5036a6869678ff0515` changes `ZSTD_buildSeqTable` from `static` to `FORCE_INLINE` and changes one error return after `FSE_readNCount` fails from `ERROR(GENERIC)` to `ERROR(corruption_detected)`. `old-source.c`, `new-source.c`, and `source.diff` are the exact historical `lib/zstd_decompress.c` objects and their diff.

The helper is static; its three direct calls in `ZSTD_decodeSeqHeaders` all test `ZSTD_isError(bhSize)` and return `ERROR(corruption_detected)` for any recognized helper error. Thus the changed helper error is masked at these calls **if** both historical return codes satisfy the historical `ZSTD_isError` predicate. `error_projection.c` models this branch and caller projection with symbolic 64-bit error values and a symbolic error boundary, corresponding to a 64-bit `size_t` target. Alive2 refutes equality of the local helper result (`internal-forward.log`) and proves the projected caller result equal in both directions (`projection-forward.log`, `projection-reverse.log`) under explicit assumptions that both codes are recognized errors. Both generated IR files pass LLVM verification.

The [dependency audit](dependency-audit.json), rerunnable with `python3 -B history-eq/c/zstd/90a03a95/audit_dependencies.py`, checked the exact Git object IDs for `lib/error_private.h`, `lib/error_public.h`, `lib/fse_static.h`, and `lib/zstd_internal.h` across all 70 local repository stores. All four unchanged blobs are absent. Consequently the actual historical error encoding, the `FSE_readNCount` failure condition, the complete decompressor, and compiler treatment of `FORCE_INLINE` have not been checked in a faithful build. The Alive2 lemma is conditional and is **not** a whole-commit or public-API equivalence proof. No official historical performance score was measured.

Reproduce the conditional check from the project root:

```sh
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -S -emit-llvm -DCHILD=0 history-eq/c/zstd/90a03a95/error_projection.c -o history-eq/c/zstd/90a03a95/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -S -emit-llvm -DCHILD=1 history-eq/c/zstd/90a03a95/error_projection.c -o history-eq/c/zstd/90a03a95/new.ll
alive2/build/alive2/alive-tv --func=target_decode_seq_headers --always-verify history-eq/c/zstd/90a03a95/old.ll history-eq/c/zstd/90a03a95/new.ll
alive2/build/alive2/alive-tv --func=target_decode_seq_headers --always-verify history-eq/c/zstd/90a03a95/new.ll history-eq/c/zstd/90a03a95/old.ll
```
