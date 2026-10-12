# `6484c736`: remove the integer eight-digit fast path

**Fixed-sample verdict: `EQUIV_PARTIAL`; whole-parser verdict: UNKNOWN.** The [historical diff](source-scoped.diff) removes the eight-digit SWAR scan from the integer part of `parse_number_string`, leaving its scalar digit loop. The performance motivation is inferred from the title, diff, and [upstream issue #151](https://github.com/fastfloat/fast_float/issues/151), which discusses overhead on short numbers. No official before/after performance score was measured.

The [source-locked proof script](prove_digit_arithmetic.py) generated [21 UNSAT SMT queries](digit_arithmetic/result.json), with individual [SMT-LIB inputs](digit_arithmetic/). Together they prove that, for every eight valid ASCII decimal bytes on the x86-64 little-endian target, the old SWAR `parse_eight_digits_unrolled` value equals the new scalar eight-digit value. The queries check ASCII subtraction, each two-digit lane and its range, SWAR masks, multiplier expansion, carry bounds, and decimal place values. The helper is byte-identical across the two revisions; the commit removes only its use in the integer-part loop and retains a use in the fractional loop. This is a **direct Z3 proof, not a Kuiper proof**, and covers neither input scanning/control flow nor the complete returned parser fields.

Both revisions were compiled from their exact historical `include/` trees with Clang 20.1.8, `-std=c++17 -O2`, for x86-64. The [wrapper](wrap.cpp) calls the real parser on eight arbitrary input bytes and exposes its ten scalar result fields. Old and new [LLVM IR](old.ll) / [LLVM IR](new.ll) differ. Alive2's old→new mantissa query [timed out at 30 seconds](mantissa-fwd.log) and [again at 90 seconds](mantissa-fwd-90s.log). A second [wrapper](digits.cpp) constructs eight valid decimal digits; its old→new [mantissa query](digits-fwd.log) timed out at 60 seconds. A source-audited [arithmetic comparison](digit_lemma.cpp) between the old SWAR digit value and the new scalar digit value timed out [forward](lemma-fwd.log) and [reverse](lemma-bwd.log) at 30 seconds. Every Alive2 log reports zero correct, zero incorrect, one failed-to-prove transformation, and zero Alive2 errors. Those Alive2 queries remain inconclusive.

To reproduce from the project root, extract both header trees and run the saved IR checks:

```sh
mkdir -p /tmp/ff-648-old /tmp/ff-648-new
git -C benchmarks/repos/fast_float archive 6484c736^ include | tar -x -C /tmp/ff-648-old
git -C benchmarks/repos/fast_float archive 6484c736 include | tar -x -C /tmp/ff-648-new
alive2/build/alive2/alive-tv --always-verify --func=_Z11parse_fieldILi0EEmm --smt-to=90000 history-eq/c/fast_float/6484c736/old-tv.ll history-eq/c/fast_float/6484c736/new-tv.ll
alive2/build/alive2/alive-tv --always-verify --func=target_eight_digits --smt-to=60000 history-eq/c/fast_float/6484c736/digits-old-tv.ll history-eq/c/fast_float/6484c736/digits-new-tv.ll
alive2/build/alive2/alive-tv --always-verify --func=target_digit_value --smt-to=30000 history-eq/c/fast_float/6484c736/lemma-old.ll history-eq/c/fast_float/6484c736/lemma-new.ll
alive2/build/alive2/alive-tv --always-verify --func=target_digit_value --smt-to=30000 history-eq/c/fast_float/6484c736/lemma-new.ll history-eq/c/fast_float/6484c736/lemma-old.ll
LD_LIBRARY_PATH=benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin PYTHONPATH=benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/python python3 history-eq/c/fast_float/6484c736/prove_digit_arithmetic.py
```

The `*-tv.ll` files symmetrically remove only `llvm.loop`, `tbaa`, and `noalias` metadata attachments for Alive2 parsing. All six saved IR files passed LLVM 20 `opt -passes=verify`.
