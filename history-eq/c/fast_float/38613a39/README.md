# `38613a39`: eight-digit scan refactor

**Verdict: verified difference on the unrestricted public `from_chars<double,char16_t>` API.** This sampled commit, titled “Fix perf decrease when UC = char,” reorganizes the eight-digit scan in [the exact two-file diff](source-scoped.diff). It also removes the 0xff mask before packing eight `char16_t` SIMD lanes. The changed packing yields different values for some high-bit code units that both versions' SIMD check accepts.

The [Alive2 scan wrapper](wrap.cpp) compares the exact old and new loop calls for eight arbitrary `char` or `char16_t` units and arbitrary initial accumulator. Both [old→new](fwd.log) and [new→old](bwd.log) return 3 correct and 1 incorrect transformation; only the `char16_t` accumulator differs. The source and target [LLVM IR](old.ll) and [LLVM IR](new.ll) are distinct. Clang 20 lacks GCC's `_mm_cvtsi128_si64x` intrinsic spelling, so both sides were compiled with `-D_mm_cvtsi128_si64x=_mm_cvtsi128_si64`. The installed GCC and Clang intrinsic headers implement both spellings as extraction of the low 64 bits; the historical source was otherwise unmodified.

Alive2 also rejects equality of a [fixed-input historical parser call](parser.cpp): [old→new](parser-fwd.log) and [new→old](parser-bwd.log) both report the mantissa difference **127263718 vs 241393937**. The ten code units are `0`, `.`, then `840a c02c c004 8101 8100 a000 a000 a025` in hexadecimal. These are not ordinary decimal digits. The checker IR symmetrically drops only `llvm.loop`, `tbaa`, and `noalias` metadata attachments ([old](parser-old-tv.ll), [new](parser-new-tv.ll)).

The same [public API witness](witness.cpp), compiled separately against the exact historical headers with GCC 11.4.0 `-O2 -msse2`, gives [old](witness-old.log) and [new](witness-new.log) results: both return success and consume 10 code units, but the double output bits are **`3ff45cb8cdbc60ef` vs `40034fbf71c56a2d`**. Rebuilding both with AddressSanitizer and UndefinedBehaviorSanitizer produces the same [old](sanitized-old.log) and [new](sanitized-new.log) outputs without diagnostics. A direct [Alive2 public-API attempt](public-fwd.log) stopped because the installed checker cannot translate a volatile floating-point load in `rounds_to_nearest`; the public verdict rests on the two historical native executions, corroborated by Alive2 at the changed parser boundary.

This counterexample is outside valid ASCII decimal-digit input. It shows a real unrestricted API behavior change; it does not show that normal numeric strings differ. No official historical before/after benchmark score was measured here.

Reproduce the witness and the changed-loop check from the project root:

```sh
mkdir -p /tmp/ff-386-old /tmp/ff-386-new
git -C benchmarks/repos/fast_float archive 38613a39^ include | tar -x -C /tmp/ff-386-old
git -C benchmarks/repos/fast_float archive 38613a39 include | tar -x -C /tmp/ff-386-new
g++ -std=c++20 -O2 -msse2 -I /tmp/ff-386-old/include history-eq/c/fast_float/38613a39/witness.cpp -o /tmp/ff-386-witness-old
g++ -std=c++20 -O2 -msse2 -I /tmp/ff-386-new/include history-eq/c/fast_float/38613a39/witness.cpp -o /tmp/ff-386-witness-new
/tmp/ff-386-witness-old
/tmp/ff-386-witness-new
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/38613a39/old.ll history-eq/c/fast_float/38613a39/new.ll
alive2/build/alive2/alive-tv --func=target_parser_mantissa --always-verify history-eq/c/fast_float/38613a39/parser-old-tv.ll history-eq/c/fast_float/38613a39/parser-new-tv.ll
```
