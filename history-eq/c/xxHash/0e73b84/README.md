# xxHash `0e73b84`: NEON refactor

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
old and new `xxhash.h` files are the exact Git blobs in [the result](result.json).
The change rewrites `XXH3_accumulate_512_neon` and rearranges
`XXH3_scrambleAcc_neon`. The existing [accumulator wrapper](../620facc/wrap_neonm.c)
and this case's [scramble wrapper](wrap_scramble.c) return all 64 accumulator
bytes for arbitrary initialized inputs. Their LLVM bodies have no loops or
unresolved calls.

For AArch64 Clang 20 `-O3`, Alive2 proves **both directions** for both functions
at every documented `XXH3_NEON_LANES` value: 2, 4, 6, and 8. The default
AArch64 lane count in this revision is 6. The changed accumulation path is
present at 4, 6, and 8 lanes; the normalized old/new LLVM bodies differ at
those counts. At 2 lanes, the bodies are identical. Scramble's normalized
bodies are identical at all four counts. The 16 directional [proof logs](.)
each report one correct transformation and zero errors.

The [NEON model](../620facc/neon_model.h) expresses unsigned widening
multiplication as zero-extended 64-bit vector arithmetic. The checker driver
models each empty tied-register compiler guard as identity on initialized
inputs. These are explicit assumptions about the translation, not a proof of
the corresponding machine instructions. Public hash calls, ARMv7, other
compiler/configuration paths, and whole-commit behavior remain unverified.

To reproduce from the project root, materialize the exact headers and run the
shared checker on both wrappers at each lane count:

```sh
mkdir -p /tmp/veriop-0e73b84/{old,new}
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show 0e73b84c9a382679f1dad6a2567f5303816cce4e^:xxhash.h > /tmp/veriop-0e73b84/old/xxhash.h
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show 0e73b84c9a382679f1dad6a2567f5303816cce4e:xxhash.h > /tmp/veriop-0e73b84/new/xxhash.h
for lane in 2 4 6 8; do
  for target in acc scr; do
    if [ "$target" = acc ]; then
      wrapper=history-eq/c/xxHash/620facc/wrap_neonm.c
      func=target_acc512_neon
    else
      wrapper=history-eq/c/xxHash/0e73b84/wrap_scramble.c
      func=target_scramble_neon
    fi
    python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
      --out "/tmp/veriop-0e73b84/$target-l$lane" \
      --old-inc /tmp/veriop-0e73b84/old --new-inc /tmp/veriop-0e73b84/new \
      --old-inc history-eq/c/xxHash/620facc --new-inc history-eq/c/xxHash/620facc \
      --old-inc history-eq/c/xxHash/_work2020/inc \
      --new-inc history-eq/c/xxHash/_work2020/inc \
      --wrapper "$wrapper" --func "$func" --target aarch64-linux-gnu \
      --cflags "-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000 -DXXH_VECTOR=XXH_NEON -DXXH3_NEON_LANES=$lane" \
      --smt-to 30000 --timeout 45
  done
done
```

No official historical before/after xxHash benchmark score is available for
this pair.
