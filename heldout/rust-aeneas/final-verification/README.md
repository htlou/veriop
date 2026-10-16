# Final verification: the other public decode entry points

The full official suite measured four decode benchmarks. The original theorem covered only
`decode_slice`. This step extends the proof to `Engine::decode` and `Engine::decode_vec`, and records
why `decode_stream` stays unverified. No optimization or benchmark was changed or re-run.

| official benchmark | public entry point | status | theorem | full-suite speedup, geomean of 8 cases (r1, r2) |
|---|---|---|---|---:|
| `decode_slice` | `Engine::decode_slice` | **VERIFIED** (unchanged) | `DecodeProof.decode_slice_equiv` | 1.589× (1.592, 1.587) |
| `decode` | `Engine::decode` → `Vec` | **VERIFIED** (new) | `DecodeApiProof.decode_equiv`, `decode_default_equiv` | 1.375× (1.384, 1.366) |
| `decode_reuse_buf` | `Engine::decode_vec` into an existing `Vec` | **VERIFIED** (new) | `DecodeApiProof.decode_vec_equiv`, `decode_vec_default_equiv` | 1.735× (1.551, 1.808) |
| `decode_stream` | `read::DecoderReader` + `std::io::Read::read_to_end` | **NOT VERIFIED** | none | 1.288× (1.246, 1.329) |

The speedups are the existing full-suite numbers (`results/full-suite/summary.json`; per-case medians
of rounds r1 and r2, CPU 184). The dedicated `decode_slice` run gives 1.632× (median of 4 ABBA rounds).
All 32 decode cases: 1.487×.

## Theorems

Both are in [lean/DecodeApiProof.lean](lean/DecodeApiProof.lean). Like `decode_slice_equiv`, they hold
for every engine `g : GeneralPurpose` and `r : RefGeneralPurpose` with equal `decode_table`,
`padding` and `config`, and for every input. There are no size bounds and no success-only
preconditions.

```lean
theorem decode_equiv ... (input : Slice U8) :
    __veriop_decode_opt g input = __veriop_decode_ref r input
theorem decode_vec_equiv ... (input : Slice U8) (buffer : alloc.vec.Vec U8) :
    __veriop_decode_vec_opt g input buffer = __veriop_decode_vec_ref r input buffer
```

- `decode_equiv` states equality of the complete
  `Result (core.result.Result (Vec U8) DecodeError)`. That covers the returned `Vec`'s contents and
  length, the exact error, and model failure or divergence.
- `decode_vec_equiv` states equality of the complete
  `Result ((core.result.Result Unit DecodeError) × Vec U8)`, for every initial buffer. That covers the
  `Ok(())` or the exact error, and the entire returned buffer. On the error path that buffer is still
  resized and holds the partial writes, and the theorem covers it there too.
- `decode_default_equiv` and `decode_vec_default_equiv` state the same equalities directly for the
  trait default methods. They hold for **every** input type `T` and every `AsRef<[u8]>` instance; the
  official benchmarks pass a `&String`, and the caller's `as_ref` is applied identically on both sides.
  The entry-point theorems are the `&[u8]` instances of these.

The proof reuses the existing lemmas. `Engine::decode` and `Engine::decode_vec` are unchanged
default trait methods, so both sides run the same extracted `inner` functions. Their only
engine-specific calls are `internal_decoded_len_estimate`, `DecodeEstimate::decoded_len_estimate`
and `internal_decode`, handled by `estimate_new_equiv`, `decoded_len_estimate_equiv` (proved by
`rfl`) and `internal_decode_equiv`. That last lemma rests on `decode_complete_quads_equiv`.

## How it was extracted

[extract-api.sh](extract-api.sh) builds the same combined crate as `scripts/extract.sh`. It adds four
entry points, `__veriop_decode_{ref,opt}` and `__veriop_decode_vec_{ref,opt}`, and also passes
`--include` for `Engine::decode` and `Engine::decode_vec`. The output is
[lean/DecodeApiModel/DecodeApiModel.lean](lean/DecodeApiModel/DecodeApiModel.lean).

- **Name-clash workaround, in the extraction crate only.** The trait method `Engine::decode` becomes a
  field `decode` of the Lean structure `engine.Engine`. That field shadows the crate module namespace
  `decode` (`decode.DecodeError`) in the types of the later fields, so Lean rejects the model. This is
  the field analogue of blocker 4. I did not make a third translator change. Instead, the extraction
  copy of `engine/mod.rs` carries Charon's documented tool attribute `#[charon::rename("decode_to_vec")]`
  on that method, and `lib.rs` gets `#![feature(register_tool)] #![register_tool(charon)]`. Rustc
  ignores these attributes; they change only the extracted name (`engine.Engine.decode_to_vec.default`).
  The benchmarked crates are untouched.
- **Consistency with the verified model.** [verify-final.sh](verify-final.sh) checks the extended model
  against `proof/DecodeModel/DecodeModel.lean`. All 102 items of the main model occur in it. 99 are
  textually identical. Three differ only by the two added fields: the `engine.Engine` record and the
  two `Engine` impls. 16 items are new: the decode/decode_vec bodies, closures, entry points, and the
  two opaque `Vec` functions.
- **Re-check of the original proof.** `proof/DecodeProof.lean` is re-checked unchanged on the extended
  model. [lean/DecodeApiBase.lean](lean/DecodeApiBase.lean) is generated from it by renaming only the
  model namespace.

## Trust and axioms

`#print axioms` of the four new theorems ([logs/verify-api-lean.log](logs/verify-api-lean.log)):

- **Standard axioms:** `propext`, `Classical.choice`, `Quot.sound`.
- **Existing opaque type:** `core.fmt.Formatter`.
- **Existing shared opaque declarations, as for `decode_slice_equiv`:** `decode_suffix`,
  `encode_helper`, the two `AsRef::as_ref` impls (entry-point forms only) and `Result::map`.
- **New shared opaque std functions:** `alloc.vec.Vec.truncate` and `alloc.vec.Vec.as_mut_slice`.
  Aeneas's library has no model for them. Both sides apply them to equal arguments, so the theorems
  follow by congruence. They hold for every behavior of these functions, which is strictly stronger
  than assuming a particular model. The other `Vec` operations used (`from_elem`, `resize`,
  `deref_mut`, `len`) and `map_err`, `?`, `checked_add` and `expect` have Aeneas library models.

There is no `sorry`, `native_decide`, `decide +native`, `Lean.ofReduceBool` or `Lean.trustCompiler`.

### Trusted-base change: the Aeneas Lean library's `toStr`

The first proof of `decode_vec_equiv` depended on the axiom
`engine.Engine.decode_vec.inner._native.decide.ax_1`. `decode_vec` calls
`.expect("Overflow when calculating output buffer length")`. Aeneas extracts that literal as
`toStr "…"`, and upstream's `toStr` discharges its size side condition with `decide +native`, which
trusts the compiler. Upstream marks this with a TODO. Because the `Engine` impl record contains
`decode_vec`, the same axiom also leaked into `decode_equiv` and into `decode_slice_equiv` re-checked
on the extended model.

[patches/aeneas-lean-tostr-kernel-proof.patch](../patches/aeneas-lean-tostr-kernel-proof.patch)
changes `backends/lean/Aeneas/Std/String.lean` in the final Aeneas tree:
- It adds the lemma `toStr_size_eq_sum_utf8Size`, which says a string's UTF-8 byte size is the sum of
  its characters' UTF-8 sizes.
- `toStr`'s default proof becomes
  `first | (rw [toStr_size_eq_sum_utf8Size]; simp [Char.utf8Size, U32.max, U32.numBits]; done) | decide +native`.
  For literals, `simp`'s `String.toList` simproc and kernel checking now prove the bound. The old
  tactic is kept only as a fallback. The definition's value is unchanged; only the proof of a `Prop`
  argument differs.

Validation:
- **Upstream `tests/lean`.** It was re-run on the final tree with the change
  ([run-lean-tests-tostr.sh](run-lean-tests-tostr.sh), [log](logs/lean-tests-aeneas-final-tostr.log)).
  All 123 test modules were rebuilt and the build succeeded with the same `sorry` set (only
  `Tutorial/Exercises.lean`, 17). This includes the 6 modules that use `toStr`: Into, Print,
  StringChars, Derive, MultiTarget and TargetFeatures.
- **`ExtractBuiltinLean.ml`.** Regenerating it from the changed library (`lake exe extract`, then
  `dune fmt`) leaves the file unchanged ([log](logs/extract-lean-std-tostr.log)).
- **Tool binaries.** The Aeneas and Charon binaries are unchanged (sha256 as in `results/provenance.json`).
  So the 113-case test runner, the golden-output check and `cargo-test` results in
  `tool-validation/` still apply.

## Negative controls

[check-negative-api.sh](check-negative-api.sh) runs two controls ([log](logs/negative-control-api.log)).
Each mutant is extracted exactly like the candidate. The unchanged proof scripts are then checked
against it, with only the namespace renamed.

- **M1, the shift mutation** (`u64::from(p2) << 28` → `<< 29`). This is the existing control, and it
  makes every equivalence statement false. `decode_equiv`, `decode_vec_equiv`, both `*_default_equiv`
  theorems and `decode_slice_equiv` are all rejected: each depends on `sorryAx`, and the first error is
  in `chunk8_pairs_eq`.
- **M2, the estimate mutation** (`decoded_len_estimate` returns `conservative_decoded_len + 1`).
  `decode_slice` does not call this method. As expected, all base lemmas and `decode_slice_equiv` stay
  proved with no `sorry`. `decode_vec_equiv` and `decode_vec_default_equiv` are rejected, and their
  statements really are false for M2:
  on an `InvalidByte` error the returned buffer is one byte longer.
  - `decode_equiv` is also rejected here. Under a faithful `truncate` its statement would still hold
    for M2, so this rejection is an artifact of the opaque `truncate`, not evidence of a difference.

## `decode_stream`: NOT VERIFIED

The benchmark body is
`DecoderReader::new(&mut Cursor::new(&encoded[..]), &STANDARD).read_to_end(&mut buf)`.
[probe-decode-stream.sh](probe-decode-stream.sh) tried to extract exactly that, once per engine, with
the trusted toolchain. Charon succeeds. Aeneas reports 19 errors and writes only a partial file, and
Lean then reports 28 errors ([aeneas log](logs/probe-decode-stream-aeneas.log),
[lean log](logs/probe-decode-stream-lean.log)). The blockers:

1. **The crate's own reader code is not translated.** Aeneas fails on the bodies of
   `DecoderReader::read_from_delegate` ("Can not end a borrow because the value to give back contains
   bottom"), `DecoderReader::decode_to_buf` and `<DecoderReader as Read>::read` (internal errors).
   They become axioms. `decode_to_buf` is the function that calls `internal_decode`.
2. **Trait objects.** `io::Error::new(ErrorKind::InvalidData, DecodeError)` goes through
   `Box<dyn Error + Send + Sync>`, and Aeneas reports "Dynamic trait types are not supported yet".
3. **`read_to_end` is std code without a model.** It is std's default `Read::read_to_end`: adaptive
   probing reads and `Vec` capacity growth, with an opaque body. It is applied at two different reader
   types, `DecoderReader<GeneralPurpose, …>` and `DecoderReader<RefGeneralPurpose, …>`, so congruence
   cannot relate the two calls. A proof would need a model of std's `default_read_to_end` and
   `Cursor::read`, which is far beyond a small library model. The monomorphized std defaults also clash
   by name ("Name clash detected" for `Read::read` and `read_to_end`).
4. **A mutable borrow inside a struct.** The benchmark's reader type is `&mut Cursor<&[u8]>`, a `&mut`
   stored in `DecoderReader`. Aeneas does not support this, and its backward-function types fail to
   type-check in Lean.

`DecoderReader` reaches the engine only through `internal_decode`, `internal_decoded_len_estimate`
and `padding()`. The first is covered by `internal_decode_equiv`, the others are equal for equal
fields, and the reader code is shared. That suggests the stream results are equal too, but it is an
informal argument, not a theorem. `decode_stream` is therefore **NOT VERIFIED**.

## Reproduce

```bash
cd heldout/rust-aeneas && source scripts/env.sh
bash scripts/verify.sh                       # everything, ends in PASS (calls final-verification/verify-final.sh)
bash final-verification/verify-final.sh      # only this step
bash final-verification/run-lean-tests-tostr.sh 0-63      # upstream tests/lean with the toStr change (~2 min)
bash final-verification/probe-decode-stream.sh            # decode_stream extraction probe (diagnostic)
```

`scripts/verify.sh` previously chained its sub-checks with `cmd && say`, so a failing sub-check did
not abort the script under `set -e`. All sub-checks are now fatal.
