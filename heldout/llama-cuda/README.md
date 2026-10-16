# Held-out verified optimization: llama.cpp CUDA `CONV_2D_DW`

**Verification status: VERIFIED** for all inputs of the official CONV_2D_DW test and perf shapes, with
bit-identical IEEE outputs. Other shapes are not covered. Every CTA of every official configuration was
checked: 14 configs, **528,340 / 528,340 CTAs `EQUIVALENT`**, and all **135,254,912** outputs syntactically
identical. Details are in section 9.

**Result:** a rewrite of llama.cpp's depthwise 2-D convolution kernel (`ggml/src/ggml-cuda/conv2d-dw.cu`) is
**1.657x faster (geomean over all 6 official `test-backend-ops perf -o CONV_2D_DW` cases)** on an H100.
Per-case paired medians are 1.33-1.87x, and every case is faster in every pair. The official eval tests (8/8)
and 38 extra CUDA-vs-CPU cases pass on both baseline and candidate. The full `test-backend-ops test` suite
gives identical results on both builds: 17,206 OK and 0 FAIL, then the same pre-existing abort in an
unrelated mxfp4 `MUL_MAT_VEC_FUSION` case (section 6).

Sections 3-8 describe the first, CTA-0-only verification round. On its own, that round is **not**
sufficient: its 512x512 negative control accepted a planted bug outside CTA 0. Section 9 closes that gap.

| | |
|---|---|
| llama.cpp baseline | `06cad0b9e77315bd2930bd4f70a6d7b37b2a01c1` (pinned in `benchmarks/targets.tsv`), worktree `baseline/` |
| candidate | local commit `1e07a9f1fd43` on top of the baseline (not pushed), worktree `candidate/`, patch [`conv2d-dw-fixed.patch`](conv2d-dw-fixed.patch) |
| checker | Volta `5d7530cc7fbe` (unmodified; `cuda/repos/volta/target/release/volta`) |
| toolchain | nvcc 12.8.93, driver 570.195.03, build `-DCMAKE_CUDA_ARCHITECTURES=80` (compute_80 PTX, JIT-compiled on sm_90) |
| GPU | physical GPU 7 (`GPU-9ae3b5a3-...`), NVIDIA H100 80GB HBM3; idle before every run |

All hashes are in [`provenance.json`](provenance.json).

## 1. Target selection

The baseline `test-backend-ops perf -b CUDA0 -o <OP>` ran for 18 candidate ops ([survey/](survey/),
[survey.tsv](survey/survey.tsv)). Each op was checked against H100 HBM3 (~3.35 TB/s) and Volta's input
restrictions. Volta requires PTX with scalar kernel parameters, statically resolvable addresses, and no
async/semaphore code.

| op (official cases) | baseline observation | decision |
|---|---|---|
| **CONV_2D_DW (6)** | 300-505 GB/s; 512x512x256 takes ~1 ms vs ~0.17 ms DRAM roofline | **chosen**: scalar params; one thread per output, so CTA tiles can be preserved |
| CONT permute (6) | 300-700 GB/s | headroom, but a tiled transpose changes the CTA→element map; Volta compares CTA 0 footprints |
| CUMSUM (43) | many cases <100 GB/s | slow cases dispatch to CUB device scans (decoupled look-back), outside Volta's model |
| SOFT_MAX / ROPE / PAD_REFLECT_1D | various | by-value struct / `uint3` params; Volta rejects `ld.param` at nonzero offsets |
| ARGMAX, SUM_ROWS, POOL_2D, ... | near roofline or launch-bound (~2 µs) | <1.5x headroom on the official shapes |

## 2. Baseline bottleneck and optimization

The baseline `conv2d_dw_kernel<T, Layout>` (WHCN or channel-contiguous CWHN layout; f32 or f16 weights)
launches one thread per output in 256-thread blocks. Each thread:

- unpacks its flat index with four signed div/mod chains. In an intermediate unrolled kernel that kept this
  unpack, the chains were about 130 of its 232 static SASS instructions (sm_80 `cuobjdump`). The baseline
  kernel has 440 static SASS instructions;
- computes runtime loop bounds;
- walks a runtime-bounded `ky × kx` loop, so tap loads are serialized behind loop control.

At 991 µs for 512 MB (500 GB/s) it is far from DRAM-bound. Instruction counts and the gain from unrolling
alone point to latency and issue limits, but without hardware counters this is an inference, not a
measurement.

The candidate adds `conv2d_dw_kernel_fixed<T, cwhn, KW, KH>`. The host dispatches it for 3x3 and 5x5 kernels
and keeps the original kernel for every other size. The fixed kernel:

- keeps the same signature (`kernel_w`/`kernel_h` are passed but unused), so Volta can share one parameter
  list across both kernels;
- keeps the same launch (`blocks × 256`), the same thread→output mapping, and the same accumulation order
  (`ky`, then `kx` ascending, skipping out-of-image taps);
- fully unrolls the taps with compile-time `KW`/`KH`. Each tap runs only if its input coordinate is inside
  the image, which equals the original `[min,max)` bounds, so all tap loads issue independently;
- decomposes the index with three unsigned divisions. For WHCN the plane index is `n*C+c`; for both layouts
  the output offset equals the global thread index.

The change is +98/−12 lines in one file. No API or compiler-flag changes, and the per-output fma order is unchanged. The f16
weight path gets the same specialization. Two intermediate steps were measured informally with
single-process runs (not the paired protocol; see section 8). Unrolling alone gave 1.32-1.61x. Adding the
cheaper index math gave the final kernel.

## 3. Formal verification (Volta)

Driver: [`scripts/verify_conv2d_dw.py`](scripts/verify_conv2d_dw.py). Evidence is in [`volta/`](volta/): one
`.json` with the exact command and exit code, plus a `.log`, per run.
Summary: [`volta/summary.json`](volta/summary.json).

- **Inputs:** the PTX of `conv2d-dw.cu` from both trees, compiled with the exact CMake nvcc command and
  `--ptx` (compute_80) ([`scripts/extract_ptx.py`](scripts/extract_ptx.py), [`ptx/`](ptx/)).
- **PTX correspondence:** [`scripts/audit_ptx.py`](scripts/audit_ptx.py) confirms that every conv2d_dw entry
  equals the PTX embedded in the benchmarked `libggml-cuda.so` and its `.o`, after whitespace/comment
  normalization (4/4 baseline, 12/12 candidate; [`ptx/embedded-ptx-audit.json`](ptx/embedded-ptx-audit.json)).
  The H100 cannot run the sm_80 SASS, so the driver JITs exactly this PTX.
- **Pairs checked:** original `conv2d_dw_kernel<T,Layout>` vs candidate `conv2d_dw_kernel_fixed<T,cwhn,K,K>`.
  The pairs cover T ∈ {f32, f16}, layout ∈ {WHCN, CWHN} and K ∈ {3, 5}, so all 8 new specializations are
  exercised.
- **11 instances × 4 = 44 `volta compare` runs**, all `EQUIVALENT`, with `--sample 0` (every common output
  element checked):
  - *Official perf shapes:* 512x512x256 3x3 s1 p1, 112x112x32 3x3 s1 p1, 56x56x128 5x5 s2 p2. Real grid
    (e.g. 262144 CTAs); Volta checks CTA 0 = first 256 outputs.
  - *Official eval shapes:* 17x34x9 3x3 s1 p0, 32x8x64 3x3 s2 p1. CTA 0 only.
  - *Six full-output instances:* total ≤ 256 outputs, so grid = 1 and the **entire output** is checked. They
    cover every image edge, channel and batch boundary, batch 2-3, dilation 2, strides 1-3 and padding 0-4:
    8x8x2x2 k3s1p1, 11x11x3x2 k5s2p2, 9x7x4 k3s1p2d2, 12x10x2 k5s1p4d2, 13x13x3x2 k5s3p1, 7x5x3x3 k3s2p0.
- **Safety:** 88 separate `volta analyze` runs (each side of each instance). All report
  `no data races or deadlocks detected` and the expected output footprint (256, or the full total).
- **Negative controls:** these show what the check can and cannot catch.
  - *Layout swap* (WHCN reference vs CWHN candidate) is rejected with `NOT EQUIVALENT: 256 mismatched`.
  - *Off-by-one mutant* of the candidate (`in_x_idx <= in_w`, [`volta/mutant/`](volta/mutant/)) is
    **rejected** on the full-output 8x8x2x2 instance: Volta reports an out-of-bounds input read.
  - The same mutant is **accepted** on the 512x512x256 instance. That bug only affects output column 511, and
    CTA 0 holds columns 0-255. This shows the scope limit below concretely; it is why the full-output
    instances are included.
  - An earlier control (f16 kernel read as f32) failed with a Volta configuration error. It does not count
    as a semantic rejection; that first run is archived in [`volta-run1-superseded/`](volta-run1-superseded/)
    (44/44 EQUIVALENT there as well).
- **Extra syntactic observation:** for all 44 instances, the symbolic output expressions printed by Volta
  are textually identical between the two kernels: same `fma` nesting order, same operands
  ([`volta/expr-identity.json`](volta/expr-identity.json)). This suggests bit-identical IEEE results but
  does not prove them.

**What is proved:** for each listed concrete instance (shape, stride, padding, dilation, layout, weight
type, block 256, real grid), the outputs written by CTA 0 of the candidate equal those of the original as
real-valued functions of the symbolic inputs and weights. Both kernels write the same footprint, and neither
has races or deadlocks.

**What is not proved:**
- CTAs other than CTA 0 on multi-CTA instances. Volta assumes CTA symmetry; the 512x512 mutant shows this
  can miss bugs. The full-output instances and the GPU tests below partly cover it.
- Shapes, strides, paddings and dilations outside the listed instances.
- IEEE-754 bit equality (floats are modeled as reals).
- int32 overflow behaviour for tensors with ≥2^31 elements. There the candidate's `size_t` plane offset
  differs from the original's overflowing `int`.
- The host dispatch logic, which is C++ and outside the PTX.

## 4. Official benchmark (`test-backend-ops perf -b CUDA0 -o CONV_2D_DW`)

Driver: [`scripts/bench.py`](scripts/bench.py).

- **Protocol:** 10 pairs per experiment with alternating order (AB, BA, ...). Each run is one complete
  official perf process covering all 6 cases.
- **Statistic:** speedup is the median of per-pair ratios `baseline us/run ÷ candidate us/run`, with min
  and max.
- **GPU checks:** before every run, GPU 7 had no compute process, 0 MiB used and 0% utilization; state was
  recorded before and after every run.
- **GPU state:** P0 in all 80 samples, memory clock 2619 MHz. SM clock was 1980 MHz under load (345-510 MHz
  while idle between runs). Temperature was 32-41 °C.
- **Raw data:** [`bench/ab-baseline-vs-candidate/`](bench/ab-baseline-vs-candidate/) and
  [`bench/aa-baseline-vs-baseline/`](bench/aa-baseline-vs-baseline/). Each holds per-run logs, commands,
  GPU state and `summary.json`.

| official case | baseline us/run | candidate us/run | baseline GB/s | candidate GB/s | paired speedup (min-max) |
|---|---:|---:|---:|---:|---:|
| 512x512x256, 3x3 s1 p1, WHCN | 998.73 | 534.40 | 500.6 | 935.6 | **1.869x** (1.868-1.869) |
| 512x512x256, 3x3 s1 p1, CWHN | 1167.97 | 642.80 | 434.8 | 790.0 | **1.817x** (1.816-1.817) |
| 112x112x32, 3x3 s1 p1, WHCN | 9.09 | 5.17 | 329.4 | 579.2 | **1.758x** (1.744-1.778) |
| 112x112x32, 3x3 s1 p1, CWHN | 9.75 | 5.88 | 306.7 | 508.6 | **1.658x** (1.615-1.671) |
| 56x56x128, 5x5 s2 p2, WHCN | 6.06 | 3.85 | 310.3 | 488.1 | **1.576x** (1.565-1.590) |
| 56x56x128, 5x5 s2 p2, CWHN | 5.84 | 4.39 | 322.4 | 428.0 | **1.328x** (1.314-1.374) |
| **geomean (6 cases)** | | | | | **1.657x** (per-pair geomean 1.647-1.668) |

(GB/s is test-backend-ops' own figure, median over pairs.)

**A/A noise** (baseline vs baseline, same protocol): per-case paired medians are 0.995-1.002x and the
geomean is 0.9997x. Individual pairs range 0.979-1.045x, with the widest spread on the ~6 µs cases.
The smallest candidate pair ratio (1.314x) is far outside the A/A range.

The 56x56 CWHN case is lowest (1.33x). It has only 392 CTAs of 256 threads, under one wave on 132 SMs,
and runs in ~4 µs. Plausibly a fixed per-launch cost dominates: the smallest official cases of other ops
bottom out at ~1.6-2 µs in the survey. This was not measured separately.

## 5. Correctness tests (CUDA vs CPU reference, `test-backend-ops test`)

Driver: [`scripts/run_tests.py`](scripts/run_tests.py); results in [`tests/summary.json`](tests/summary.json).

| suite | baseline | candidate |
|---|---|---|
| official eval cases `-o CONV_2D_DW` (3x3 only, f32/f16, both layouts) | 8/8 OK | 8/8 OK |
| extra cases [`tests/conv2d-dw-extra-cases.txt`](tests/conv2d-dw-extra-cases.txt) (`--test-file`) | 38/38 OK | 38/38 OK |

The extra cases come from [`scripts/gen_extra_cases.py`](scripts/gen_extra_cases.py). They cover 5x5,
dilation 2, stride 3, batch 2-3, the generic fallback (7x7, 1x1), and the three official perf shapes in
test mode, for f32/f16 weights and both layouts. They fill gaps in the official eval list, which only has
3x3 cases.

## 6. Full repository test suite

[`scripts/run_full_suite.py`](scripts/run_full_suite.py) runs `test-backend-ops test -b CUDA0` (all ops) on
the candidate and then the baseline. Result: [`tests/full-suite-summary.json`](tests/full-suite-summary.json).
Per-op tallies are in [`tests/full-suite-per-op.json`](tests/full-suite-per-op.json).

**Both builds abort at the same point with the same pre-existing error.** The failure is
`CUDA error: invalid argument` in `ggml_cuda_kernel_launch` (common.cuh:1714) on the first
`MUL_MAT_VEC_FUSION(type=mxfp4, ..., use_id=1, ...)` case after `m=4`, giving exit −6 (SIGABRT). It is
identical on the unmodified baseline, so the patch did not introduce it. It is not investigated here; it may
be specific to this upstream commit or to the compute_80-PTX-on-sm_90 build.

Up to the abort, both runs executed the same 138 ops with identical outcomes: **17,206 OK and 0 FAIL each**,
including all 8 CONV_2D_DW cases. Ops ordered after `MUL_MAT_VEC_FUSION` in the eval list were not reached
in either run. The patch touches only `conv2d-dw.cu`, which is fully covered by sections 5-6.

GPU note: both suite runs started on an idle GPU 7. During the baseline suite run (correctness only, not
timing), another user's job (`traj.py`) started on GPUs 7, 5 and 4 and was still present at the end. All
benchmark runs (section 4) had finished before then, with clean before/after states. Further runs excluding
the crashing op (e.g. `-o '^(?!MUL_MAT_VEC_FUSION$).*'`) were not done because GPUs 7/5/4 were all busy.

## 7. Reproduce

From `heldout/llama-cuda/scripts/` (evidence is never overwritten; `record.py` refuses existing files, so
move old evidence first):

```bash
python3 extract_ptx.py ../baseline conv2d-dw.cu ../ptx/conv2d-dw-baseline.ptx   # and ../candidate
python3 verify_conv2d_dw.py      # 44 compares + 88 analyses + 3 negative controls -> ../volta/summary.json
python3 verify_conv2d_dw.py --summarize-only   # re-derive summary from recorded logs only
python3 expr_identity.py; python3 audit_ptx.py
python3 run_tests.py; python3 run_full_suite.py
python3 bench.py <label> baseline candidate 10  # GPU 7, else 5, else 4; checks idleness before each run
```

## 8. Open issues and notes

- **Proof scope** is concrete-instance and CTA-0-only for large shapes (section 3). The mutant control shows
  a CTA-0-only proof on a large shape alone would miss an edge bug in another CTA.
- **Hardware counters:** none were collected. `ncu` needs admin profiling permission on this host
  (`RmProfilingAdminOnly`, as in the prior RMSNorm study). The bottleneck analysis rests on SASS/PTX
  instruction counts and timing.
- **Headroom:** the 512x512 cases still reach only ~0.79-0.94 TB/s. Larger gains (smem tiling, several
  outputs per thread) change the per-CTA work assignment or tile shape. They need a design that keeps CTA-0
  footprints equal to stay inside Volta's comparison model, so they were not pursued.
- **Not measured:** f16-weight and non-official shapes were tested for correctness only, not timed.
- **Development history:** the first candidate (unrolling only, v1) was checked informally with
  single-process perf runs (1.32-1.61x) and a Volta compare on the official 3x3 shape. It was superseded
  before the formal runs; only the final kernel has formal evidence.
- **Other targets considered** (section 1) were rejected for Volta-model reasons, not on measured
  performance.
- **Repository state:** the worktrees `baseline/` and `candidate/` live in this directory and are attached
  to `cuda/repos/llama.cpp`. The candidate commit is local only; nothing was pushed.

## 9. All-CTA verification of the official shapes (final verdict)

**Verdict: VERIFIED.** This covers all inputs of the official CONV_2D_DW test and perf shapes:
- both layouts;
- f32 weights for the perf shapes, f32 and f16 weights for the eval shapes (the weight types the official
  cases use).

The candidate's outputs are bit-identical (IEEE) to the baseline's. Other shapes, strides, paddings and
dilations are not covered.

### 9.1 Volta extension (`volta-cta/`)

Volta's interpreter hard-codes `%ctaid = (0,0,0)`. `volta-cta/` is a copy of Volta `5d7530c`;
`cuda/repos/volta` is untouched. Patch: [`volta-cta.patch`](volta-cta.patch) (+151/−5, 4 files). It adds:

- `--cta x,y,z` (analyze and compare): sets `AnalysisConfig.cta_id`, which the interpreter returns for
  `%ctaid`. The default is (0,0,0), and `validate()` rejects a CTA outside the grid. Nothing else changes.
- `compare --syntactic` (opt-in). It prints `SYNTACTIC: k/n elements identical`, which compares the paired
  output expressions structurally across the two arenas: same node kinds, constants, input elements and
  child order, with no algebra. Fresh symbols, `Undefined` and `Discarded` never match. It also prints
  `FOOTPRINT: out n=.. min=.. max=..`.

No-regression evidence ([`volta-cta-evidence/`](volta-cta-evidence/)):
- **Volta's own test suite** gives identical results on a pristine copy (`volta-pristine/`, git worktree at
  `5d7530c`) and on `volta-cta`: 489 passed, 0 failed, 2 ignored, with identical per-test outcomes.
- **Replay:** all 182 recorded runs from section 3 were replayed with the `volta-cta` binary, both with
  default flags and with an explicit `--cta 0,0,0`. Output is byte-identical after masking wall-clock
  timings (`\d+.\d+s`), and exit codes match ([`regression-default-cta.json`](volta-cta-evidence/regression-default-cta.json)).
- **Planted off-by-one bug** (512x512x256 WHCN): accepted at CTA 0, as with the original Volta. At CTA 1,
  which holds column 511, it gives **NOT EQUIVALENT: 1 mismatched element**. At CTA 262143 Volta reports an
  out-of-bounds read ([`planted-offbyone-512-summary.json`](volta-cta-evidence/planted-offbyone-512-summary.json)).

### 9.2 Every CTA of every official configuration

[`scripts/sweep_all_ctas.py`](scripts/sweep_all_ctas.py) runs one
`volta compare baseline.ptx candidate.ptx --cta i --sample 0 --syntactic` per CTA, with block 256 and the
real grid. Verdicts are stored in [`sweep/<config>.tsv`](sweep/), one row per CTA (resumable), with the
summary in [`sweep/summary.json`](sweep/summary.json).

A CTA passes iff all of the following hold:
- exit status 0, and the verdict is `EQUIVALENT` over all of its n expected outputs;
- `SYNTACTIC n/n`;
- its footprint is exactly `[256·i, 256·i+n−1]`.

Resources: CPU only; at most 96 processes; CPU affinity 0-159 and 192-351; pause while the load average is
above 300. The observed load was ≤ ~140 on 384 CPUs. No GPU was used.

| config (official) | CTAs | EQUIVALENT | other | outputs (all syntactically identical) |
|---|---:|---:|---:|---:|
| perf 512x512x256 k3 s1 p1, f32, WHCN | 262,144 | 262,144 | 0 | 67,108,864 |
| perf 512x512x256 k3 s1 p1, f32, CWHN | 262,144 | 262,144 | 0 | 67,108,864 |
| perf 112x112x32 k3 s1 p1, f32, WHCN | 1,568 | 1,568 | 0 | 401,408 |
| perf 112x112x32 k3 s1 p1, f32, CWHN | 1,568 | 1,568 | 0 | 401,408 |
| perf 56x56x128 k5 s2 p2, f32, WHCN | 392 | 392 | 0 | 100,352 |
| perf 56x56x128 k5 s2 p2, f32, CWHN | 392 | 392 | 0 | 100,352 |
| eval 17x34x9 k3 s1 p0, f32 / f16, WHCN / CWHN (4 configs) | 4 × 17 | 4 × 17 | 0 | 4 × 4,320 |
| eval 32x8x64 k3 s2 p1, f32 / f16, WHCN / CWHN (4 configs) | 4 × 16 | 4 × 16 | 0 | 4 × 4,096 |
| **total (14 configs)** | **528,340** | **528,340** | **0** | **135,254,912** |

For every config, the per-CTA footprints tile `[0, total)` exactly and disjointly (`tiles_output_disjointly:
true`).

### 9.3 Sweep negative controls

These are [`sweep-negatives/`](sweep-negatives/), produced by the same driver with a mutant as the optimized
side:
- **N1, off-by-one mutant, all 262,144 CTAs of 512x512x256 WHCN:** exactly the 131,072 odd CTAs fail. Those
  are the CTAs holding column 511: 131,070 NOT EQUIVALENT, plus 2 out-of-bounds errors at CTAs 262141 and
  262143. All even CTAs pass.
- **N2, reversed tap order** (`kx` descending): real-valued equal but a different fma order. On the
  112x112x32 configs, all 3,136 CTAs are `EQUIVALENT`, but `SYNTACTIC` is 0/256 in every CTA, so all of
  them fail. This shows the bit-exactness criterion is strictly stronger than Volta's real-valued verdict.

### 9.4 Why this means "all inputs" and "bit-identical"

- **All CTAs of the grid:** checked individually. Neither kernel reads `out`, uses shared memory, atomics or
  inter-CTA communication. The per-CTA footprints are disjoint and cover the whole output, so the kernel
  output is exactly the union of the per-CTA results.
- **All input values:** inputs and weights are symbolic. In these kernels, addresses and control flow
  depend only on thread/block indices and the concrete shape parameters, never on data. Each CTA's symbolic
  run therefore covers every input value.
- **IEEE bit-identity:** see [`scripts/ieee_audit.py`](scripts/ieee_audit.py) and
  [`ieee-ptx-audit.json`](volta-cta-evidence/ieee-ptx-audit.json); all 16 kernels conform.
  - In every compared kernel, the only float-producing PTX instructions are exact loads, the exact
    `cvt.f32.f16`, `mov.f32 0f00000000` (the +0.0 accumulator seed) and `fma.rn.ftz.f32`.
  - Volta's on-the-fly simplifications need a constant multiplicand or all-constant operands. Neither ever
    occurs here, so each `Fma` node is exactly one executed `fma.rn.ftz.f32` with the recorded operand
    order.
  - Every output's expression is syntactically identical between baseline and candidate. Hence both kernels
    run the same IEEE operation sequence on the same operands, giving identical bits for every input bit
    pattern, including NaN, Inf and subnormals.

**Remaining trust assumptions:**
- Volta's PTX semantics and symbolic execution are correct.
- The PTX audited and checked is the PTX that runs. Section 3 confirms it equals the PTX embedded in the
  benchmarked libraries, and the H100 JITs that compute_80 PTX.
- nvcc and the driver's JIT compile identical PTX instruction sequences identically.
- The host dispatch selects `fixed<3,3>` / `fixed<5,5>` for these shapes. This was reviewed in the C++ and
  exercised by the GPU tests, but it is not formally verified.

Interim evidence from the build before the `FOOTPRINT` line was added (same verdicts) is kept in
[`interim-binary-evidence/`](interim-binary-evidence/). It includes an aborted interim N1 run.

Reproduce (CPU only):

```bash
python3 scripts/sweep_all_ctas.py
python3 scripts/sweep_negatives.py N1-offbyone
python3 scripts/sweep_negatives.py N2-reorder
python3 scripts/regress_default_cta.py
scripts/volta_testsuite.sh
python3 scripts/ieee_audit.py
```
