# HACL* `1f18372b`: P256 specification modular exponentiation

**Verdict: `EQUIV_PARTIAL` for the source-mapped arithmetic; the historical F* module remains unverified.** Commit `1f18372ba66051d9a781ed8a75f5af441779bdd2` changes `modp_inv2_pow(x)` from `pow x (prime256 - 2) % prime256` to `exp #prime256 (x % prime256) (prime256 - 2)` to speed specification checking. The parent is `9a9a5071b845693f5812ca56da7fbd2c537e2a01`. The [source audit](source-audit.log) matches the exact [historical diff](../source-screening/1f18372b.source.diff) and checks that the [isolated relation file](P256Relation.fst) contains the historical `pow`, `exp`, and supporting lemma definitions without `admit` or an assumed theorem.

The relation file generalizes `prime256` to any modulus `n > 3`, defines the exact old/new expressions with exponent `n - 2`, and asks F* to prove equality for all natural `x`. It uses the same file's historical `power_distributivity` and `lemma_pow_mod_n_is_fpow` proof bodies. The compatible EverParse F* toolchain was run with its bundled Z3. Both the original [120-second attempt](fstar-attempt.log) and a [300-second retry](fstar-attempt-300s.log) ended with [timeout status 124](fstar-attempt-300s.exit) before F* produced a verification result; the logs contain only an upstream-library pattern warning.

A separate [Lean 4 proof](P256Fast.lean) translates the historical `pow` and positive-exponent `exp`/`fmul` equations. It proves the slow `pow` recurrence equals natural-number exponentiation and, by strong induction, the squaring recurrence equals exponentiation modulo `n` for every reduced base and positive exponent. The final theorem proves the old and new expressions equal for **every** natural `x` and modulus `n > 3`, including the historical P-256 prime. The [checker log](lean-proof.log) lists only Lean's standard `propext` and `Quot.sound` axioms, with no `sorryAx`. Lean's zero-exponent branch is deliberately outside the theorem because F* `exp` accepts only a positive exponent.

This is a proof of the source-mapped arithmetic relation, not a completed F* verification of the historical module or an extracted-program equivalence check. The complete historical module was not built here because unchanged historical dependencies are unavailable locally. The four-category report therefore still counts this commit as unverified.

Reproduce from the project root:

```sh
python3 history-eq/fstar/hacl-star/1f18372b/audit_source.py
lean history-eq/fstar/hacl-star/1f18372b/P256Fast.lean
timeout --signal=INT --kill-after=5s 120s \
  benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe \
  --smt benchmarks/tools/everparse-2026.10.06/everparse/lib/fstar/z3-4.13.3/bin/z3 \
  --already_cached '*' --cache_off \
  history-eq/fstar/hacl-star/1f18372b/P256Relation.fst
```

No official before/after HACL* benchmark score for this commit was measured.
