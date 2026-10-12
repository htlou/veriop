# xxHash `abf8f038`: ARM NEON accumulation reorder

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
parent and child `xxhash.h` files are the exact Git blobs recorded in
[the result](result.json). The change reorders scalar and NEON rounds,
reassociates additions, and changes vector loads in
`XXH3_accumulate_512_neon` and `XXH3_scrambleAcc_neon`. The existing
[wrapper](../e6732e9/wrap_accm.c) supplies arbitrary initialized 64-byte
accumulator, input, and secret arrays and observes every accumulator byte.

Clang 20 `-O3` produced differing old/new LLVM bodies for the accumulator at
NEON lane counts 2, 4, 6, and 8. Six is the default AArch64 setting
in this revision. The shared [NEON multiplication model](../e6732e9/neon_model.h)
expresses widening unsigned multiplication in generic LLVM arithmetic on
both sides. The checked functions contain no residual assembly or unresolved
calls. Alive2 proves old→new and new→old for both functions at every lane
count: **16 function-direction checks** in the `a64-l{2,4,6,8}` directories.
Each [default-lane forward](a64-l6/fwd.log) and
[reverse](a64-l6/bwd.log) log reports two correct transformations, no failures,
and no errors. The IR hashes, configuration, and per-lane outcomes are in
[result.json](result.json).

Reproduce from the project root:

```sh
mkdir -p /tmp/veriop-abf8f038/{old,new}
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show abf8f0388744^:xxhash.h > /tmp/veriop-abf8f038/old/xxhash.h
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show abf8f0388744:xxhash.h > /tmp/veriop-abf8f038/new/xxhash.h
for lane in 2 4 6 8; do
  lane_flag="-DXXH3_NEON_LANES=$lane"
  if [ "$lane" = 6 ]; then lane_flag=; fi
  python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
    --out "history-eq/c/xxHash/abf8f038/a64-l$lane" \
    --old-inc /tmp/veriop-abf8f038/old --new-inc /tmp/veriop-abf8f038/new \
    --old-inc history-eq/c/xxHash/_work2020/inc \
    --new-inc history-eq/c/xxHash/_work2020/inc \
    --wrapper history-eq/c/xxHash/e6732e9/wrap_accm.c \
    --func target_acc512_neon --func target_scramble_neon \
    --target aarch64-linux-gnu \
    --cflags "-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000 -DXXH_VECTOR=XXH_NEON $lane_flag" \
    --smt-to 30000 --timeout 35
done
```

This proves the two internal function outputs only for the specified Clang
AArch64 builds. The commit also changes GCC-specific loads and ARMv7 memory
access/unrolling; no AArch64 cross-GCC is installed here, so those paths and
public hash calls remain unverified. No official historical before/after
benchmark score was measured.
