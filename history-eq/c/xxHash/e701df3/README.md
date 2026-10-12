# xxHash `e701df3`: AArch64 multiply-add instructions

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
parent and child `xxhash.h` files are the exact Git blobs in
[the result](result.json). The child replaces part of
`XXH3_accumulate_512_neon` with AArch64 `UMADDL`, `UMLAL`, and `UMLAL2`
assembly. The [existing wrapper](../620facc/wrap_neonm.c) copies arbitrary
initialized accumulator, input, and secret bytes into separate arrays, calls
the historical function, and returns all 64 accumulator bytes.

Clang 20 `-O3` generated distinct old/new AArch64 LLVM bodies for four and six
NEON lanes. Six lanes matches the default non-Apple AArch64 setting in this
revision. The shared checker driver first models the old/new empty tied-register
guards as identity and the NEON widening intrinsics as unsigned arithmetic.
[This case's exact instruction model](model_named_asm.py) then replaces only
the child body's four or two `UMADDL` calls and one each `UMLAL`/`UMLAL2`
with their arithmetic meaning. The replacements follow Arm's
[A64 multiply overview](https://developer.arm.com/-/media/Files/pdf/graphics-and-multimedia/ARMv8_InstructionSetOverview.pdf)
and [NEON instruction reference](https://arm-software.github.io/acle/legacyreleases/advsimd/advsimd-2021Q2.pdf).
The script asserts the exact instruction counts and rejects residual assembly.

LLVM `opt -passes=instcombine,simplifycfg` verifies and simplifies both modeled
modules. Alive2 then proves old→new and new→old at each lane count: **4/4
directional checks** in the [four-lane forward](l4-modeled-forward-opt.log),
[four-lane reverse](l4-modeled-reverse-opt.log),
[six-lane forward](l6-modeled-forward-opt.log), and
[six-lane reverse](l6-modeled-reverse-opt.log) logs. The archived
`l{4,6}-{old,new,new-modeled,old-opt,new-modeled-opt}.ll` files show the
translation and checked LLVM programs. The raw [unmodeled Alive2 run](l4-unmodeled-forward.log)
reported source-more-defined-than-target because it treated the nonempty
assembly as undefined; that diagnostic is **not** a program counterexample.
The unoptimized old→new modeled query timed out, so the reported bidirectional
proof includes the same LLVM simplification on both sides.

Reproduce from the project root:

```sh
mkdir -p /tmp/veriop-e701df3/{old,new}
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show e701df3908cfd64cb7536aacd80b6074bbc5ea5f^:xxhash.h > /tmp/veriop-e701df3/old/xxhash.h
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show e701df3908cfd64cb7536aacd80b6074bbc5ea5f:xxhash.h > /tmp/veriop-e701df3/new/xxhash.h
for lane in 4 6; do
  out="/tmp/veriop-e701df3/acc-l$lane"
  python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
    --out "$out" --old-inc /tmp/veriop-e701df3/old \
    --new-inc /tmp/veriop-e701df3/new \
    --old-inc history-eq/c/xxHash/_work2020/inc \
    --new-inc history-eq/c/xxHash/_work2020/inc \
    --wrapper history-eq/c/xxHash/620facc/wrap_neonm.c \
    --func target_acc512_neon --target aarch64-linux-gnu \
    --cflags "-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000 -DXXH_VECTOR=XXH_NEON -DXXH3_NEON_LANES=$lane" \
    --smt-to 30000 --timeout 30
  expected=4
  if [ "$lane" = 6 ]; then expected=2; fi
  python3 -B history-eq/c/xxHash/e701df3/model_named_asm.py \
    "$out/new.ll" "$out/new-modeled.ll" "$expected"
  alive2/toolchain/usr/lib/llvm-20/bin/opt -S -passes=instcombine,simplifycfg \
    "$out/old.ll" -o "$out/old-opt.ll"
  alive2/toolchain/usr/lib/llvm-20/bin/opt -S -passes=instcombine,simplifycfg \
    "$out/new-modeled.ll" -o "$out/new-modeled-opt.ll"
  alive2/build/alive2/alive-tv --always-verify --smt-to=30000 \
    "$out/old-opt.ll" "$out/new-modeled-opt.ll"
  alive2/build/alive2/alive-tv --always-verify --smt-to=30000 \
    "$out/new-modeled-opt.ll" "$out/old-opt.ll"
done
```

The instruction model and LLVM simplification are explicit proof assumptions.
Other lane counts, ARMv7, public hash calls, and unrelated changes in the commit
remain unverified. No official historical before/after xxHash benchmark score
is available for this pair.
