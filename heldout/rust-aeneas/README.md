# Held-out task: verified rust-base64 decode optimization (Aeneas)

**Result: the rust-base64 `decode_slice` path is 1.63× faster on its official Criterion workloads,
and a complete Lean proof shows that the extracted public `Engine::decode_slice` of the candidate
equals the extracted baseline for every engine, input and output buffer.** The median of four ABBA
round geomeans is 1.632× (range 1.549–1.907×) over the eight official `decode_slice` sizes, pinned
to CPU 184. A/A noise is ≤1% in geomean. Seven of eight workloads are ≥1.55×; the 30 MiB workload
reaches 1.39× (memory-bound). Both versions pass the crate's full test suite.

**Verification status: VERIFIED.** Getting there required four new translator fixes, three in
Aeneas and one in Charon, because the pilot toolchain could not extract the baseline decode code.

The final trusted base is pristine upstream Aeneas `557eff83` and Charon `c8f15d7d` plus those fixes,
plus two pilot fixes the proof needs. It passes the **full upstream Charon and Aeneas test suites**:
every test and CI check that passes unpatched still passes, with zero changed results and zero
changed golden outputs. See [Toolchain validation](#toolchain-validation-against-the-upstream-test-suites).

The theorem leaves the unchanged `decode_suffix` uninterpreted; see [Scope and trust](#scope-and-trust).

## Chosen function and why

The task preferred the rust-base64 decode path. I kept it: the official benchmark is
`decode_(small|large)_input/decode_slice/{3,50,100,500,3072,3145728,10485760,31457280}`, the same
size subset the pilot's `aeneas/bench.sh` used for `encode_slice`. The code is safe Rust with
simple loops; the pinned upstream is `5b98ee18` (rust-base64 0.23.1).

The baseline decode path was **not** extractable with the pilot toolchain. Each blocker has a
preserved log under [logs/blockers/](logs/blockers/):

1. **Aeneas: "Breaks to outer loops are not supported yet"** in `decode_complete_quads` and
   `decode_suffix`. A `?` inside a `for` loop, followed by a second loop, makes Charon nest the second
   loop inside the first loop's exit branch. It then jumps (`break 1`) to a shared error epilogue.
   The pilot Aeneas only handles `break 0`. The same shape with returns before a second loop also fails.
2. **Charon panic under `--monomorphize-mut`**: `used substitute on an item coming from a trait`, raised in
   partial monomorphization of trait type constraints. Mono-mut is required for the `FnOnce` closure
   with a `&mut [u8]` argument in `decode_helper`, as in the pilot's encode proof.
3. **Aeneas interpreter: "Could not match the contexts"**: loop fixed-point matching fails on region
   abstractions containing ended loan projectors. This happens after the first loop's iterator `next()`
   has returned `None`.
4. **Lean: local variable `engine` shadows namespace `engine`** in the generated `decode_slice::inner`.
   The generated `engine.Engine.decode_slice.inner.closure…` reference is parsed as a field access.
5. **Missing std models for `&mut` instantiations** of `Option::ok_or` and `Try::branch`. These are used only
   by `decode_suffix`'s `*output.get_mut(i).ok_or(..)? = b`. In mono mode, Aeneas maps the
   instantiation to the builtin name and reports a name clash. Without mono mode, Lean rejects the
   tuple-returning call. **I did not fix this.** `decode_suffix` is identical in both versions, so the
   extraction marks it opaque instead (see Scope).

Fixes 1–4 were developed on copies of the pilot's patched trees, which were not modified
([patches/aeneas-heldout-decode.patch](patches/aeneas-heldout-decode.patch),
[patches/charon-self-clause-substitution.patch](patches/charon-self-clause-substitution.patch)).

The **final** toolchain applies them to pristine upstream instead, through
[patches/aeneas-final-from-upstream.patch](patches/aeneas-final-from-upstream.patch) and the Charon patch.
Of the pilot's patches it keeps only two that the proof needs: specialized-`FnOnce` signatures
(rewritten without its bundled Boolean hunk) and the Lean `TraitDefault` helper unfolding.

- **`lower_nested_loop_exits`** (Aeneas pre-pass, before `update_loops`) targets a loop `L` nested in
  loop `P` that exits to `P`. If the code after `L` and the code after `P` are loop-free and end with
  `return`, it moves each continuation into `L`. Normal exits become `K; break`, exits to `P` become
  `E; break`, and the code after `L` becomes `return`. Every exit of `L` then reaches a
  function-end state, the shape the existing `update_loops` supports.
- **Ended-projector matching** (`InterpMatchCtxs.ml`): matches pairs of `AEndedProjLoans`, `AEndedProjBorrows`
  or `AEmpty` projections with no consumed values, keeping the left one. This follows the existing
  treatment of ended ignored mutable borrows.
- **Local name vs. namespace collision** (`ExtractBase.ml`): a local variable may not be named after the
  first component of a qualified global name. `engine` becomes `engine1`.
- **Charon**: `substitute_explicits` leaves the `Self` clause untouched instead of panicking.

Targeted validation of the translator changes (the full upstream suites are in
[Toolchain validation](#toolchain-validation-against-the-upstream-test-suites)):
- An ablation without the matcher change fails on `decode_complete_quads` itself
  ([log](logs/ablation-without-matcher-fix.log)), so all four fixes are needed for the final model.
- The fixture [tool-tests/nested-exit](tool-tests/nested-exit/) has the `decode_complete_quads` loop shape.
  Upstream and pilot Aeneas reject it. With the patched Aeneas, evaluating the generated Lean model on 10 inputs
  reproduces the native Rust results exactly, including error offsets and partial output-buffer writes
  ([check.sh](tool-tests/nested-exit/check.sh)).
- On the pilot's eight translator regression fixtures, the new Aeneas output is byte-identical to the
  pilot's dev binary output. Re-extracting the pilot's encode models changes only alpha-renaming
  (`engine`→`engine1`), as expected from the name fix ([summary](tool-tests/pilot-fixtures/summary.txt)).

## The optimization

[patches/base64-decode-pairs.patch](patches/base64-decode-pairs.patch) (applied by
[scripts/gen/make_candidate.py](scripts/gen/make_candidate.py)) changes the following:

- Adds `STANDARD_DECODE_TABLE`, a literal copy of the standard alphabet's decode table. A new unit test
  checks it against `decode_table(&alphabet::STANDARD)`.
- Adds `STANDARD_DECODE_PAIRS`, a 65,536-entry `u16` static built by a const loop. For index
  `first | second << 8`, the entry is `first_value << 6 | second_value` if both symbols are in the
  alphabet, and `0xFFFF` otherwise.
- Adds `decode_chunk_8_pairs` and `decode_chunk_4_pairs`. They read 2-byte little-endian indices, do one
  lookup per pair, run one validity test (`(p0|p1|p2|p3) < 0x1000`), and assemble the same big-endian
  accumulator as the original. If any symbol is invalid, or the input is shorter than the chunk, they
  call the unchanged `decode_chunk_8` and `decode_chunk_4`. That preserves the exact error offsets and the
  partial output writes.
- In `decode_complete_quads`, checks once whether `input_index_start < input_index_end` and the
  engine's decode table equals `STANDARD_DECODE_TABLE`. If so, it runs copies of the two loops that call
  the pair helpers. Otherwise it runs the original loops unchanged.
- Adds `#[inline(always)]` to `internal_decode`, `decode_helper`, `decode_complete_quads`, `decode_suffix`
  and `Engine::decode_slice`'s private `inner`. This lets the 256-byte table comparison constant-fold
  for `const` engines such as `STANDARD`. These attributes have no semantic effect, and the proof covers
  the code with them.

**Ablation.** The same benchmark run with only the inlining attributes is in
[results/ablation-inline-only](results/ablation-inline-only/) (one A/A pair and two ABBA rounds). See
the table below. The pair table accounts for most of the gain on medium and large inputs.

Exploratory variants are kept as diffs in [patches/explore/](patches/explore/), with quick runs in
[results/explore/](results/explore/); they are not formal measurements. These include per-group
checks, 32-symbol validate-then-write, `u64` word loads, and two byte-ready `u32` tables. The
two-`u32`-table variant looked faster at 50–500 bytes when fully inlined, but it was not adopted.
It needs 512 KiB of tables and a byte-permutation proof.

## Proof

The combined crate is the candidate source plus a **byte-identical copy** of the baseline
`decode.rs`, added as module `decode_ref` (sha256 `43309c60…`). It also adds `ref_engine::RefGeneralPurpose`,
whose `Engine` impl body is the baseline impl verbatim, and two extraction entry points,
`__veriop_decode_slice_ref` and `__veriop_decode_slice_opt`. Both call the public `Engine::decode_slice`.
Charon and Aeneas extract this one crate into [proof/DecodeModel/DecodeModel.lean](proof/DecodeModel/DecodeModel.lean).
That way both versions share every unchanged item and type, including `DecodeError`, `DecodeMetadata`,
`decode_suffix` and the trait wrappers. The pilot instead used separate extractions related by
constructor translations.

[scripts/check-faithful.sh](scripts/check-faithful.sh) extracts the **actual unmodified baseline
crate**, which differs only by an appended probe. It checks that all 19 generated decode-path definitions
are textually identical to the `decode_ref` copies after renaming the module path. These include
`decode_complete_quads` with its loops, `decode_helper`, `complete_quads_len`, `decode_chunk_8/4`,
`GeneralPurposeEstimate::new` and `internal_decode` with its closure. The other 38 baseline items
(types, wrappers and opaque declarations) are identical in the combined model ([log](logs/faithful-check.log)).

Main theorem, in [proof/DecodeProof.lean](proof/DecodeProof.lean):

```lean
theorem decode_slice_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    (input output : Slice U8) :
    __veriop_decode_slice_opt g input output = __veriop_decode_slice_ref r input output
```

This is an equality of the complete `Result ((core.result.Result Usize DecodeSliceError) × Slice U8)`.
It covers the decoded length or the exact error (`InvalidByte` offset and byte, `InvalidLength`,
`InvalidLastSymbol`, `InvalidPadding`, `OutputSliceTooSmall`), the **entire returned output buffer**
including partial writes before an error, and model failure or divergence. It holds for every input,
every output slice, and every engine: any decode table, padding symbol and config, not only
`STANDARD`. `encode_table` is irrelevant because decoding does not read it. There are no input-size bounds
and no success-only preconditions.

Supporting theorems, all for arbitrary arguments:
- `pairs_spec` proves that the extracted static-initializer loop computes every one of the 65,536
  table entries correctly.
- `chunk8_pairs_eq` and `chunk4_pairs_eq` prove that `decode_chunk_{8,4}_pairs input idx T out =
  decode_chunk_{8,4} input idx T out` whenever `T = STANDARD_DECODE_TABLE`.
- `decode_complete_quads_equiv` proves that the candidate `decode_complete_quads` equals the baseline
  copy for all arguments, using a lemma on the extracted array `==` model for the dispatch.
- `internal_decode_equiv` and `estimate_new_equiv` lift the result to the engine methods.

Axiom audit (`#print axioms`, recorded in [logs/verify-lean.log](logs/verify-lean.log)):
- `pairs_spec` depends only on `propext`, `Classical.choice` and `Quot.sound`.
- The chunk lemmas and `decode_complete_quads_equiv` add `core.fmt.Formatter`. This is the existing
  opaque **type** from `Result::unwrap`'s `Debug` bound in the Aeneas library.
- `decode_slice_equiv` adds opaque *declarations*, with no assumed behavior, for unchanged code shared
  by both sides: `decode_suffix`, `encode_helper` (a field of the `Engine` record, unused by decoding),
  the two std `AsRef::as_ref` impls, and `Result::map`.

There is no `sorry`, `admit`, `native_decide`, `bv_decide` or `implemented_by`, and no
`Lean.ofReduceBool` or `Lean.trustCompiler`. Generated files are not hand-edited.

**Negative control.** [scripts/check-negative.sh](scripts/check-negative.sh) changes one shift
(`u64::from(p2) << 28` → `<< 29`) in a copy of the candidate and extracts it the same way. The
unchanged proof fails inside `chunk8_pairs_eq`'s fast path ([log](logs/negative-proof.log)).

### Scope and trust

- **`decode_suffix` is opaque in the model.** It is unchanged and shared, so the theorem holds for
  *every* behavior of `decode_suffix`, which is a strictly stronger statement. Its body was translated
  once the outer-loop and matcher fixes were in place, but the generated Lean fails to type-check
  without `&mut`-instantiated models of `Option::ok_or` and `Try::branch` (blocker 5).
  `AsRef::as_ref`, `Result::map` and `encode_helper` are likewise shared opaque declarations.
- Extraction disables `debug_assert!`, as release builds do, via `CARGO_PROFILE_DEV_DEBUG_ASSERTIONS=false`.
  Overflow checks remain on, so the model fails where debug arithmetic would panic.
- The trusted base consists of:
  - Charon `c8f15d7d` plus one Rust fix, and Aeneas `557eff83` plus
    `patches/aeneas-final-from-upstream.patch`, both validated against their full upstream test suites;
  - the Aeneas Lean standard-library models;
  - rustc and LLVM for the native binaries.

  Panic payloads and state after a caught unwind are outside the model, as in the pilot.
- The equivalence is between extracted models. The faithfulness of the `decode_ref` copy is checked
  syntactically on the generated Lean, by the byte-identical source file and the identical generated
  definitions; the Rust copy itself is not proved equal to the original.

## Final verification

The full official suite measured four decode benchmarks, and the original theorem covered only
`decode_slice`. This wrap-up step extended the proof to `Engine::decode` and `Engine::decode_vec`. It
changed no optimization and ran no new benchmark. Details are in
[final-verification/README.md](final-verification/README.md).

| official benchmark (8 cases each) | entry point | status | theorem | full-suite geomean (r1, r2) |
|---|---|---|---|---:|
| `decode_slice` | `Engine::decode_slice` | **VERIFIED** | `DecodeProof.decode_slice_equiv` | 1.589× (1.592, 1.587) |
| `decode` | `Engine::decode` → new `Vec` | **VERIFIED** | `DecodeApiProof.decode_equiv` (+ `decode_default_equiv`, any `T: AsRef<[u8]>`) | 1.375× (1.384, 1.366) |
| `decode_reuse_buf` | `Engine::decode_vec` | **VERIFIED** | `DecodeApiProof.decode_vec_equiv` (+ `decode_vec_default_equiv`) | 1.735× (1.551, 1.808) |
| `decode_stream` | `read::DecoderReader` + `io::Read::read_to_end` | **NOT VERIFIED** | none | 1.288× (1.246, 1.329) |

- **What the new theorems state.** Each equates the complete model result for every input and for
  every pair of engines with equal decode table, padding and config. For `decode` that covers the
  returned `Vec` or the exact `DecodeError`. For `decode_vec` it covers every initial buffer, and the
  entire returned buffer, including the resized buffer with partial writes on the error path.
- **How they were proved.** The proofs reuse `internal_decode_equiv` and `decode_complete_quads_equiv`.
  These are checked on an extended extraction, which contains every item of the main model. 99 of its 102 items
  are identical; the `Engine` record and its two impls differ only by the two added fields.
  `proof/DecodeProof.lean` is re-checked unchanged on it.
- **Axioms.** The axioms are the same as for `decode_slice_equiv`, plus two shared opaque std
  functions, `Vec::truncate` and `Vec::as_mut_slice`. They have no assumed behavior; the theorems
  follow by congruence and hold for every behavior of these functions.
- **Trusted-base change.** Upstream Aeneas's `toStr` proves its side condition with `decide +native`.
  `decode_vec`'s `expect` message would therefore add a compiler-trusted axiom. The Lean-library patch
  [patches/aeneas-lean-tostr-kernel-proof.patch](patches/aeneas-lean-tostr-kernel-proof.patch)
  replaces that with a kernel-checked proof and keeps the old tactic only as a fallback. With it,
  upstream `tests/lean` still builds all 123 modules with the same `sorry` set, and
  `ExtractBuiltinLean.ml` regenerates unchanged. The tool binaries are unchanged.
- **Extraction-only rename.** One inert Charon attribute, `#[charon::rename("decode_to_vec")]`, is added
  in the extraction copy only. It avoids a Lean field/namespace name clash.
- **Negative controls.** The shift mutant makes all the API theorems fail. A mutant of
  `decoded_len_estimate` leaves `decode_slice_equiv` proved and makes both `decode_vec` theorems fail.
- **Why `decode_stream` is NOT VERIFIED.** Aeneas cannot translate `DecoderReader`'s
  `read_from_delegate`, `decode_to_buf` and `read` bodies (borrow and internal errors).
  `io::Error::new` needs `dyn Error` trait objects, which Aeneas does not support. std's
  `read_to_end` has no model and is applied at two different reader types, so congruence does not
  apply. The benchmark also stores `&mut Cursor` inside the reader struct. These failures are recorded
  by an extraction probe.

## Performance (official Criterion benchmark)

Method ([scripts/bench.sh](scripts/bench.sh), [scripts/summarize.py](scripts/summarize.py)):
- The upstream `benches/benchmarks.rs` and `Cargo.toml` are unchanged (verified). Both crates use
  `--no-default-features --features std` and the upstream 0.5 s warm-up / 3 s measurement / 100-sample
  settings, with independent Criterion homes per run.
- Every timing process ran under `taskset -c 184`. I never placed work on SMT sibling 376. Other users'
  unpinned processes can be scheduled there, and I cannot prevent that without root.
- `numactl` is not installed, so there was no memory binding. The governor is `schedutil`.
- The run order was two A/A pairs (baseline vs baseline), then four rounds in B-C, C-B, B-C, C-B order.
- Speedup is baseline median / candidate median from the Criterion median estimate, re-derived from
  `sample.json`. The script reports per-round ratios, the median over rounds, min/max, and geomeans.
- `uptime` load was recorded before and after every run ([load.log](results/main/load.log)); the
  1-minute load average stayed between 38 and 62 on the 384-CPU host.

| workload | baseline (median) | candidate (median) | speedup median | min | max |
|---|---:|---:|---:|---:|---:|
| decode_small_input/decode_slice/3 | 9.2 ns | 5.7 ns | 1.616 | 1.593 | 1.856 |
| decode_small_input/decode_slice/50 | 28.5 ns | 18.2 ns | 1.564 | 1.557 | 1.578 |
| decode_small_input/decode_slice/100 | 57.4 ns | 27.2 ns | 2.107 | 1.619 | 2.630 |
| decode_small_input/decode_slice/500 | 188.7 ns | 115.1 ns | 1.645 | 1.638 | 1.652 |
| decode_small_input/decode_slice/3072 | 1.113 µs | 0.688 µs | 1.619 | 1.616 | 2.635 |
| decode_large_input/decode_slice/3145728 | 1.156 ms | 0.736 ms | 1.555 | 1.551 | 1.654 |
| decode_large_input/decode_slice/10485760 | 4.170 ms | 2.664 ms | 1.588 | 1.522 | 2.427 |
| decode_large_input/decode_slice/31457280 | 14.26 ms | 10.33 ms | 1.392 | 1.297 | 1.487 |

- **Geomean over the 8 workloads:** the per-round geomeans are 1.549, 1.584, 1.907 and 1.680, with a
  median of **1.632×**. The geomean of the per-workload medians is 1.626×.
- **A/A noise:** the geomeans are 1.0044 and 1.0092, and per-workload A/A ratios range from 0.987 to 1.053.
- Rounds 3 and 4 contain baseline outliers, such as 2.6× ratios at 100 bytes and 3 KiB, caused by
  transient host load. The median over rounds and the minimum round (1.549×) are both above 1.5×.
- Raw data are in [results/main/criterion/](results/main/criterion/), [summary.json](results/main/summary.json)
  and [setup.txt](results/main/setup.txt), which holds the binary sha256s, rechecked by `verify.sh`.

**Ablation: inlining attributes only** ([patches/ablation-inline-only.patch](patches/ablation-inline-only.patch);
one A/A pair and two ABBA rounds, same method; [summary](results/ablation-inline-only/summary.json)):

| size | 3 | 50 | 100 | 500 | 3072 | 3 MiB | 10 MiB | 30 MiB | geomean |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| inline-only speedup (median of 2 rounds) | 1.619 | 1.151 | 1.098 | 1.019 | 1.027 | 0.968 | 0.986 | 1.001 | 1.094 |
| full candidate (median of 4 rounds) | 1.616 | 1.564 | 2.107 | 1.645 | 1.619 | 1.555 | 1.588 | 1.392 | 1.632 |

Inlining explains the 3-byte case (all of its time is in the call chain and `decode_suffix`) and part
of the 50/100-byte cases. The pair-table path accounts for the gain on 500 bytes and above. This
run's single A/A pair was disturbed (geomean 1.68, per-workload 0.97–1.84, caused by one slow baseline
run), so it is less reliable than the main run. The two ABBA rounds agree with each other within 2.5%.

## Full official benchmark suite (all 88 cases)

All cases in the unchanged `benches/benchmarks.rs` that build with `--no-default-features --features std` were run, with no filter: 32 decode and 56 encode cases ([scripts/full-bench.sh](scripts/full-bench.sh), [scripts/summarize_full.py](scripts/summarize_full.py)). The run used the same binaries as the main measurement (sha256 in [setup.txt](results/full-suite/setup.txt)) and the upstream per-group Criterion settings (0.5 s warm-up, 3 s measurement, 100 samples), identical for both sides. Every run was pinned to CPU 184.

**Order and load:** one A/A pair, then rounds r1 (baseline then candidate) and r2 (candidate then baseline), each run taking about 7.7 min. `uptime` was recorded before and after every run ([load.log](results/full-suite/load.log)); the 1-minute load average stayed between 24 and 44. Sibling CPU 376 was sampled every ~10 s from 10:32 to 10:50, covering the second A/A run, r1 baseline and the start of r1 candidate ([cpu376-snapshots.log](results/full-suite/cpu376-snapshots.log)). In 3 of 100 samples another user's unpinned processes were scheduled there (python3 at 9–14%, then godot at 104% at 10:48, during r1 candidate). I cannot prevent this without root. The sibling was **not** fully idle, and this is one possible cause of r1's noise.

**A/A noise:** the geomean is 0.9961. The central 90% of per-case A/A ratios is [0.904, 1.016] (full range [0.872, 1.921]; one outlier). A case counts as outside the noise band only if **both** rounds fall outside the 90% band.

| | geomean of per-case medians | r1 | r2 |
|---|---:|---:|---:|
| decode, 32 cases (affected) | **1.487** | 1.436 | 1.511 |
| encode, 56 cases (unaffected code) | **0.989** | 0.983 | 0.993 |
| full suite, 88 cases | **1.147** | 1.128 | 1.157 |

Decode geomeans by benchmark: decode 1.375, decode_reuse_buf 1.735, decode_slice 1.589, decode_stream 1.288.

**(1) The 32 affected decode cases.** All of them are faster in both rounds, so all are above the A/A band:

| case | baseline | candidate | speedup (median of 2) | r1, r2 |
|---|---:|---:|---:|---|
| decode_large_input/decode/3145728 | 1.15 ms | 754.60 µs | 1.524 | 1.531, 1.518 |
| decode_large_input/decode/10485760 | 3.86 ms | 2.51 ms | 1.538 | 1.548, 1.528 |
| decode_large_input/decode/31457280 | 15.05 ms | 10.35 ms | 1.454 | 1.486, 1.423 |
| decode_large_input/decode_reuse_buf/3145728 | 1.15 ms | 749.48 µs | 1.537 | 1.543, 1.531 |
| decode_large_input/decode_reuse_buf/10485760 | 3.87 ms | 2.49 ms | 1.552 | 1.562, 1.542 |
| decode_large_input/decode_reuse_buf/31457280 | 15.43 ms | 10.56 ms | 1.461 | 1.491, 1.431 |
| decode_large_input/decode_slice/3145728 | 1.13 ms | 709.29 µs | 1.589 | 1.596, 1.583 |
| decode_large_input/decode_slice/10485760 | 3.76 ms | 2.37 ms | 1.590 | 1.598, 1.583 |
| decode_large_input/decode_slice/31457280 | 14.06 ms | 9.54 ms | 1.474 | 1.476, 1.472 |
| decode_large_input/decode_stream/3145728 | 1.29 ms | 926.16 µs | 1.389 | 1.391, 1.386 |
| decode_large_input/decode_stream/10485760 | 4.33 ms | 3.21 ms | 1.350 | 1.340, 1.361 |
| decode_large_input/decode_stream/31457280 | 17.84 ms | 16.17 ms | 1.103 | 1.113, 1.094 |
| decode_small_input/decode/3 | 28.7 ns | 25.8 ns | 1.115 | 1.115, 1.115 |
| decode_small_input/decode/50 | 48.0 ns | 40.3 ns | 1.191 | 1.194, 1.188 |
| decode_small_input/decode/100 | 64.2 ns | 50.8 ns | 1.264 | 1.260, 1.269 |
| decode_small_input/decode/500 | 213.4 ns | 146.3 ns | 1.459 | 1.472, 1.445 |
| decode_small_input/decode/3072 | 1.18 µs | 773.3 ns | 1.529 | 1.544, 1.513 |
| decode_small_input/decode_reuse_buf/3 | 13.6 ns | 11.4 ns | 1.196 | 1.191, 1.202 |
| decode_small_input/decode_reuse_buf/50 | 47.9 ns | 26.5 ns | 1.813 | 2.388, 1.237 |
| decode_small_input/decode_reuse_buf/100 | 90.8 ns | 35.8 ns | 2.529 | 1.363, 3.694 |
| decode_small_input/decode_reuse_buf/500 | 194.9 ns | 129.0 ns | 1.511 | 1.526, 1.496 |
| decode_small_input/decode_reuse_buf/3072 | 2.07 µs | 728.5 ns | 2.843 | 1.570, 4.116 |
| decode_small_input/decode_slice/3 | 9.2 ns | 5.7 ns | 1.617 | 1.616, 1.617 |
| decode_small_input/decode_slice/50 | 28.4 ns | 18.2 ns | 1.565 | 1.567, 1.563 |
| decode_small_input/decode_slice/100 | 44.2 ns | 27.2 ns | 1.627 | 1.626, 1.629 |
| decode_small_input/decode_slice/500 | 188.5 ns | 115.6 ns | 1.631 | 1.635, 1.628 |
| decode_small_input/decode_slice/3072 | 1.11 µs | 679.3 ns | 1.627 | 1.624, 1.630 |
| decode_small_input/decode_stream/3 | 46.1 ns | 38.8 ns | 1.187 | 1.074, 1.301 |
| decode_small_input/decode_stream/50 | 64.1 ns | 54.4 ns | 1.180 | 1.097, 1.262 |
| decode_small_input/decode_stream/100 | 80.9 ns | 64.7 ns | 1.250 | 1.182, 1.319 |
| decode_small_input/decode_stream/500 | 233.7 ns | 161.1 ns | 1.450 | 1.403, 1.497 |
| decode_small_input/decode_stream/3072 | 1.25 µs | 866.5 ns | 1.445 | 1.436, 1.454 |

**(2) The 56 unaffected encode cases.** The geomean is 0.989, and per-case medians range from 0.918 to 1.213.

- **Regressions: none.** No encode case is below the A/A band in both rounds, so none is flagged as a regression.
- **Single-round dips:** encode_large_input/encode_slice/31457280 (0.889, 0.995), encode_small_input/encode/100 (0.835, 1.000), encode_small_input/encode_display/100 (0.832, 1.009), encode_small_input/encode_reuse_buf/100 (0.758, 1.106), encode_small_input/encode_string_stream/100 (0.875, 0.964). Each recovered in the other round, so they are not repeatable. I report them as observed, not as regressions. The 100-byte encode cases were 0.76–0.84× in r1 and 1.00–1.11× in r2.
- **Consistently faster, not caused by the change:** encode_small_input/encode_reuse_buf/50 (1.167, 1.166), encode_small_input/encode_string_reuse_buf_stream/50 (1.047, 1.049), encode_small_input/encode_string_reuse_buf_stream/100 (1.026, 1.032), encode_small_input/encode_string_stream/3 (1.116, 1.121). The encode source is unchanged, so this is attributed to code layout.

Per-case values for all 88 cases, with A/A ratios: [results/full-suite/table.md](results/full-suite/table.md) and [summary.json](results/full-suite/summary.json).

**(3) Full-suite geomean (88 cases): 1.147×.**

`decode` and `decode_reuse_buf` include `Vec` allocation and zero-fill, and `decode_stream` goes through `DecoderReader` with 1 KiB buffered reads. That is why their gain is smaller than `decode_slice`'s. All four use the changed `internal_decode`.

## Toolchain validation against the upstream test suites

Full details are in [tool-validation/README.md](tool-validation/README.md). Everything ran on cores 0–95;
cores 160–191 and 352–383 were left free.

| suite / check | unpatched upstream | final trusted base |
|---|---|---|
| Charon `cargo test` (`make test`'s `charon-tests`) | 547 passed / 0 failed / 19 ignored | 547 / 0 / 19; per-test outcomes identical |
| charon-ml `dune test` | pass | pass (pristine charon-ml is used) |
| Aeneas test runner, all 113 `tests/src` inputs | 113 pass | 113 pass (with the patched Charon) |
| Aeneas `cargo-test` | pass | pass |
| golden outputs = committed (`aeneas-tests` CI check) | identical | identical, 0 changed files |
| Lean verification of `tests/lean` | success (123 modules) | success, same modules and `sorry` set |
| `dune fmt` tidiness, `ExtractBuiltinLean.ml` up to date | clean | clean |

No test result changed, so nothing regressed. On the way there, two problems came up:
- A first attempt that ran the three trees concurrently had two harness races. Both are documented, and
  they disappear when the suites run sequentially.
- The earlier pilot-based base changed 24 golden files. All 24 changes came from the pilot's patches;
  mine added none.

  So the base was rebuilt minimally on pristine upstream. The model it extracts differs only by a
  `: Bool` annotation and `_root_` qualifications, and the unchanged proof checks with the same axioms.
  `scripts/verify.sh` now uses this toolchain end to end and passes.

## Tests

`cargo test --locked`, recorded in `logs/tests-*.log`:

| Crate | `--no-default-features --features std` | default features (incl. `simd-unsafe` engines) |
|---|---|---|
| Baseline | 243 passed, 0 failed | 285 passed |
| Candidate | 244 passed, 0 failed (+1 new table test) | 286 passed |

## Reproduce

```bash
cd heldout/rust-aeneas
source scripts/env.sh                      # pilot Rust/Lean toolchains + this experiment's Aeneas/Charon
bash scripts/verify.sh                     # provenance, fresh extraction, proof + axiom audit,
                                           # faithfulness check, negative control, translator fixture,
                                           # results/provenance.json
bash scripts/bench.sh main base64-ref base64-decode-pairs 2 4 && python3 scripts/summarize.py results/main
```

`verify.sh` ends with `PASS: verified decode-pairs candidate (complete public decode_slice, decode
and decode_vec equivalence; decode_stream not verified)`; see [logs/verify.log](logs/verify.log). [results/provenance.json](results/provenance.json)
holds the sha256 of the patches, every Rust source of both crates, the LLBC, the generated model, the
proof and its `.olean`, the tool binaries, the logs and the two measured benchmark executables.

## Layout

- `repos/base64-ref`: pinned baseline clone. `repos/base64-decode-pairs`: candidate. `repos/base64-inline-only`: ablation.
- `patches/`: the candidate patch, the Aeneas and Charon fixes, the ablation, and `explore/` prototypes.
- `harness/ref_engine.rs`: baseline engine wrapper used only for extraction.
- `scripts/`: `env.sh`, `extract.sh`, `verify.sh`, `check-faithful.sh`, `check-negative.sh`, `bench.sh`,
  `summarize.py`, `quick-bench.sh`, and `gen/` (candidate and prototype generators).
- `proof/`: Lean project (`DecodeModel/` generated, `DecodeProof.lean` hand-written, `DecodeModelNeg/` negative control).
- `extract/`: LLBC files and extraction crates. `tool-tests/`: translator regression fixtures.
- `tools/`: the Charon sources (`charon-src` patched, `charon-pristine`) with binaries (`charon-bin`), the
  pilot-based development copy of Aeneas, and the Lean backend with mathlib.
- `final-verification/`: extended extraction, `decode`/`decode_vec` proofs, negative controls, `toStr` validation, `decode_stream` probe.
- `tool-validation/`: upstream test-suite validation. `trees/aeneas-final` is the Aeneas toolchain and
  Lean backend the proof uses, and `trees/aeneas-upstream` is the unpatched reference.
- `results/`: `main/` (final benchmark), `ablation-inline-only/`, `explore/`, `provenance.json`.
- `logs/`: verification, tests, blockers and benchmark logs.

## Open issues

- The 30 MiB workload is 1.39×; it is limited by memory bandwidth.
- Engines whose decode table is not constant-folded pay a 256-byte table comparison once per
  `decode_complete_quads` call that has at least one complete quad. This was not separately benchmarked;
  the official benchmarks use the `const STANDARD` engine.
- The new 128 KiB static table adds 128 KiB of read-only data to the binary. Random standard-alphabet
  input touches about 12 KiB of it.
- Making `decode_suffix` transparent needs `&mut`-instantiated std models for `Option::ok_or` and
  `Try::branch`, or a translator change that translates their monomorphized std bodies.
- The upstream suites' F\*, Coq and HOL4 prover runs, and the Nix-only checks, could not be executed
  here. The F\*, Coq and HOL4 outputs the final base generates are byte-identical to upstream's
  committed files (see `tool-validation/README.md`).
