# GitHub-enabled completion run — shared protocol (2026-10-12)

Goal: every **selected optimization** in `history-eq/results/<repo>-optimization-sample.json`
(`llama-optimization-sample.json` for llama.cpp) gets an actual checker attempt on the exact
historical old/new source, and one of four categories:
**unequal**, **equal** (equivalence/refinement), **unverified** (checker ran, inconclusive),
**unsupported** (comparison cannot be formed / checker cannot model it).

Earlier runs left 2,072 of 2,533 entries `not_run` because the sandbox had no network.
GitHub is now reachable. All changed blobs of all selected commits are already local
(`results/github-blob-fetch.json`); unchanged files of a tree are fetched on demand.

## Which entries to process

All entries whose `checker_status` is **not** `"checked"` (i.e. `not_run` or missing).
Do not redo entries already `checked`; their existing verdicts stand. Do not modify the
existing ledger JSON files — write per-case result files (below); the coordinator merges.
Keep the existing sample as is (do not re-screen intent). If the diff shows the commit has
no executable change at all in the checker's language (e.g. only docs/tests/build files/
Python tooling), record `UNSUPPORTED` with reason `no-executable-change-in-checker-language`
(or `out-of-checker-language`) and explain in `notes`.

## Tools you must use

- `python3 history-eq/tools/gh/materialize.py REPO COMMIT DEST [PATH ...]`
  → `DEST/old`, `DEST/new` (exact first-parent / commit trees, optional path filter),
  `DEST/meta.json` (changed files). Use `DEST = history-eq/gh/work/<repo>/<commit[:8]>`.
  Restrict paths for big repos (aws-lc, openssl, llama.cpp, cutlass, netty, hacl-star …);
  delete large build products when a case is done (disk has ~1.7 TB free, shared).
- Toolchains: `source benchmarks/env.sh` (Java/KeY, Go, Dafny 4.10, K, Foundry, Aeneas/Charon
  env, Z3, Volta). Alive2: `alive2/build/alive2/alive-tv`; existing wrapper
  `history-eq/tools/alive_check.py` (bidirectional, parses verdicts, flags loops).
  Lean via `elan` (several toolchains installed). F*: `aeneas/env/opam/5.3.0/bin/fstar.exe`
  and `benchmarks/tools/everparse-2026.10.06`. HOL Light: `benchmarks/tools/hol-light`.
  Previous per-case evidence directories (`history-eq/<lang>/<repo>/<commit>/`) show what
  worked before — reuse their harness patterns.
- GitHub is reachable (git, `curl`, release downloads) if you need a missing tool;
  install into `benchmarks/tools/` and record the version. Never modify `alive2/`, `aeneas/`
  sources, `benchmarks/repos/*` working trees, or `aeneas/proof/.lake/packages`.
- CPU: 384 cores shared by ~10 parallel workers → cap yourself at **32 concurrent
  processes**. Use per-query timeouts (e.g. Alive2 `--smt-to` 30–60 s, whole case ≤ 15 min).

## Verdicts (use exactly these) and category mapping

| verdict | category | meaning |
|---|---|---|
| `NOT_EQUIV` | unequal | checker produced a concrete counterexample: some input on which the new definition is not a refinement of the old one (different result, or new UB/panic/exception where old was defined). Must be the checker's own model, or a native witness confirmed by the checker. |
| `EQUIV` | equal | **every** changed executable definition of the commit (in the analysed build configuration) proved equal in both directions, unbounded. By congruence this certifies the whole commit for that configuration. |
| `REFINES` | equal | as EQUIV but only new ⊑ old (new more defined). |
| `EQUIV_UNDER_PRECOND` | equal | as EQUIV under an explicitly stated library-guaranteed precondition. |
| `EQUIV_BOUNDED` | unverified | proved only up to a loop unroll / size bound. |
| `EQUIV_PARTIAL` | unverified | some changed definitions proved, others not covered. |
| `UNKNOWN` | unverified | checker ran but was inconclusive (timeout, failed proof, solver unknown). |
| `UNSUPPORTED` | unsupported | the comparison could not be formed or modelled; give `unsupported_reason`. |

Rules:
- A counterexample on an internal helper whose interface/contract changed is **not**
  NOT_EQUIV; compare at the nearest common interface (callers / public API) instead.
  For a NOT_EQUIV, set `not_equiv_level` = `public-api` or `internal-unit` (unit with
  unchanged signature that is not public) and `not_equiv_kind` =
  `intended-output-change | ub-domain-change | bug | float-rounding | other`.
- If compiled old/new code is identical (e.g. only comments/inline hints with no codegen
  effect) that is a valid EQUIV for that configuration — say so in `notes`.
- A timeout is never EQUIV or NOT_EQUIV. Approximation-based Alive2 counterexamples
  ("approximations were used") are not counterexamples → UNKNOWN.
- `unsupported_reason` vocabulary (extend if needed, keep kebab-case): `inline-asm`,
  `assembly-source`, `non-x86-target-intrinsics`, `intrinsic-unsupported-by-checker`,
  `interface-or-state-layout-change`, `global-state-or-dispatch`, `old-code-does-not-build`,
  `new-code-does-not-build`, `checker-language-feature-unsupported`, `concurrency`,
  `gpu-kernel-unsupported-by-checker`, `floating-point`, `no-executable-change-in-checker-language`,
  `out-of-checker-language`, `checker-unavailable`, `dependency-closure-too-large`.

## Per-case result file (required, one per processed entry)

`history-eq/gh/results/<repo>/<full-40-char-commit>.json` where `<repo>` is the ledger's
`repo` field (`llama.cpp`, not `llama`):

```json
{
  "repo": "zstd",
  "commit": "<40 hex>",
  "checker": "Alive2 (LLVM 20, -O2, x86-64)",
  "checker_ran": true,
  "verdict": "EQUIV",
  "scope": "all 2 changed functions in lib/compress/zstd_compress.c",
  "build_config": "clang 20 -O2 -march=x86-64-v3, default macros",
  "units": [{"name": "ZSTD_foo", "file": "lib/x.c", "result": "EQUIV", "detail": "both directions correct, no loops"}],
  "unsupported_reason": null,
  "not_equiv_kind": null,
  "not_equiv_level": null,
  "counterexample": null,
  "evidence_dir": "history-eq/gh/work/zstd/007c1c6f",
  "notes": "one or two sentences, honest about scope"
}
```

`checker_ran` is true only when the checker actually executed on old/new code of this commit
(a failed build or a parser rejection by the checker counts as ran=true for UNSUPPORTED only
if the checker itself was invoked). Keep logs in `evidence_dir`.

## Reporting back

When done, write `history-eq/gh/results/<repo>/SUMMARY.md` (method, counts per verdict,
main unsupported reasons, caveats) and reply with the counts per repo per category.
Be economical: automate with scripts in `history-eq/tools/gh/<family>/`; do not hand-write
proofs for hundreds of cases, but do spend effort on cases where an automated attempt is
close (e.g. small loop-free functions, IR-identical cases, easy counterexamples).
