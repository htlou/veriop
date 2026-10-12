# rust-base64: historical performance commits checked with Charon, Aeneas and Lean 4

## Funnel

| Step | Commits |
|---|---|
| Non-merge commits touching src/ (tests, bin/ and main.rs excluded) | 240 |
| Keyword candidates | 42 |
| Added by manual scan | 9 |
| Confirmed performance commits | 25 |

## Commit verdicts

UNSUPPORTED: 23, EQUIV: 1, REFINES: 1

| Commit | Date | Subject | Verdict | Reason | Units |
|---|---|---|---|---|---|
| ce2281b | 2026-07-12 | feat: add SIMD engines (Simd, Avx2, Neon) behind a simd | **UNSUPPORTED** | aeneas-error | engine::general_purpose::GeneralPurpose: [api] EQUIV; engine::general_purpose::GeneralPurpose: [api] UNSUPPORTED; engine::simd avx2 encode/decode kernels  [raw] UNSUPPORTED |
| a8a60f4 | 2024-03-01 | Decode main loop improvements | **UNSUPPORTED** | aeneas-error | general_purpose::decode::decode_helper [raw] UNSUPPORTED; general_purpose::decode_suffix::decode_s [raw] UNSUPPORTED; Engine::decode_slice  [api] UNSUPPORTED |
| 9979cc3 | 2024-02-28 | Keep morsels as separate bytes | **UNSUPPORTED** | aeneas-error | general_purpose::decode_suffix::decode_s [raw] UNSUPPORTED |
| d021c39 | 2023-07-13 | Optimize generic functions | **UNSUPPORTED** | lean-model-typecheck-error | Engine::encode_slice  [api] EQUIV; Engine::encode  [api] EQUIV; Engine::encode_string  [api] UNSUPPORTED; Engine::decode  [api] EQUIV; Engine::decode_vec  [api] EQUIV; Engine::decode_slice  [api] UNSUPPORTED; Engine::decode_slice_unchecked  [api] UNSUPPORTED |
| 9687b03 | 2023-02-05 | Switch add_padding() to use encoded len | **UNSUPPORTED** | aeneas-error | encode::add_padding [raw] NOT_EQUIV; encode::encode_with_padding<E: Engine> [api] EQUIV_UNDER_PRECOND; chunked_encoder::ChunkedEncoder::encode [raw] UNSUPPORTED; Engine::encode_slice / encode for Genera [api] UNKNOWN |
| 7509b25 | 2018-10-28 | When encoding into a new String, create a Vec and encod | **UNSUPPORTED** | missing-std-model | encode::encode_config [api] UNSUPPORTED |
| fa6a11f | 2019-12-01 | Eliminated a call to encoded_size function | **EQUIV** |  | base64::encode::encode_config [api] EQUIV |
| 5c043f9 | 2022-04-30 | decode vec size -- don't oversize the vector | **REFINES** |  | base64::decode::decode_engine [api] REFINES; base64::decode::decode_engine [precond] EQUIV_UNDER_PRECOND |
| 0113a05 | 2017-12-05 | Add decode_config_slice. | **UNSUPPORTED** | aeneas-error | decode::decode_config_buf [api] UNSUPPORTED |
| 3e49afe | 2017-12-04 | Rework size and index calculations. | **UNSUPPORTED** | aeneas-error | decode::decode_config_buf [api] UNSUPPORTED |
| 154103e | 2017-05-19 | Optimize decode performance. Fixes #30. | **UNSUPPORTED** | aeneas-error | decode_config_buf [api] UNSUPPORTED |
| eeb9f5c | 2017-05-05 | Help the optimizer by making some intermediate slices. | **UNSUPPORTED** | aeneas-error | encode_to_slice [raw] UNKNOWN; encode_config_buf [api] UNSUPPORTED |
| f775196 | 2017-04-30 | Rewrite line wrapping to use a linear-time algo. | **UNSUPPORTED** | aeneas-error | line_wrap::line_wrap / encode_config_buf [raw] UNSUPPORTED; encode_config [api] UNSUPPORTED |
| 901eca8 | 2017-01-17 | Speed up encoding by reading a u64 at a time | **UNSUPPORTED** | aeneas-error | encode_mode_buf [api] UNSUPPORTED |
| 5409ef8 | 2016-12-30 | Add support for decoding into a user-supplied buffer. | **UNSUPPORTED** | aeneas-error | decode_mode [api] UNSUPPORTED |
| b681bb6 | 2016-12-30 | Switch to lookup tables for decoding. | **UNSUPPORTED** | aeneas-error | decode_mode [api] UNSUPPORTED |
| 99603c1 | 2016-12-28 | Support encoding into an existing buffer. | **UNSUPPORTED** | missing-std-model | encode_mode [api] UNSUPPORTED |
| 61ddf26 | 2016-07-03 | Avoid indexing while iterator | **UNSUPPORTED** | aeneas-error | decode_mode [api] UNSUPPORTED; decode_ws [api] UNSUPPORTED |
| f977b8e | 2017-01-13 | Make encoded_size() calculation precisely correct to sa | **UNSUPPORTED** | missing-std-model | base64::encoded_size  [raw] NOT_EQUIV; base64::encode_mode  [api] UNSUPPORTED |
| 3c9bc2b | 2017-01-11 | Move error return outside of loop for another 10% | **UNSUPPORTED** | aeneas-error | decode_mode_buf [api] UNSUPPORTED |
| 87d62a9 | 2017-01-11 | Read chunk via read_u64 | **UNSUPPORTED** | aeneas-error | decode_mode_buf [api] UNSUPPORTED |
| f3c8891 | 2017-01-10 | Write into a mutable slice | **UNSUPPORTED** | aeneas-error | decode_mode_buf [api] UNSUPPORTED |
| 4d6d81a | 2017-01-10 | Main decode loop looking more like aklomp's | **UNSUPPORTED** | aeneas-error | decode_mode_buf [api] UNSUPPORTED |
| 8361c1e | 2017-01-10 | Use byteorder to write into the buffer | **UNSUPPORTED** | aeneas-error | decode_mode_buf [api] UNSUPPORTED |
| dfb2864 | 2017-01-11 | Calculate error byte at error time rather than writing  | **UNSUPPORTED** | aeneas-error | decode_mode_buf [api] UNSUPPORTED |

## Most interesting cases

### Proofs that went through

- **fa6a11f** removes a redundant `encoded_size` call from `encode_config`.
  - Verdict: **EQUIV**, plain `=` on all inputs (`encode_config_equiv`).
  - The helper `encode_with_padding` is unchanged by the commit, but Aeneas cannot translate it, so it is left opaque. The proof assumes its two copies are the same function and that it keeps the slice length.
- **5c043f9** drops the `Vec::with_capacity(len*4/3)` hint in `decode_engine`.
  - Verdict: **REFINES**.
  - Aeneas does not model Vec capacity, so the capacity change itself is invisible.
  - The old hint computes `len*4` with overflow checking, so the old code panics when len > usize::MAX/4. The new code never computes it.
  - Under the precondition that `len*4` does not overflow, the two are EQUIV (`deng_equiv_no_overflow`).
- **9687b03** changes what `add_padding`'s argument means.
  - Raw `add_padding` is **NOT_EQUIV** with a kernel-checked counterexample: for n=1 the old code writes 2 pad bytes and the new code writes 3.
  - The caller `encode_with_padding`, generic over any engine, is **EQUIV_UNDER_PRECOND** (`encode_with_padding_equiv`). Precondition: `internal_encode` returns the unpadded encoded length.
  - The commit verdict is still UNSUPPORTED, because the other caller (`ChunkedEncoder::encode`) triggers an Aeneas internal error.
- **d021c39** moves the `Engine` default methods into non-generic inner functions.
  - `encode_slice`, `encode`, `decode` and `decode_vec` are **EQUIV**.
  - `encode_string`, `decode_slice` and `decode_slice_unchecked` produce generated Lean that does not typecheck. For `decode_slice` and `decode_slice_unchecked` the cause is an Aeneas naming bug: a binder named `engine` hides the `engine.` namespace prefix.
  - Both of those prove EQUIV once that one binder is renamed by hand, but the hand-fixed models are not counted as evidence.
- **f977b8e** makes `encoded_size` exact.
  - Raw `encoded_size` is **NOT_EQUIV**, as intended: for input length 0, the old code returns 4 and the new code returns 0.
  - The value is only used as a String capacity hint, and Aeneas does not model String, so the api level is missing-std-model.
- **eeb9f5c** unrolls the encode loop 4x.
  - Raw `encode_to_slice` translates fully, including the byteorder dependency.
  - The equality proof did not finish within the 45-minute budget, so the verdict is UNKNOWN.
  - A native random test of 190,500 cases found no difference. That test is not checker evidence.

### What blocked the checker

- **Aeneas translation errors (14 commits).** Almost every decoder version, from 2016 to 2024, is untranslatable. Causes: early returns inside loops, breaks to outer loops, returns inside nested loops, nested borrows, and 'Could not match the contexts' at loop joins.
- **A real bug the checker could not reach.** **dfb2864** introduced a decoding bug: it uses `>>16` where `>>8` was meant. A native differential run shows "aGVsbG8gd29ybGQh" decoding wrongly (`rust/rust-base64/work/dfb2864/native-diff.txt`). The bug was fixed later in dc44239. Because Aeneas cannot translate the function, the verdict is UNSUPPORTED (aeneas-error).
- **SIMD engines (ce2281b).** The AVX2 kernels translate, but every intrinsic and raw-pointer store is an opaque axiom. In the model the stores never reach the output slice, so the verdict is UNSUPPORTED (unsafe-raw-pointers).
- **String-based APIs (99603c1, 7509b25, f977b8e api).** Aeneas only declares the relevant String operations as axioms, so these are missing-std-model.

## Modelling assumptions

- **Duplicated declarations.** Old and New are generated into separate Lean namespaces, so every crate type and every external std declaration exists twice.
  - Theorems map the duplicated crate types explicitly.
  - Theorems take hypotheses that the two copies of each external declaration are the same function, e.g. "the two copies of Vec::truncate are equal". The hypotheses used are listed per unit in the JSON.
- **Engine-generic theorems** quantify over pairs of old and new engine instances whose used fields agree.
- **Axioms.** `#print axioms` for every theorem lists only propext, Classical.choice, Quot.sound, Aeneas-generated external declarations, and the Aeneas library type `core.fmt.Formatter`. The audit output is in `rust/rust-base64/work/axiom-audit.txt`.
- **Toolchain.** The Aeneas binary is the sibling project's patched build, not the unpatched one on PATH. Builds use `RUSTFLAGS=--cap-lints=warn` because old commits set `#![deny(warnings)]`.

## Artifacts

- `rust/rust-base64/work/<c>/`: llbc files, logs, `proof.log`, `units.json`.
- `rust/rust-base64/lean/C<c>/`: generated Lean and `Proof.lean`.
- `rust/rust-base64/scripts/`: `extract.sh`, `screen.sh`, `probe.sh`, `audit_axioms.py`, `build_results.py`, `build_md.py`, `meta.py`.
- The rejected commits, each with its reason, are listed in the JSON.
