# Historical performance commits vs. equivalence checkers — protocol

Goal: for every historical **performance-optimization commit** in four repositories,
decide with the repository's checker whether the optimized code is equivalent to /
refines the code before the commit, is verifiably semantically different, or is
outside what the checker can analyze. Produce statistics.

| Repo | Language | Checker | Full-history clone |
|---|---|---|---|
| libdivide | C | Alive2 (LLVM IR, SMT) | `repos/libdivide` |
| xxHash | C | Alive2 | `repos/xxHash` |
| rust-base64 | Rust | Charon → Aeneas → Lean 4 | `repos/rust-base64` |
| lz4_flex | Rust | Charon → Aeneas → Lean 4 | `repos/lz4_flex` |

All paths are relative to `/srv/home/hantaolou/code/veriop/history-eq/`.
**Never modify** `../alive2/`, `../aeneas/`, or `repos/*` working trees (use `git worktree add`
or `git show <rev>:<path>` into your own directories). Never run `lake update`, `lake clean`,
or anything that writes into `../aeneas/proof/.lake/packages` (it is symlinked, shared).

## 1. Commit selection (the funnel — record every step)

1. **Scope files** (library source only):
   - libdivide: `libdivide.h` (also `libdivide.c`/`*.h` library headers if they existed at that time; not tests/benchmarks/CMake/docs)
   - xxHash: `xxhash.h xxhash.c xxh3.h xxh_x86dispatch.c xxh_x86dispatch.h` (not `xxhsum`/`cli/`/tests/bench)
   - rust-base64, lz4_flex: `src/` (excluding `src/**/tests*`, benches, bin/cli)
2. **Keyword screen** over non-merge commits touching scope files:
   `git log --no-merges -i -E --grep='perf|fast|speed|optimi|faster|slow|inline|simd|unroll|latency|throughput|efficien|vectori|cheap|bench|improv|reduce|avoid|hot|branch|bound.?check|unsafe|cost' -- <scope files>`
3. **Manual scan for misses**: also read the subject lines of all *other* commits touching scope
   files and add any with clear performance intent (mark `selected_by: "manual-scan"`).
4. **Manual confirmation**: read message + diff of every candidate. A commit is a
   *performance commit* iff its message, linked PR/issue, or an unambiguous code comment states or
   clearly implies the goal is speed / fewer instructions / less memory / better codegen
   (incl. inlining hints, branch hints, SIMD paths, bounds-check removal, alignment hints,
   autovectorization control). Reject: pure renames, warnings fixes, portability/build fixes,
   bug fixes without perf intent, docs, tests, benchmark-harness-only, CLI-only, quality-only
   hash-formula changes with no perf claim. Record a one-line reason for every rejection.

## 2. Unit of analysis and levels

For each performance commit, list the changed functions/macros that carry the perf change
(ignore unrelated hunks of mixed commits but say so). Check at two levels when relevant:

- **raw**: the changed function itself, all parameters symbolic, its own interface.
- **api**: the nearest *public* library entry point(s) that reach the change (e.g.
  `libdivide_u32_gen`+`libdivide_u32_do`, `XXH3_64bits(ptr,len)`, `XXH32(ptr,len,seed)`,
  `base64::encode_config_slice`, `lz4_flex::block::compress_into` …), all user inputs symbolic.
  Needed whenever raw is NOT_EQUIV because of an internal contract/parameter-meaning change, a
  changed internal invariant, or an interface change of an internal helper.
- Optionally **precond**: raw/api plus an explicitly stated precondition that the library
  guarantees (e.g. divider produced by the generator), encoded with `__builtin_assume` / Lean
  hypothesis. State the precondition exactly.

**Primary verdict = api level** (user-observable behaviour). If api level is not needed
(raw already EQUIV, or raw function *is* public API) primary = raw.

## 3. Verdict vocabulary (use exactly these)

SMT polarity matters: Alive2 searches for a counterexample to each refinement direction.
`unsat` proves that direction; `sat` with a valid model refutes it. A timeout or `unknown`
proves neither. The tables below use semantic verdicts rather than bare SAT/UNSAT labels.

- `EQUIV` — both directions proved, unbounded (no loops, or Lean proof for all inputs).
- `EQUIV_BOUNDED` — both directions, but Alive2 needed loop unrolling; record unroll factor /
  length bound. (Tier 3.)
- `EQUIV_UNDER_PRECOND` — equivalence only under a stated, library-guaranteed precondition.
- `REFINES` — new refines old but not conversely (new is more defined, e.g. removes UB) —
  one-directional implication. Also record `refines_bounded` if loops.
- `NOT_EQUIV` — checker produced a concrete counterexample in the direction "new refines old"
  (Alive2 "Transformation doesn't verify" with an example; Lean: kernel-checked
  `Old.f x ≠ New.f x` for a concrete `x`, by `decide`/`rfl`/`simp`, *not* `native_decide`).
  Sub-classify `not_equiv_kind`: `intended-output-change` (e.g. hash formula changed on purpose),
  `ub-domain-change` (new has UB/poison/panic where old was defined, on inputs outside the
  library's documented domain), `bug` (observable wrong result on valid inputs), `other`.
- `UNKNOWN` — the relation is unverified: the checker was inconclusive, the proof is unfinished,
  or exact historical source needed for the comparison is unavailable. Record whether it ran.
- `UNSUPPORTED` — the selected checker comparison cannot be formed or modeled. Use one `unsupported_reason` from:
  - C: `inline-asm`, `non-x86-target-intrinsics` (NEON/SVE/VSX/RVV/WASM/s390x/MSVC-only),
    `x86-intrinsic-unsupported-by-alive2`, `interface-or-state-layout-change` (no common harness
    exists, e.g. new struct layout / new API), `global-state-or-dispatch` (cpuid dispatch, function
    pointers), `old-code-does-not-build`, `new-code-does-not-build`,
    `compile-time-or-build-only` (change is only in macros/flags/pragmas that do not
    change the IR under any configuration you can build — then say so; if the IR is unchanged the
    verdict is EQUIV, not UNSUPPORTED), `alive2-crash-or-parse-error`, `other`.
  - Rust: `unsafe-raw-pointers`, `charon-error`, `aeneas-error`, `lean-model-typecheck-error`,
    `missing-std-model` (opaque std/core functions whose behaviour matters), `trait-generic-closure`,
    `interface-or-state-layout-change`, `old-code-does-not-build`, `new-code-does-not-build`, `other`.

For Rust, equal normalized Charon LLBC is useful *structural evidence*, but is not an
Aeneas/Lean equivalence proof when the relevant translated function is missing, contains
`sorry`, or does not typecheck. Record `evidence_type: "identical-llbc"` and count that
unit as `UNSUPPORTED` by Aeneas unless a separate kernel-checked Lean theorem covers it.

Commit-level verdict: if any perf unit is NOT_EQUIV at primary level → NOT_EQUIV; else if all
units are proved → the weakest of {EQUIV, EQUIV_BOUNDED, EQUIV_UNDER_PRECOND, REFINES}; else
UNKNOWN if any unit is UNKNOWN and none UNSUPPORTED…  otherwise UNSUPPORTED. Always fill
`coverage`: `full` (all perf-relevant changed code checked) or `partial` (+ what was not).
An `EQUIV`/`REFINES` verdict with `coverage: partial` proves only the covered units; report
these separately from full-coverage checked commits in aggregate statistics. A timeout in
any primary API unit makes the commit-level relation `UNKNOWN` unless a separate witness
already establishes `NOT_EQUIV`.

## 4. C / Alive2 recipe

Use `tools/alive_check.py` (run `--help`/read its docstring). It compiles one wrapper C file
against old and new sources, normalizes IR identically (strips `nocapture`, `!llvm.loop`,
`!srcloc`), detects loops, runs alive-tv in both directions and prints per-function verdicts.
Only functions named `target_*` are judged. Default flags:
`-O3 -march=x86-64-v3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w`.

- Extract old/new library files with `git show <c>^:<file>` / `git show <c>:<file>` into
  `c/<repo>/<shortsha>/{old,new}/`. Write `wrap.c` with `target_*` functions that call the
  changed code; pass pointers + lengths symbolically. Keep the wrapper **identical** for both sides
  (use `#if` on a feature macro only if the API name itself changed — then note it).
- Inline asm (`divl`/`divq` in libdivide etc.) is not supported by Alive2. If the perf change is
  *not* in the asm, you may disable the asm path identically on both sides by including the
  system headers first and then `#undef __x86_64__` (and/or defining the library's own opt-out
  macro) before including the library — record this as a modeling assumption. If the perf change
  *is* the asm/intrinsic → `UNSUPPORTED(inline-asm)`.
- x86 SIMD paths: try `-msse2/-mavx2/-mavx512f` as appropriate (+ the library's selection macro,
  e.g. `XXH_VECTOR=XXH_SSE2`). Alive2 supports some `llvm.x86.*` intrinsics; if not →
  `x86-intrinsic-unsupported-by-alive2`. Non-x86 paths: you may try `--target aarch64-linux-gnu`
  etc.; target intrinsics normally fail → `non-x86-target-intrinsics`.
- Loops: if `bounded` is reported, re-run with `--unroll K` (start 4–8, raise if cheap) and use
  fixed small lengths or a length bound in the wrapper; report `EQUIV_BOUNDED` with K / lengths.
  Counterexamples are always reported as NOT_EQUIV regardless of bounds.
- Timeouts: start `--smt-to 60000`; retry promising ones with `--smt-to 600000 --timeout 3600`.
  Run independent checks in parallel (the machine has 384 cores) — e.g. `xargs -P 32`.
- Verify the sanity of every harness: compile + run old and new natively on a few random inputs
  (or rely on the counterexample) to make sure the wrapper really exercises the changed code
  (e.g. the changed function is not dead-code-eliminated, the right `#if` branch is taken —
  check that old.ll ≠ new.ll, or explain why identical IR arises).
- Keep each `result.json` / `fwd.log` / `bwd.log` in the commit's directory.

## 5. Rust / Aeneas recipe

Environment: `source /srv/home/hantaolou/code/veriop/aeneas/env.sh` (gives `charon`, `aeneas`,
Rust toolchains; Charon wants the pinned nightly it was built with — it handles that itself).
Lean project per repo: `rust/<repo>/lean/` (already set up; `lake env lean File.lean` typechecks a
file against Aeneas' Lean library in ~10 s; packages are prebuilt and shared — do not rebuild them).

Per commit `<c>`:
1. `git -C repos/<repo> worktree add wt/<repo>-<short>-old <c>^` and `…-new <c>`.
2. In each worktree:
   `charon cargo --preset=aeneas --dest-file <abs>.llbc --start-from <crate>::<path>::<fn> [--start-from …] -- --lib --no-default-features --features <feats>`
   Choose features so the changed code path is compiled (lz4_flex: `safe-encode`/`safe-decode`
   select the safe code; the unsafe variants use raw pointers). Older Cargo.toml may lack
   features — adapt and note. Old editions/crates may need `--offline` off; network is available.
   Useful extra flags seen in this project: `--monomorphize-mut`, `--opaque <path>`.
3. `aeneas -backend lean -loops-to-rec -no-progress-bar -namespace <Repo><Short>Old -dest rust/<repo>/lean/C<short>/Old <file>.llbc` (same for New, distinct namespace).
4. Typecheck both with `lake env lean`. Failures at 2/3/4 → UNSUPPORTED with the matching reason
   and the first relevant error line.
5. Write `rust/<repo>/lean/C<short>/Proof.lean` importing nothing but the two generated files
   (e.g. via `import`/ `lake env lean` with the files on the path — simplest: concatenate the
   generated defs into one file with two namespaces, or add `[[lean_lib]]` entries). Try:
   `funext …; with_unfolding_all rfl`, `unfold …; simp`, `scalar_tac`, `progress`, `simp_all`,
   case splits, induction for loop recursions. Spend real effort on tractable ones (they are the
   point), but cap at ~45 min of proof work per commit; if not finished → UNKNOWN with a
   note on what remains. Forbidden: `sorry`, `admit`, new `axiom`, `native_decide`, `bv_decide`,
   `implemented_by`. Run `#print axioms` and keep its output; only `propext`,
   `Classical.choice`, `Quot.sound` and pre-existing Aeneas opaque declarations may appear.
6. To show NOT_EQUIV: find concrete inputs where results differ (run both Rust versions natively
   first to find one), then prove `Old.f x ≠ New.f x` (or results differ in `ok`/`fail`) in Lean
   by `decide`/`rfl`/`simp`/`norm_num` — kernel-checked.
7. If the changed function's interface/meaning changed, prove at the caller/public level
   (api), possibly with a Lean hypothesis for a precondition.

## 6. Output

Write `results/<repo>[-part].json`:

```json
{
  "repo": "...", "tool": "Alive2|Aeneas",
  "funnel": {"commits_touching_scope": N, "keyword_candidates": N,
             "manual_scan_additions": N, "perf_commits": N},
  "rejected": [{"commit": "abc1234", "subject": "...", "reason": "..."}],
  "commits": [{
     "commit": "abc1234", "date": "YYYY-MM-DD", "subject": "...",
     "selected_by": "keyword|manual-scan", "perf_evidence": "quote/explanation",
     "change_summary": "what changed, 1-2 sentences",
     "units": [{"name": "...", "level": "raw|api|precond", "verdict": "...",
                "bounded": false, "unroll": 0, "precondition": null,
                "unsupported_reason": null, "not_equiv_kind": null,
                "artifact_dir": "c/libdivide/2422199/raw", "evidence": "one line (counterexample / error / theorem name)"}],
     "commit_verdict": "...", "raw_verdict": "...", "coverage": "full|partial",
     "unsupported_reason": null, "not_equiv_kind": null, "notes": "..."
  }]
}
```

Also write a short `results/<repo>[-part].md` with the funnel, a verdict table and the
most interesting cases. Be honest: never claim EQUIV without the tool's output on disk.
