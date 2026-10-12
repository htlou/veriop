# xxHash `6090b0d1`: 128-bit stream-update dispatch

**Selected label: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The commit changes only `xxh_x86dispatch.c`. The [parent](source.old.c), [child](source.new.c), [diff](source.diff), and unchanged historical [`xxhash.h`](xxhash.h) and [`xxh3.h`](xxh3.h) are exact Git objects, rechecked by [`verify.py`](verify.py).

Before the change, `XXH3_128bits_update_dispatch` selected an accumulate/scramble callback pair from `k_coreFunc` and passed it to `XXH3_update`. After the change, `k_dispatch128` selects one of four new update wrappers; each wrapper passes the corresponding callback pair to the same `XXH3_update`. The source audit checks the table entries, all four wrapper bodies, and the common header. The [old](old.c) and [new](new.c) projections take the already-selected backend as an input. They use the same arbitrary state pointer, input pointer, and length, and leave `XXH3_update` opaque. Alive2 proves the returned result and modeled call effects equal in [both](forward.log) [directions](reverse.log) for scalar, SSE2, AVX2, and AVX512. The optimized LLVM functions are identical after the wrappers are inlined. [Result hashes](result.json) lock the inputs and logs.

This proves the **initialized backend dispatch relation**, not the full historical streaming call. The direct Alive2 attempt on both complete historical C files stopped at an [unsupported change to a mutable global dispatch table](full-entry-attempt.log); it gave no whole-entry verdict. CPU feature detection, initialization timing, the actual `XXH3_update` implementation, and public hash results remain unproved. No official before/after benchmark score was measured.

Reproduce the source audit and local proof from the project root:

```sh
python3 -B history-eq/c/xxHash/6090b0d1/verify.py
```

To repeat the direct historical-entry attempt, compile both archived complete C files and compare the same named entry:

```sh
alive2/toolchain/usr/lib/llvm-20/bin/clang -O0 -S -emit-llvm history-eq/c/xxHash/6090b0d1/source.old.c -o /tmp/xxh6090-full-old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -O0 -S -emit-llvm history-eq/c/xxHash/6090b0d1/source.new.c -o /tmp/xxh6090-full-new.ll
alive2/build/alive2/alive-tv --func=XXH3_128bits_update_dispatch --always-verify /tmp/xxh6090-full-old.ll /tmp/xxh6090-full-new.ll
```
