# `41ee3470`: eight-digit SWAR rewrite

**Verdict: local old→new refinement for the guarded eight-digit fast path.** The [historical diff](source-scoped.diff) changes both the digit predicate and the unconditional arithmetic helper. The parser calls the helper only after the predicate succeeds. The [wrapper](wrap.cpp) compares that exact guard-and-convert pattern on all eight-byte inputs, returning `UINT64_MAX` when the guard fails.

Both historical [old IR](old.ll) and [new IR](new.ll) differ and pass LLVM verification. Alive2 proves the digit predicate in [both](target_predicate-fwd.log) [directions](target_predicate-bwd.log). On the guarded value, [old→new](guarded-fwd.log) verifies without a failed proof or checker error. The [reverse check](guarded-bwd.log) reaches the 120-second SMT limit, so bidirectional equivalence is not established.

The unguarded arithmetic helper is [different old→new](target_raw_value-fwd.log) and [new→old](target_raw_value-bwd.log) on eight NUL bytes: old returns 0, new returns 241393937. [Historical native controls](native-controls.log) confirm that both callers reject NUL bytes and `12x45678`, while both accept `12345678` and return the same guarded value. The raw-helper counterexample is not a public parsing counterexample. Other lengths and the full parser remain outside the established refinement. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-41-old /tmp/ff-41-new
git -C benchmarks/repos/fast_float archive 41ee3470^ include | tar -x -C /tmp/ff-41-old
git -C benchmarks/repos/fast_float archive 41ee3470 include | tar -x -C /tmp/ff-41-new
alive2/build/alive2/alive-tv --func=target_guarded_value --always-verify --smt-to=120000 history-eq/c/fast_float/41ee3470/old-tv.ll history-eq/c/fast_float/41ee3470/new-tv.ll
alive2/build/alive2/alive-tv --func=target_guarded_value --always-verify --smt-to=120000 history-eq/c/fast_float/41ee3470/new-tv.ll history-eq/c/fast_float/41ee3470/old-tv.ll
```
