
## How the checks were run

* Worktrees `wt/lz4-<sha>-{old,new}` (`<sha>^` / `<sha>`); `charon cargo --preset=aeneas --start-from …` with the features each revision had (safe config `std,safe-encode,safe-decode,checked-decode` when available; an additional "unsafe" config `std[,checked-decode]` for changes that live in the unsafe (`cfg(not(feature = "safe-*"))`) code); Aeneas = the **patched** build `aeneas/repos/aeneas/src/_build/default/main.exe` for every run; `-backend lean -loops-to-rec`.
* Units per commit: `apic`/`apid` (= public `compress_into` / `decompress_into`, the api level), `apiuc`/`apiud` (same in the unsafe config), `hlpc`/`hlpd` (changed free helpers, raw level), `mod*` (whole `hashtable`/`sink`/`fastcpy` modules), plus ad-hoc units.
* Old and new Lean models live in different namespaces; `scripts/merge.py` mechanically emits Aeneas-generated std declarations and textually identical crate *type* declarations once (so that `Old.f = New.f` is well-typed and both sides share the same opaque std constants); function bodies are never edited.
* **Identical-translation check**: Charon LLBC is pretty-printed by Aeneas and normalised only by dropping source spans, comments and `#[inline]/#[cold]/#[optimize]` attribute lines (`scripts/llbcdiff.sh`, `scripts/llbcitems.py`). Identical LLBC is structural evidence, not counted as an Aeneas equivalence proof unless the generated models typecheck and a Lean `Old.f = New.f` theorem checks without `sorry` (`Proof*Rfl.lean`).
* Aeneas emits `sorry` bodies for functions it cannot translate; such units are never counted as translated (all `#print axioms` outputs were checked for `sorryAx`).
* Opaque std functions (e.g. `copy_within`, `RangeBounds`, `U32::to_be`, `next_power_of_two`) are Aeneas-generated axioms without semantics; proofs may only use them congruently. Their presence in `#print axioms` is listed per theorem.

## Recurring blockers (why most commits are UNSUPPORTED)

1. **Raw pointers** (2020 encoder/decoder, all `unsafe` variants 2021–2023): `&raw mut`, `cast_expose`, raw-pointer deref are rejected; `ptr::copy_nonoverlapping`/`Vec::set_len` become uninterpreted axioms.
2. **`compress_internal`** (every compressor revision since 2021): `continue` to an outer loop → "Continue to outer loops are not supported yet". So no compressor change is checkable at api level.
3. **Decoder loops** 2020–early 2021: "Early returns inside of loops are not supported yet".
4. **Safe decoder 2021**: translates and typechecks, but the fast paths use `slice::copy_within`, which has no model → missing-std-model when the change selects between copy_within and a byte loop.
5. **Safe decoder 2023**: Lean model does not typecheck — the `Sink` trait impl methods return an extra back-function (`Type mismatch`), and a local variable `sink` shadows the module prefix (`Invalid field SliceSink`).
6. **Hashtable module**: the 64-bit literal in `hash5` does not typecheck against Aeneas' platform-generic `Usize`.
7. **Frame format**: `io::Read/Write`/`io::Error` → "Dynamic trait types are not supported yet", and the encoder reaches `compress_internal`.
