# xxHash `02303104`: four-lane NEON accumulator

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
parent and child `xxhash.h` versions are the exact historical Git blobs listed
in [the result](result.json). The change removes temporary accumulator vectors
from the paired-lane loop and changes the compiler-guard condition for GCC.

The existing [wrapper](../620facc/wrap_neonm.c) calls
`XXH3_accumulate_512_neon` with arbitrary initialized 64-byte accumulator,
input, and secret arrays and returns all 64 accumulator bytes. Clang 20 `-O3`
targets AArch64 with `XXH3_NEON_LANES=4`, so the changed paired-lane loop is
executed. Both LLVM IR bodies have no residual call or loop. After modeling
the two empty tied-register compiler guards as identity, their target bodies
are identical, and Alive2 verifies both directions:
[old→new](forward.log), [new→old](reverse.log). The shared
[NEON model](../620facc/neon_model.h) expresses unsigned widening multiply
using zero-extension and 64-bit vector multiplication. These are explicit
translation assumptions.

To reproduce from the project root, materialize the exact headers and invoke
the existing checker driver:

```sh
mkdir -p /tmp/veriop-02303104/{old,new,result}
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show 02303104dfef67b4da1d513ef73ff57ffdd758d3^:xxhash.h > /tmp/veriop-02303104/old/xxhash.h
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show 02303104dfef67b4da1d513ef73ff57ffdd758d3:xxhash.h > /tmp/veriop-02303104/new/xxhash.h
python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
  --out /tmp/veriop-02303104/result \
  --old-inc /tmp/veriop-02303104/old --new-inc /tmp/veriop-02303104/new \
  --old-inc history-eq/c/xxHash/_work2020/inc \
  --new-inc history-eq/c/xxHash/_work2020/inc \
  --wrapper history-eq/c/xxHash/620facc/wrap_neonm.c \
  --func target_acc512_neon --target aarch64-linux-gnu \
  --cflags '-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000 -DXXH_VECTOR=XXH_NEON -DXXH3_NEON_LANES=4' \
  --smt-to 30000 --timeout 30
```

The GCC-only guard change, ARMv7, other lane configurations, public hash calls,
and the entire commit remain unproved. No official historical before/after
xxHash benchmark score is available for this pair.
