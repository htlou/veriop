# HACL* `011e8dc6`: precomputation callback wrappers

**Verdict: `EQUIV_PARTIAL` for the changed callback invocations in F* source semantics.** The historical parent is `4408054ef8dcf4a7feb2a34b33218f302ede4d1c`; the child is `011e8dc629848c8f382aa29da574f35329507e05`. The optimization wraps `BE.lprecomp_get_consttime len ctx_len k l table_len` in a `[@CInline]` helper for Ed25519 and K256, then passes that helper at four call sites in each module.

The [source audit](source-audit.log) checked the complete [exact historical diff](../source-screening/011e8dc6.source.diff) by SHA-256 and Git blob content. Both wrappers bind the same five static arguments as their old direct callbacks (`len=20` for Ed25519, `len=15` for K256; `ctx_len=0`, `l=4`, `table_len=16`, and the same curve-specific `k`) before calling `BE.lprecomp_get_consttime` with the same dynamic arguments. It confirms all eight old callback uses were replaced.

The [F* proof module](WrapperIdentity.fst) treats the underlying precomputation as an arbitrary state transformer and proves the old direct call equals the new wrapper call for every input state and static argument, including both historical lengths. The installed F* verifier discharged every condition ([log](fstar-proof.log), [exit status](fstar-proof.exit)). This proof uses no axiom about the precomputation body; it is a beta-reduction identity tied to the historical source by the audit.

Reproduce from the project root:

```sh
python3 history-eq/fstar/hacl-star/011e8dc6/audit_source.py
benchmarks/tools/kuiper-package/inst/bin/fstar.exe \
  --smt benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 \
  --cache_off history-eq/fstar/hacl-star/011e8dc6/WrapperIdentity.fst
```

This does not verify the entire historical HACL* module, generated C, `[@CInline]` extraction behavior, or a cryptographic public API. No official before/after performance benchmark for this commit was run.
