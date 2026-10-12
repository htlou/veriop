# zstd historical optimization `64205b78`

Commit `64205b7832fa0b4433214e26c294545b4c962834` (`Fix performance degradation with -m32`) changes only `ZSTD_copy16` in `lib/common/zstd_internal.h`; `source.diff` is the complete source diff. On 32-bit GCC without SSE2, the old branch calls `ZSTD_memmove(dst, src, 16)`. The new branch copies through a 16-byte local buffer with two `ZSTD_memcpy` calls. The historical `zstd_deps.h` maps these macros to `__builtin_memmove` and `__builtin_memcpy` under GCC. The ARM NEON and x86 SSE2 branches are unchanged, and Clang still uses the old memmove branch. `gcc -m32 -E -dM -x c /dev/null` defines `__i386__` but not `__SSE2__` on this host, confirming the relevant default preprocessor route.

**Changed-helper result: bidirectional equivalence in Alive2's LLVM memory model.** `copy16.c` contains exactly the two changed fallback bodies after macro expansion. Clang 20 compiled it for `i386-pc-linux-gnu` at `-O0 -Xclang -disable-O0-optnone -ffreestanding`, leaving one `llvm.memmove` in the old body versus a local array and two `llvm.memcpy` calls in the new body (`copy16-O0.ll`). `copy16-O0.checked.ll` differs only by removal of Clang's `nocapture` attributes and nonsemantic module metadata. Alive2 with `--bidirectional --always-verify --fail-src-ub --smt-to=45000` reports both directions correct (`alive2-O0.log`), covering defined calls with readable/writable 16-byte regions, including overlapping source and destination. The deliberately incorrect `copy16-negative.c` flips one output bit; Alive2 detects a concrete memory mismatch (`alive2-negative.log`).

Recheck with:

```sh
alive2/toolchain/usr/bin/clang-20 -O0 -Xclang -disable-O0-optnone -ffreestanding -target i386-pc-linux-gnu -emit-llvm -S history-eq/c/zstd/64205b78/copy16.c -o history-eq/c/zstd/64205b78/copy16-O0.ll
sed -e 's/ nocapture//g' -e '/^!llvm.module.flags/,$d' history-eq/c/zstd/64205b78/copy16-O0.ll > history-eq/c/zstd/64205b78/copy16-O0.checked.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=zstd_old_copy16 --tgt-fn=zstd_new_copy16 history-eq/c/zstd/64205b78/copy16-O0.checked.ll
```

This proves the changed helper body under the LLVM model, not the complete zstd public API, generated GCC machine code, or a benchmark speedup. The commit's performance intent comes from its upstream message; no official zstd benchmark before/after result is attached here.
