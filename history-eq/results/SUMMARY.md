# Historical performance commits — equivalence-checker statistics

Alive2 checks for a counterexample: UNSAT proves a refinement direction, while SAT with a valid model refutes it. Unknown/timeout is inconclusive.

| Repo | Checker | Perf commits | EQUIV | EQUIV_BOUNDED | EQUIV_UNDER_PRECOND | EQUIV_PARTIAL | REFINES | NOT_EQUIV | UNKNOWN | UNSUPPORTED | checked (≡/⊑) | checked/full coverage | checked/partial coverage | changed (≢) | inconclusive | unsupported |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| libdivide | C / Alive2 | 33 | 1 | 2 | 0 | 0 | 0 | 4 | 20 | 6 | 3 (9%) | 3 (9%) | 0 (0%) | 4 (12%) | 20 (61%) | 6 (18%) |
| xxHash | C / Alive2 | 131 | 13 | 19 | 0 | 6 | 1 | 19 | 40 | 33 | 39 (30%) | 17 (13%) | 22 (17%) | 19 (15%) | 40 (31%) | 33 (25%) |
| rust-base64 | Rust / Aeneas | 25 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 23 | 2 (8%) | 2 (8%) | 0 (0%) | 0 (0%) | 0 (0%) | 23 (92%) |
| lz4_flex | Rust / Aeneas | 75 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 74 | 1 (1%) | 1 (1%) | 0 (0%) | 0 (0%) | 0 (0%) | 74 (99%) |
| **Total** | | **264** | **16** | **21** | **0** | **6** | **2** | **23** | **60** | **136** | **45 (17%)** | **23 (9%)** | **22 (8%)** | **23 (9%)** | **60 (23%)** | **136 (52%)** |

## Selection funnel

| Repo | commits touching library source | keyword candidates | manual-scan additions | perf commits |
|---|---|---|---|---|
| libdivide | 200 | 48 | 9 | 33 |
| xxHash | 715 | 173 | 37 | 131 |
| rust-base64 | 240 | 42 | 9 | 25 |
| lz4_flex | 320 | 91 | 13 | 75 |

The rust-base64 funnel above is the earlier study's 240-commit count. At the current pinned SHA, the wider `src/` pathspec has 256 commits; the current production-only pathspec has 239, and the [17-commit difference](rust-base64-scope-reconciliation.json) changes only tests or the binary entry file. All 25 earlier optimization commits resolve to exact production-history commits at this pin. The [pinned optimization sample](rust-base64-optimization-sample.json) keeps their existing Aeneas/Lean verdicts. The two full-result Lean files were rechecked successfully; their proof logs list the external Aeneas model assumptions, so these are conditional model-level results.

The [xxHash pinned optimization sample](xxHash-optimization-sample.json) maps all 131 earlier Alive2 results to exact commits in the current 715-commit source history. All 94 confirmed optimizations in the fixed keyword sample belong to that set. This is a scope reconciliation, not a new Alive2 or official performance benchmark run.

## Unsupported reasons

- **libdivide**: non-x86-target-intrinsics 3, interface-or-state-layout-change 2, other 1
- **xxHash**: non-x86-target-intrinsics 14, other 6, inline-asm 5, alive2-crash-or-parse-error 4, interface-or-state-layout-change 2, global-state-or-dispatch 1, compile-time-or-build-only 1
- **rust-base64**: aeneas-error 19, missing-std-model 3, lean-model-typecheck-error 1
- **lz4_flex**: unsafe-raw-pointers 29, aeneas-error 25, lean-model-typecheck-error 10, missing-std-model 9, new-code-does-not-build 1

## Kinds of verified semantic change (NOT_EQUIV)

- **libdivide**: intended-output-change 2, bug 1, ub-domain-change 1
- **xxHash**: intended-output-change 11, other 4, ub-domain-change 2, bug 2

## Partial evidence explicitly tagged in UNSUPPORTED / UNKNOWN commits

These counts are lower bounds: they include proved or refuted report units, not additional cases described only in unit evidence.

| Repo | commits with ≥1 unit proved (≡/⊑) | commits with ≥1 unit refuted (≢) |
|---|---|---|
| libdivide | 5 / 26 | 4 / 26 |
| xxHash | 29 / 73 | 1 / 73 |
| rust-base64 | 3 / 23 | 2 / 23 |
| lz4_flex | 11 / 74 | 7 / 74 |

## Raw-level vs API-level verdict differences

- **libdivide**: raw NOT_EQUIV → api UNKNOWN: 6, raw REFINES → api UNKNOWN: 1, raw EQUIV_BOUNDED → api UNKNOWN: 1, raw NOT_EQUIV → api EQUIV: 1, raw NOT_EQUIV → api EQUIV_BOUNDED: 1
- **xxHash**: raw EQUIV → api UNSUPPORTED: 5, raw EQUIV → api EQUIV_PARTIAL: 4, raw EQUIV → api UNKNOWN: 2, raw EQUIV → api EQUIV_BOUNDED: 2, raw EQUIV_BOUNDED → api EQUIV: 1, raw NOT_EQUIV → api UNSUPPORTED: 1, raw EQUIV → api NOT_EQUIV: 1, raw UNKNOWN → api EQUIV_BOUNDED: 1, raw EQUIV_BOUNDED → api UNKNOWN: 1, raw EQUIV_BOUNDED → api UNSUPPORTED: 1
- **rust-base64**: raw NOT_EQUIV → api UNSUPPORTED: 2, raw UNKNOWN → api UNSUPPORTED: 1
- **lz4_flex**: raw NOT_EQUIV → api UNSUPPORTED: 7, raw EQUIV → api UNSUPPORTED: 4, raw UNKNOWN → api UNSUPPORTED: 1
