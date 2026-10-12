# xxHash `620facc`: four-lane NEON accumulator

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
parent and child `xxhash.h` files are exact Git blobs. The wrapper
[`wrap_neonm.c`](wrap_neonm.c) copies arbitrary initialized accumulator,
input, and secret bytes into local 64-byte arrays, calls the historical
`XXH3_accumulate_512_neon`, and returns all eight accumulator lanes. With
`XXH3_NEON_LANES=4` on AArch64, the child executes its changed paired-lane
loop. The old and new target IR differ, have no loops or unresolved calls,
and have the hashes recorded in [the recheck result](recheck-l4-result.json).

Both fresh Alive2 directions pass for the entire wrapper output:
[old→new](recheck-l4-forward.log) and [new→old](recheck-l4-reverse.log).
The LLVM translation uses the shared [`neon_model.h`](neon_model.h) to express
NEON unsigned widening multiplication as zero-extended 64-bit arithmetic.
It also treats empty, tied-register compiler-guard assembly as identity on
initialized inputs. These are explicit modeling assumptions, not a proof of
every ARM instruction. ARMv7, other lane configurations, scramble, and public
hash calls remain unverified; an older modeled ARMv7 attempt reported a
counterexample whose source-level significance has not been established.

Rebuild and recheck from the project root with the existing checker driver:

```sh
python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
  --out /tmp/veriop-620facc-l4-recheck \
  --old-inc history-eq/c/xxHash/620facc/old \
  --new-inc history-eq/c/xxHash/620facc/new \
  --old-inc history-eq/c/xxHash/_work2020/inc \
  --new-inc history-eq/c/xxHash/_work2020/inc \
  --wrapper history-eq/c/xxHash/620facc/wrap_neonm.c \
  --func target_acc512_neon --target aarch64-linux-gnu \
  --cflags '-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000 -DXXH_VECTOR=XXH_NEON -DXXH3_NEON_LANES=4' \
  --smt-to 600000 --timeout 30
```

No official before/after xxHash benchmark score was measured for this pair.
