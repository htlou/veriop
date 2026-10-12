# xxHash `94e7193e`: AArch64 compiler guard and rerolling

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
exact parent and child `xxhash.h` blobs are recorded in [the result](result.json).
The child enables the compiler guard in `XXH32_round` on AArch64, factors
other guards into a macro, and changes the AArch64 `XXH64` reroll default.

The [wrapper](wrap_public.c) passes 64 arbitrary initialized input bytes and
an arbitrary seed to the public `XXH32` and `XXH64` functions. Clang 20 `-O3`
builds the exact old and new headers for AArch64 and x86-64 SSE4.1. The four
target bodies contain only supported LLVM funnel-shift intrinsics as calls
and have no residual loops. Alive2 proves both functions in both directions
on both targets: **8/8 function-direction checks** in the archived
[AArch64 forward](aarch64-forward.log), [AArch64 reverse](aarch64-reverse.log),
[x86 forward](x86_64_sse41-forward.log), and
[x86 reverse](x86_64_sse41-reverse.log) logs.

The normalized AArch64 `XXH32` bodies differ and exercise the changed guard:
the old target has no empty guard calls, while the new target has 16. The
x86-64 guard counts are 16 on both sides. The checker models an empty
tied-register compiler guard as identity on initialized inputs. This explicit
modeling assumption is required for the proof. Other input lengths, public
XXH3 calls, other targets and debug/build configurations remain unverified.

Reproduce from the project root:

```sh
mkdir -p /tmp/veriop-94e7193e/{old,new}
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show 94e7193eeaad2829f70aef9b9de4e52fac9bef5d^:xxhash.h > /tmp/veriop-94e7193e/old/xxhash.h
GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash show 94e7193eeaad2829f70aef9b9de4e52fac9bef5d:xxhash.h > /tmp/veriop-94e7193e/new/xxhash.h
for arch in aarch64-linux-gnu x86_64-linux-gnu; do
  if [ "$arch" = aarch64-linux-gnu ]; then
    flags='-O3 -w -nostdlibinc -isystem /srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/cross_sysinc -Dstatic_assert=_Static_assert -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000'
  else
    flags='-O3 -w -msse4.1 -DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000'
  fi
  python3 -B history-eq/c/xxHash/620facc/xx_alive_ident.py \
    --out "/tmp/veriop-94e7193e/$arch" \
    --old-inc /tmp/veriop-94e7193e/old \
    --new-inc /tmp/veriop-94e7193e/new \
    --old-inc history-eq/c/xxHash/_work2020/inc \
    --new-inc history-eq/c/xxHash/_work2020/inc \
    --wrapper history-eq/c/xxHash/94e7193e/wrap_public.c \
    --func target_xxh32_64 --target "$arch" \
    --cflags "$flags" --smt-to 60000 --timeout 75
done
```

No official historical before/after xxHash benchmark score is available for
this pair.
