# Validation of the trusted toolchain against the upstream test suites

**Verdict: on the final trusted base, every upstream test and CI check that passes on the unpatched
toolchain also passes on the patched toolchain, and no test result or golden output changes.**
The upstream suites never run the provers for the F\*, Coq and HOL4 outputs here (see Limits), but
those generated files are byte-identical to the committed upstream outputs.

## The trusted base actually used by the proof

| Tool | Base | Our changes |
|---|---|---|
| Aeneas | upstream `557eff83` (pristine clone) | [patches/aeneas-final-from-upstream.patch](../patches/aeneas-final-from-upstream.patch): 7 files + 1 new module |
| Charon | upstream `c8f15d7d` (pristine; Rust and charon-ml) | [patches/charon-self-clause-substitution.patch](../patches/charon-self-clause-substitution.patch): 1 Rust function |
| Lean backend | the Aeneas tree above (`backends/lean`) | the `TraitDefault` hunk of the Aeneas patch |

The Aeneas patch contains three parts.
- **Fixes added for this task:** `lower_nested_loop_exits` (`PrePasses.ml`), ended-projector matching
  (`InterpMatchCtxs.ml`), and the local-name/namespace collision fix (`ExtractBase.ml`).
- **The pilot's specialized-`FnOnce` fix, rewritten** (`Translate.ml`, `ExtractBase.ml`, and the new
  module `SpecializedFnOnce.ml` hooked into `SymbolicToPure.ml`). The logic is identical. The
  boolean-extraction hunk that the pilot had bundled into that patch is dropped, and the helper lives
  in its own module, so the compiler source line numbers that upstream goldens embed are unchanged.
- **The pilot's Lean-backend `TraitDefault` helper unfolding**, needed by the generated `impl_def` instances.

The other pilot patches are **not** in the base: Boolean extraction, discriminant names, `never` calls,
trait-field qualification and string kernel, and the charon-ml `Substitute` fix. Extracting with this
base gives the decode model now checked in at `proof/DecodeModel/DecodeModel.lean`. It differs from
the earlier pilot-based model only by a `: Bool` annotation and `_root_` qualifications. The unchanged
`proof/DecodeProof.lean` verifies against it with the same axioms (`logs/verify.log`).

## What was run (cores 0–95 only; nothing on 160–191 or 352–383)

Charon, `make test` = `charon-tests` (`cargo test`) + `charon-ml-tests` (`dune test`):

| | pristine `c8f15d7d` | patched |
|---|---|---|
| `cargo test` (ui, cli, cargo, layout, name-matcher, ... ) | 547 passed, 0 failed, 19 ignored | 547 passed, 0 failed, 19 ignored |
| per-test outcomes ([pristine](logs/charon-tests-pristine.outcomes), [patched](logs/charon-tests-patched.outcomes)) | — | identical (566 entries) |
| charon-ml `dune test` | pass ([log](logs/charon-ml-dune-test-pristine.log)) | the final Aeneas build links the pristine charon-ml |

Pristine Charon release binaries rebuilt here are byte-identical to the pilot's `env/charon` binaries.

Aeneas, `make test` = build, `extract-tests` (the test runner on all 113 inputs of `tests/src`,
each through Charon and every configured backend) and `cargo-test`. I also ran the upstream
CI checks that need no Nix: the golden-output check (the `aeneas-tests` derivation fails if the
regenerated `tests/` differ from the committed files), the Lean verification
(`tests/lean`: `make`, which builds all generated Lean tests and their hand-written proofs), the
formatting check (`aeneas-check-tidiness`: `dune fmt` must change nothing), and the
`ExtractBuiltinLean.ml` up-to-date check (`make extract-lean-std` must change nothing):

| check | upstream (unpatched) | final trusted base (patched) |
|---|---|---|
| test runner, 113 cases ([upstream](logs/aeneas-upstream.passed), [final](logs/aeneas-final.passed)) | 113 pass | 113 pass, same set |
| `cargo-test` | pass | pass |
| golden outputs vs committed files | identical | identical ([status](logs/aeneas-final-golden-status.txt): no changes) |
| Lean verification of `tests/lean` | success, 123 test modules, 1 file with `sorry` (upstream's own) | success, same 123 modules, same `sorry` set |
| `dune fmt` tidiness | clean | clean ([log](logs/fmt-final.log)) |
| `ExtractBuiltinLean.ml` regeneration | no change | no change |

In the final configuration the test runner used the **patched Charon binary**, so both patches were
exercised together. The scripts are [run-aeneas-tests.sh](run-aeneas-tests.sh) and
[run-lean-tests.sh](run-lean-tests.sh), and the trees are under `trees/`.

## History, recorded honestly

1. **Harness races in the first attempt.** The first parallel attempt ran three trees concurrently with
   `make -j8`. It produced two failures caused by the harness, not by a translation:
   - `test-as_mut.rs` hit `Sys_error "tests/llbc: File exists"` from concurrent `mkdir`. Run alone, it
     passes ([log](logs/superseded-pilot-based-base/aeneas-patched-rerun-as_mut.log)).
   - `cargo-test` hit a linker bus error, because the Makefile writes `/tmp/aeneas_test_*` binaries
     that collide across concurrent trees.

   All suites were then rerun one tree at a time, with `tests/llbc` pre-created; those reruns are the
   results reported above. Only the upstream log from the first attempt is kept
   ([race-attempt/](logs/race-attempt/)). The pilot and patched logs from that attempt were later
   overwritten by the clean reruns.
2. **The pilot-based base failed the golden check.** The base used for the original proof was the pilot
   toolchain (all its patches) plus my patches. It passed the test runner (119 = 113 + the pilot's 6
   fixtures), `cargo-test` and Lean verification. It **failed the golden check in 24 files**, all
   caused by the pilot's earlier patches; my patches changed nothing further (identical diffs, under
   [superseded-pilot-based-base/](logs/superseded-pilot-based-base/)). By the upstream criterion that
   base counts as a regression, so it was replaced by the minimal base above. The proof and the
   end-to-end `scripts/verify.sh` were rerun on the new base.

## Limits

- **Provers not run.** F\*, Coq and HOL4 verification of the generated test outputs was not run: Coq
  and HOL4 are not installed, and Nix, which upstream CI uses, is not available. The F\*, Coq and HOL4
  files the final base generates are byte-identical to upstream's committed files, so the patch cannot
  change their verification outcome.
- **Not part of `make test`.** Charon's opt-in `test-popular-crates` (network) and the Nix-only
  `rustc-tests` were not run.
- **Mathlib cache.** `lake exe cache get` (network) was replaced by copying already-built packages at
  the pinned revisions. The Lean test sources are unaffected.

## Addendum (final verification): one Lean-library change

For the `decode_vec` proof, the final base also carries
[patches/aeneas-lean-tostr-kernel-proof.patch](../patches/aeneas-lean-tostr-kernel-proof.patch), applied to
`trees/aeneas-final/backends/lean/Aeneas/Std/String.lean`. It gives `toStr`'s size side condition a
kernel-checked proof and keeps upstream's `decide +native` only as a fallback. The Aeneas and Charon
binaries are unchanged. Upstream `tests/lean` was re-run with the change: it builds all 123 modules
with the same `sorry` set. `ExtractBuiltinLean.ml` regenerates unchanged. See
[../final-verification/README.md](../final-verification/README.md#trusted-base-change-the-aeneas-lean-librarys-tostr).
