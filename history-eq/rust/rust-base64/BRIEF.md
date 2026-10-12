# Brief for proof sub-tasks (rust-base64 slice)

Read `/srv/home/hantaolou/code/veriop/history-eq/METHOD.md` (sections 2, 3, 5, 6) first — it is the protocol.
Everything below is the local infrastructure that already works. All paths absolute under
`H=/srv/home/hantaolou/code/veriop/history-eq`, `R=$H/rust/rust-base64`.

## Hard rules
- Never modify `$H/repos/*`, `/srv/home/hantaolou/code/veriop/aeneas/**` (read-only; we only *run* its binaries),
  never run `lake update`/`lake clean`/`lake build`, never write into `$R/lean/.lake/packages`.
- Only work inside your own commit's dirs: `$H/wt/base64-<short>-{old,new}` (worktrees, already created),
  `$R/work/<short>/`, `$R/lean/C<short>/`, `$R/harness/<short>*.rs`, `$R/lean/build/C<short>/`.
- Forbidden in proofs: `sorry`, `admit`, new `axiom`, `native_decide`, `bv_decide`, `implemented_by`.
  Every theorem file must end with `#print axioms <thm>` for each theorem; keep the output log.
- Proof budget: ~45 min of proof work per commit. If not finished, stop and report UNKNOWN with what remains.

## Tools
- `$R/scripts/extract.sh <short> <tag> <old|new> "<charon args>" "<cargo args>" ["<aeneas args>"]`
  runs charon (in the worktree), the patched Aeneas (`-loops-to-rec` default), and typechecks+compiles the
  generated Lean to an olean. Output: `$R/work/<short>/<Tag><Side>.llbc` + `-charon.log/-aeneas.log/-lean.log`,
  Lean file `$R/lean/C<short>/<Tag><Side>/<Tag><Side>.lean`, Lean namespace `B<short><Tag><Side>`,
  importable module `C<short>.<Tag><Side>.<Tag><Side>`. (Tag is capitalised: tag `ewp` -> `Ewp`.)
  `$R/scripts/screen.sh <file>` runs lines `short|tag|charon args|cargo args` for both sides in parallel.
- `$R/scripts/probe.sh <short> <file.rs>` appends an identical harness (e.g. a `pub fn __histeq_*` wrapper
  instantiating a generic API with `GeneralPurpose`) to `src/lib.rs` of both worktrees (re-runnable; it
  restores lib.rs from git first). Keep harness files in `$R/harness/`.
- `$R/scripts/lchk.sh <path relative to $R/lean> [<module path to emit olean>]` typechecks a Lean file
  with `$R/lean/build` on LEAN_PATH (so `import C<short>.XOld.XOld` works). Takes ~3-10 s.
  Write your proof as `$R/lean/C<short>/Proof.lean` (may be several files) and check with
  `scripts/lchk.sh C<short>/Proof.lean > $R/work/<short>/proof.log 2>&1`.
- Useful charon flags already seen to work: `--opaque base64::engine::Engine` (keeps the trait decl but not
  default-method bodies; add `--include base64::engine::Engine::encode_slice` etc. to get one default method),
  `--opaque base64::chunked_encoder`, `--include byteorder` (translates the byteorder dependency bodies,
  which are safe in the resolved byteorder 1.5), sibling's public-API recipe:
  `--monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*' --include core::convert
   --opaque base64::engine::Engine --opaque base64::engine::general_purpose::decode
   --opaque base64::engine::general_purpose::decode_suffix --start-from base64::<harness fn>`.
  Inherent-method patterns are written `base64::{base64::CharacterSet}::encode_table`.
  Use `--no-default-features --features std` (or `alloc`) for 2019+ commits; old commits have no features.

## Modelling conventions (important)
- Old and New are generated into different namespaces, so *every* type and every external (`axiom`)
  declaration exists twice (e.g. `BxOld.decode.DecodeError` vs `BxNew.decode.DecodeError`,
  `BxOld.core.option.Option.and_then` vs `BxNew.core.option.Option.and_then`).
  * For enums/structs: define an explicit mapping (by cases / field-wise) in Proof.lean and state the
    theorem as `Old.f x = (New.f x').map ...` or with a relation. Document it.
  * For external std/core functions that Aeneas only declares as `axiom` (identical Rust function on both
    sides) take an explicit hypothesis `h : @Old.core.X = @New.core.X` in the theorem
    ("both copies of the same external declaration denote the same function"). Record such hypotheses
    in the evidence string. Never assume anything else about their behaviour.
  * For generic code over the `Engine` trait, quantify over two instances `instO : Old.engine.Engine ...`,
    `instN : New.engine.Engine ...` with hypotheses that the fields used agree (e.g.
    `instO.internal_encode = instN.internal_encode`, `instO.config = instN.config`, ...).
    Rust facts that hold for *any* implementation (e.g. a `&mut [u8]` keeps its length:
    the returned slice of `internal_encode` has the same length) may be hypotheses; they are not library
    preconditions. Library-contract assumptions (e.g. "`internal_encode` returns the unpadded encoded
    length") make the verdict `EQUIV_UNDER_PRECOND`; state them exactly.
- Panics: Aeneas distinguishes `fail .panic`, `fail .integerOverflow`, `fail .arrayOutOfBounds`, ...
  If old and new both fail but with different error kinds, both are Rust panics: state equivalence modulo
  the panic kind (define `Equiv : Result α → Result α → Prop` with `ok a ~ ok b ↔ a = b`, `fail _ ~ fail _`,
  `div ~ div`) and say so. Prefer plain `=` when it holds.
- Vec capacity is not modelled by Aeneas (Vec = list); capacity-only changes are EQUIV in the model — note it.

## Lean recipes that worked
- Identical bodies: `funext ...; with_unfolding_all rfl`, or `unfold A B; rfl`/`simp`.
- Arithmetic rewrites: `scalar_tac` (e.g. `have : (n < 15#usize) = (n <= 14#usize) := by apply propext; scalar_tac`).
- Monadic specs: Aeneas has a WP spec notation `x ⦃ r => P r ⦄` (total correctness: x = ok r ∧ P r) and the
  tactic `step*` (also `progress`) that symbolically executes a `do` block using registered specs for
  scalar ops, slices, ranges (`core.iter.range.IteratorRange.next ... StepUsize`), etc.
  Loops are recursive defs marked `partial_fixpoint`: unfold one iteration with
  `rw [Ns.f_loop]` (only works when the call is not under a binder — run `step*` first to bind values).
  Prove loop lemmas by induction on a measure (e.g. `range.end - range.start`).
- Concrete counterexamples for NOT_EQUIV: `rfl`/`decide` cannot evaluate `Usize` arithmetic (the
  platform width `System.Platform.numBits` is opaque), so instead prove two specs
  `Old.f x ⦃ r => r.1.val = 2 ⦄` and `New.f x ⦃ r => r.1.val = 3 ⦄` with `step*` (unfold loops by hand),
  then derive `Old.f x ≠ New.f x`. Build concrete slices with `Slice.from [0#u8, 0#u8] (by scalar_tac)`.
- Sibling project with many worked proofs (read-only, Lean 4.31 + same Aeneas):
  `/srv/home/hantaolou/code/veriop/aeneas/proof/*.lean` (e.g. Base64CapacityProof.lean uses `step*`,
  Base64FastStepProof.lean / Base64TailProof.lean prove loop equalities for base64 encoders).

## What to report back (as your final message)
For each unit: name, level (raw/api/precond), verdict (METHOD §3 vocabulary), precondition (exact text or
null), unsupported_reason / not_equiv_kind, artifact_dir, one-line evidence (theorem name or first error),
plus the list of hypotheses used, and the `#print axioms` output summary. Also say how long the proof took
and anything you are unsure about. Write the same information to `$R/work/<short>/units.json`
(a JSON list of unit objects using METHOD §6 unit field names, plus a "hypotheses" list and "notes").
