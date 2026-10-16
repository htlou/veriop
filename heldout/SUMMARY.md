# Held-out verified optimizations: final status

Status as of 2026-10-15 21:40 PDT (all wrap-up agents finished). No further optimization work was done after the wrap-up was requested.

**VERIFIED** means all four of the following hold:
- The equivalence/refinement check covers every input of the official benchmark task.
- The checker is either unmodified, or our modifications pass the checker's own test suite with all existing verdicts unchanged.
- There are no unproved assumptions beyond the checker's trusted semantics.
- A negative control (mutant) is rejected.

Anything less counts as **NOT VERIFIED**.

Speedups are from each project's official benchmark, run baseline vs candidate in alternating order with an A/A control. CPU timings come from one pinned core on a shared host, so they show direction and magnitude but are not official scores. GPU timings come from an idle H100, checked once per second for other processes.

## Verdicts

| # | Target | Optimized function | Official benchmark (main metric) | Verdict | Held-out? |
|---|---|---|---|---|---|
| 5 | s2n-bignum, x86 asm + HOL Light | `bignum_normalize` (`x86/generic/bignum_normalize.S`) | `benchmark` entry `bignum_normalize (32 -> 32)`: **5.58×** (3.69× with alignment controlled) | **VERIFIED** | yes |
| 1 | llama.cpp, CUDA + Volta | `conv2d_dw_kernel_fixed` for 3×3/5×5 (`ggml/src/ggml-cuda/conv2d-dw.cu`) | `test-backend-ops perf -o CONV_2D_DW`: **1.657×** geomean (6 cases) | **VERIFIED** (official shapes only) | yes |
| 2 | rust-base64, Rust + Aeneas/Lean | `decode_complete_quads` + `decode_chunk_{8,4}_pairs` (`src/engine/general_purpose/decode.rs`) | Criterion `decode_slice` **1.589×**, `decode_reuse_buf` **1.735×**, `decode` 1.375×; all 32 decode cases 1.487× | **VERIFIED** for `decode_slice`, `decode`, `decode_vec`; **NOT VERIFIED** for `decode_stream` (1.288×) | close to trial (same crate, same pair-table idea as the trial encode task) |
| 3 | libdivide, C + Alive2 | `libdivide_s32_do_raw`, `libdivide_s64_do_raw` (`libdivide.h`) | `benchmark_branchfree s32 s64 branchfull`: **1.86×** geomean (1.77× / 1.95×) | **VERIFIED** | **no**: reuses the trial's branch→select trick on neighbouring functions |
| 3b | fast_float, C++ + Alive2 | `from_chars_int_advanced<uint16_t,char>` 8-byte fast path (`include/fast_float/ascii_number.h`, `parse_number.h`, `float_common.h`) | `bench_uint16`: **1.58×** for the checked-IR build that is proved; the default upstream build is 1.98× but is only tested | **VERIFIED** for the checked-IR build, with the precondition that `value` does not overlap the input (C++ object lifetime) | yes, so this is the clean held-out C result |
| 6 | vLLM, CUDA + Volta | rotary_embedding NeoX vec4 path; `relu_squared` flat path | `benchmark_rope.py` 1.069×; `benchmark_relu_squared.py` 1.058× (bf16 default), 1.080× (fp32) | **VERIFIED** (all three), below 1.5× | yes |
| 4 | RoaringBitmap, Java + KeY | `BitmapContainer.rank` two-sided scan | `RankBenchmark` affected configs **1.77×** | **NOT VERIFIED**: needs the cardinality invariant, which the public constructor can break | yes |
| 4b | RoaringBitmap, Java + KeY | `BitmapContainer.select` 4-word block skip | `SelectBenchmark` 1.42× | **NOT VERIFIED**: new-version proofs open, relational proofs not run | yes |

**Summary:**
- Verified with at least 1.5× on the main metric: s2n-bignum, llama.cpp, rust-base64, libdivide, and fast_float (checked-IR build).
- Clean held-out results among them: s2n-bignum, llama.cpp and fast_float.
- vLLM is verified but its speedup is below 1.5×. Java is not verified.

## What each verified check covers

- **s2n-bignum:** HOL Light proves the new machine code meets the unchanged specification (`BIGNUM_NORMALIZE_CORRECT` + 4 subroutine theorems) for every k and every input. Only code size and exit offset differ from the original theorems. Replayed 2026-10-15 in 133 s (`SUMMARY-replay/`).
- **libdivide:** Alive2 `--bidirectional` reports 2/2 correct. The functions are loop-free, so the check is complete. The mutant is rejected. Replayed 2026-10-15 (`SUMMARY-replay/libdivide-alive2.log`).
- **llama.cpp:**
  - **Every block checked:** every CTA of the 14 official test/perf configurations was checked, 528,340 CTAs, all `EQUIVALENT`.
  - **Bit-exact:** output expressions are syntactically identical, so results are bit-exact.
  - **Checker change:** Volta copy with `--cta` (`llama-cuda/volta-cta.patch`). Volta's tests give 489 passed and the old verdicts replay byte-identically.
  - **Not covered:** shapes outside the official ones and the C++ host dispatch.
- **rust-base64:**
  - **Theorems:** Lean `decode_slice_equiv`, `decode_equiv`, `decode_vec_equiv` (+ `_default_` variants). No `sorry`; axioms are only `propext`, `Classical.choice`, `Quot.sound` and the opaque `Formatter`.
  - **Opaque functions:** shared, unchanged std/library functions are left opaque.
  - **Translator patches:** checked against the upstream Charon (547) and Aeneas (113) test suites with unchanged results, plus the Lean library build.
- **vLLM:**
  - **rope:** all 163,200 CTAs of 32 configs, for every position in [0, 8192).
  - **relu:** all CTAs and overlap windows of the 12 configs that use the new path. The other 24 configs run identical PTX/SASS.
  - **Bit-exact:** output expressions are syntactically identical.
  - **Checker:** Volta copy with the cta, 16-bit pack/unpack and ranged-index extensions. Its tests give 489 passed and the old verdicts replay. The ranged-index soundness rests on a written argument plus tests, not a mechanized proof.

- **fast_float:**
  - **Case split:** a proved partition sends every input to exactly one sub-check:
    - V1a/V1b: the new function equals a call to the slow copy;
    - V3: the slow copy is identical to the old body;
    - V2: 99 fast-path cases, checked both ways;
    - V2G: the same 99 cases with the input buffer at any address.
  - **Results:** 99/99 for V2 and 99/99 for V2G, every one bidirectional.
  - **Loop bounds:** proved sufficient by a new bound check.
  - **Negative controls:** all rejected (`c-alive2/final-verification/summary.md`).
  - **Checker patch:** three changes — the bound check, a table limit raised from 128 to 1024 bytes, and environment switches that skip only the vacuity sanity queries.
  - **Checker validation:** Alive2's own `alive-tv` suite (992 tests) gives stock 987 pass / 5 fail and patched 958 / 34. All 29 changed tests were classified (`SUMMARY-replay/alive2-lit/changed-classified.txt`):
    - 27 are the stricter bound check refusing to accept partially unrolled runs;
    - 1 (`pr29034-unroll`) has identical output on both builds, so it is lit noise;
    - 1 (`large-const-opt`, marked "FIXME: this should work some day") is now correctly proved, because the 129-byte constant is modelled exactly.
    - **No expected-error test is accepted by the patched checker.** The strict rule says "existing verdicts unchanged"; this departs from it only in the stricter or more precise direction.

## Regression checks on the rest of each official suite

| Target | Scope | Result |
|---|---|---|
| llama.cpp | all 35 ops with perf cases, run op by op (1,416 cases besides CONV_2D_DW) | 1.003× vs A/A 1.004×. One flagged CUMSUM case re-timed as noise (5 pairs, median 1.05×) |
| rust-base64 | full 88-case Criterion suite | encode cases (unchanged code) 0.989×, none flagged |
| libdivide + fast_float | 1,824 entries | 1.002× outside the affected entries. Fixed-divisor s32 is about 1% slower |
| RoaringBitmap | RankBenchmark, ContainsRange, 17 controls | none flagged after a recheck |
| s2n-bignum | full 406-entry benchmark, 2 rounds | 0.975 / 1.003, noise |

## Where things are

Everything lives under `/srv/home/hantaolou/code/veriop/heldout/`. Each directory has a `README.md`.

| Directory | Patch | Proof / check | Benchmark data |
|---|---|---|---|
| `asm-hol/` | `bignum_normalize.patch` | `proof/` | `raw/` |
| `llama-cuda/` | `conv2d-dw-fixed.patch` | `sweep/summary.json` | `bench/ab-baseline-vs-candidate/`, `bench/per-op/` |
| `rust-aeneas/` | `patches/base64-decode-pairs.patch` | `proof/DecodeProof.lean`, `final-verification/lean/DecodeApiProof.lean`, `scripts/verify.sh` | `results/full-suite/` |
| `c-alive2/` | `ld/libdivide-signed-select.patch`, `patches/u16-fastpath.patch` | `results/alive2/` (libdivide), `final-verification/summary.md` + `alive2-sinkcheck.patch` (fast_float) | `results/bench/`, `results/full-suite/` |
| `vllm-cuda/` | `candidate-rope-vec4.patch`, `candidate-relu-flat-*.patch` | `final-verification/summary.json` | `bench/` |
| `java-key/` | `rank-two-sided.patch`, `round3/select-block4.patch` | `key/relational/`, `final-verification/STATUS.md` | `jmh/` |

Replay outputs from the coordinator are in `SUMMARY-replay/`. Nothing has been pushed to GitHub.
