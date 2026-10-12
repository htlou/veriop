# `b57a1227`: Clang branch hints and fixed-format dispatch

**Verdict: partial bidirectional equivalence.** The [historical diff](source-scoped.diff) adds branch hints to the two rare fix-ups in `compute_float` and a fixed-format dispatch path to `from_chars`. The [wrapper](wrap.cpp) calls the actual historical `compute_float<binary_format<double>>` on arbitrary signed 64-bit exponent and unsigned 64-bit mantissa, returning each field of `adjusted_mantissa` separately.

The [parent IR](old.ll) and [child IR](new.ll) differ and pass LLVM verification. Their helper bodies are fully inlined into the wrapper. Alive2 proves mantissa [parent→child](mantissa-fwd.log) and [child→parent](mantissa-bwd.log), and power2 [parent→child](power2-fwd.log) and [child→parent](power2-bwd.log): **4/4 correct**, with zero failed proofs or checker errors. The [Alive2 inputs](old-tv.ll) and [child input](new-tv.ll) symmetrically omit TBAA and the child's branch-profile metadata attachments.

The fixed-format public call path, other floating types, and full `from_chars` behavior remain unproved. No official historical before/after performance benchmark score was measured.

Reproduce from the project root:

```sh
for field in mantissa power2; do
  alive2/build/alive2/alive-tv --func=target_${field} --always-verify --smt-to=30000 history-eq/c/fast_float/b57a1227/old-tv.ll history-eq/c/fast_float/b57a1227/new-tv.ll
  alive2/build/alive2/alive-tv --func=target_${field} --always-verify --smt-to=30000 history-eq/c/fast_float/b57a1227/new-tv.ll history-eq/c/fast_float/b57a1227/old-tv.ll
done
```
