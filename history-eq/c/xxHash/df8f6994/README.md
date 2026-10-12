# xxHash `df8f6994`: split NEON and scalar lanes

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
exact historical `xxhash.h` blobs in [the result](result.json) change the
AArch64 XXH3 accumulator from eight NEON lanes to a default of six NEON plus
two scalar lanes. The same commit changes the scramble helper. The
[accumulate wrapper](../620facc/wrap_neonm.c) and
[scramble wrapper](../0e73b84/wrap_scramble.c) each return the complete 64-byte
accumulator for arbitrary initialized bytes.

Clang 20 `-O3` generated distinct old/new LLVM bodies for both helpers at the
default six lanes. Alive2 proved old→new and new→old for both complete outputs.
The explicit child configurations of 2, 4, and 8 lanes also passed in both
directions: **16/16 directional checks** in total. At eight lanes, normalized
old/new bodies are identical; at 2, 4, and 6 they differ. Each target body has
no residual call or loop. The [16 proof logs](.) each report one correct
transformation, no failed proof, and no checker error.

The shared [NEON model](../620facc/neon_model.h) translates unsigned widening
multiplication into zero-extended 64-bit vector multiplication. No empty-asm
guard substitution was needed in this case. The model is an explicit
instruction-semantics assumption; this is not a proof of every ARM machine
instruction. Public XXH3 calls, ARMv7 and other compiler configurations remain
unverified.

To reproduce from the project root, extract the headers and run the shared
checker on both wrappers. Leave the lane macro unset for the default six-lane
case; use `-DXXH3_NEON_LANES=<lane>` for 2, 4, or 8:

```sh
mkdir -p /tmp/veriop-df8f699/{old,new}
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show df8f69941ffd2378d0b5c236bbebdfb52427dc28^:xxhash.h > /tmp/veriop-df8f699/old/xxhash.h
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show df8f69941ffd2378d0b5c236bbebdfb52427dc28:xxhash.h > /tmp/veriop-df8f699/new/xxhash.h
for lane in 2 4 6 8; do
  lane_flag=""
  if [ "$lane" != 6 ]; then lane_flag="-DXXH3_NEON_LANES=$lane"; fi
  for target in acc scr; do
    if [ "$target" = acc ]; then
      wrapper=history-eq/c/xxHash/620facc/wrap_neonm.c
      func=target_acc512_neon
    else
      wrapper=history-eq/c/xxHash/0e73b84/wrap_scramble.c
      func=target_scramble_neon
    fi
    python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
      --out "/tmp/veriop-df8f699/$target-l$lane" \
      --old-inc /tmp/veriop-df8f699/old --new-inc /tmp/veriop-df8f699/new \
      --old-inc history-eq/c/xxHash/620facc --new-inc history-eq/c/xxHash/620facc \
      --old-inc history-eq/c/xxHash/_work2020/inc \
      --new-inc history-eq/c/xxHash/_work2020/inc \
      --wrapper "$wrapper" --func "$func" --target aarch64-linux-gnu \
      --cflags "-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000 -DXXH_VECTOR=XXH_NEON $lane_flag" \
      --smt-to 60000 --timeout 60
  done
done
```

No official historical before/after xxHash benchmark score is available for
this pair.
