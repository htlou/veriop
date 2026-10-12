# `cb5d9cd9`: skip spans on the floating-point hot path

**Verdict: partial bidirectional equivalence.** The [historical diff](source-scoped.diff) changes the floating-point caller from the old three-argument `parse_number_string<false,char>` call to the new call with `store_spans=false`. The [wrapper](wrap.cpp) compares those exact selected calls on eight arbitrary `char` bytes with a ninth sentinel and default parse options. It observes seven scalar fields: mantissa, exponent, consumed position, sign, validity, `too_many_digits`, and parse error. The integer and fraction spans are intentionally absent in the new hot-path result and are not asserted equal.

The parent and child [LLVM IR](old.ll) [modules](new.ll) differ and pass LLVM verification. The selected parser body is inlined in all seven target functions; their only remaining calls are LLVM lifetime intrinsics. Alive2 reports **14/14 correct** transformations, [parent→child](target_mantissa-fwd.log) and [child→parent](target_mantissa-bwd.log) for mantissa and likewise for [exponent](target_exponent-fwd.log), [consumed position](target_consumed-fwd.log), [sign](target_negative-fwd.log), [validity](target_valid-fwd.log), [`too_many_digits`](target_too_many_digits-fwd.log), and [error](target_error-fwd.log). The [Alive2 inputs](old-tv.ll) and [child input](new-tv.ll) symmetrically omit TBAA, noalias, and loop metadata attachments.

The child reparses with `store_spans=true` in its slow path; this check does not prove that public floating-point conversion remains equivalent. It also does not cover longer inputs or other formats. No official historical before/after benchmark score was measured.

Run all seven bidirectional checks from the project root:

```sh
for field in mantissa exponent consumed negative valid too_many_digits error; do
  alive2/build/alive2/alive-tv --func=target_${field} --always-verify --smt-to=30000 history-eq/c/fast_float/cb5d9cd9/old-tv.ll history-eq/c/fast_float/cb5d9cd9/new-tv.ll
  alive2/build/alive2/alive-tv --func=target_${field} --always-verify --smt-to=30000 history-eq/c/fast_float/cb5d9cd9/new-tv.ll history-eq/c/fast_float/cb5d9cd9/old-tv.ll
done
```
