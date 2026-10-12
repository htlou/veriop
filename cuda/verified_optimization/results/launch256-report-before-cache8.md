# Verified CUDA optimization study

The goal remains open. The first candidate is formally equivalent but is not
accepted as a successful optimization because it causes a large regression.
The full requested scope is preserved in [SPECIFICATION.txt](SPECIFICATION.txt).

## 1. Target

Active target: llama.cpp at `11fe02151f79c41d0d4af7da708755d73b9c0da6`,
`ggml/src/ggml-cuda/norm.cu`, `rms_norm_f32<block_size,false,false,false>`.
RMSNorm normalizes each hidden-state row before subsequent model computation.
The baseline selects 256 threads below 1024 columns and 1024 threads otherwise.
The real CUDA repository builds; its existing RMS_NORM and NORM tests pass on
both baseline and candidate: 101 cases each, CUDA results checked against CPU.
These are targeted repository tests, not a claim that the entire repository test
suite was run.

The preferred causal-conv1d target was attempted first at its requested pin.
Its baseline could not pass Volta self-equivalence; details are below. No
causal-conv1d optimization was implemented.

## 2. Baseline bottleneck

The production RMSNorm has two input-load passes, one output-store pass, one
block barrier and two levels of warp reduction. Large-row baseline timings
scale approximately with data volume; single-row timings have a 5-6 us floor.
This suggests memory throughput and launch/scheduling costs in different
regimes, but does not establish a hardware-counter diagnosis.

On the H100, both compiled specializations report 32 registers/thread, no local
memory, 0 static and 128 dynamic shared-memory bytes. CUDA's occupancy API
reports 100% theoretical occupancy for both: 8 active 256-thread blocks or 2
active 1024-thread blocks per SM. Achieved occupancy is not measured.

Nsight Compute 2025.1.1 was downloaded and extracted locally. Its profiling run
failed with `ERR_NVGPUCTRPERM`. Achieved occupancy, DRAM bandwidth and warp
execution efficiency therefore remain unavailable. No driver permissions,
clocks, or other users' GPU jobs were changed. All eight GPUs were busy with
other jobs. CUDA-event results below are unadjusted observations on shared GPU5.

## 3. Optimization

The first candidate changes one production launch condition: use the existing
256-thread specialization for unscaled, non-fused RMSNorm through 8192 columns.
Other dispatch paths are preserved. This is a launch-configuration experiment.
The exact diff is [candidate/launch-256.patch](candidate/launch-256.patch).

Four materially distinct mechanisms were ranked before implementation in
[results/hypotheses.md](results/hypotheses.md): launch configuration, input
register reuse, vectorized memory access, and cross-warp reduction work sharing.

Decision: reject the broad launch change because of its 8192-column regression.
The 6144-column gain is a useful lead, not permission to promote this candidate.
A revised threshold must be tested on unseen dimensions and row counts.
No successful candidate commit has been created; source and patch are retained.

## 4. Formal verification

Public, unmodified Volta commit `5d7530cc7fbef656c3fbeac22c6529441e4db70c`.
Its workspace tests passed (two upstream tests were ignored). CUDA is nvcc
12.8.93, targeting compute_80 on H100 hardware. Repository compile options,
including its existing fast-math settings, are preserved. The exact baseline
and candidate commands are `baseline/llama-ptx-build.json` and
`candidate/ptx-build.json`; `candidate/compile-audit.json` verifies matched flags.
No precision relaxation was added by this optimization.

The complete production PTX modules are archived in `ptx/`. They are byte-identical
because both contain the existing 256- and 1024-thread specializations; the change
is which entry is launched. Comparisons explicitly select the **old 1024-thread
entry against the new 256-thread entry** for affected dimensions. Comparing
matching symbols would not verify this launch change.

Baseline self-equivalence passed first at 256, 4096 and 8192 columns. Candidate
comparisons then passed at 256, 1024, 2048, 3072, 4096, 6144, 8192 and 16384
columns, separately for distinct input/output arrays and in-place output:
16 complete equivalence instances. Every instance uses grid (1,1,1), contiguous
FP32 data, 128 dynamic shared-memory bytes, all fusion flags false, and the
exact FP32 representation of epsilon 1e-5 (`9.999999747378752e-06`). The original
block is 256 below 1024 columns, otherwise 1024; candidate block is 256 through
8192, otherwise 1024. Optional fusion parameter slots are not read by these
specializations. Instance files preserve all 24 bindings.

Every compare uses `--sample 0` and checks the entire row: `out` for separate
arrays, or all of the inout array `x`. Each verdict is `EQUIVALENT`. An additional
32 analyses explicitly report no data races or deadlocks and confirm the full
output footprint. See [volta/launch256-summary.json](volta/launch256-summary.json),
`volta/launch256-*-instance.json`, and paired command/output JSON/log files.
The executable's embedded kernel PTX was checked against the proof input; see
`bench/baseline-ptx-audit.json` and `bench/launch256-ptx-audit.json`.

**Volta proves equivalence under its modeled real-valued semantics** for these
concrete, one-row configurations. This is not IEEE-754 bit equivalence, a proof
of all possible dimensions, or an all-CTA proof for arbitrary grids.

## 5. Performance

The harness includes the actual repository translation unit and calls its real
`rms_norm_f32_cuda` dispatch. Each process performs 200 warmup launches followed
by 1000 launches timed with CUDA events. Each shape has 10 pairs, alternating
baseline-first and candidate-first. Reported speedup is the median paired ratio;
it can differ from the ratio of separate medians. p5/p95 describe the 10 paired
ratios and are not confidence intervals. All 320 raw process logs and commands
are retained in `bench/launch256-pairs/`; GPU state is recorded around each shape.

| Columns | Rows | Baseline us | Candidate us | Speedup | Speedup p5-p95 |
|---:|---:|---:|---:|---:|---:|
| 256 | 1 | 5.164 | 5.164 | 1.000 | 0.994-1.009 |
| 256 | 128 | 5.490 | 5.490 | 1.000 | 0.785-1.006 |
| 256 | 2048 | 10.318 | 10.341 | 0.995 | 0.987-1.009 |
| 4096 | 1 | 5.848 | 5.849 | 1.000 | 0.988-1.002 |
| 4096 | 128 | 6.270 | 6.210 | 1.009 | 1.004-1.040 |
| 4096 | 2048 | 64.109 | 65.102 | 0.984 | 0.934-0.990 |
| 8192 | 1 | 5.877 | 6.359 | 0.923 | 0.920-0.930 |
| 8192 | 128 | 9.354 | 9.260 | 1.007 | 1.002-1.021 |
| 8192 | 2048 | 109.504 | 160.711 | 0.681 | 0.679-0.684 |
| 16384 | 1 | 9.448 | 9.441 | 1.000 | 0.995-1.005 |
| 16384 | 128 | 11.005 | 11.029 | 0.998 | 0.986-1.129 |
| 16384 | 2048 | 219.053 | 219.039 | 1.000 | 0.999-1.003 |
| 1024 | 128 | 5.638 | 5.413 | 1.042 | 1.038-1.055 |
| 2048 | 128 | 5.894 | 5.585 | 1.054 | 1.048-1.068 |
| 3072 | 128 | 6.154 | 5.838 | 1.052 | 0.818-1.064 |
| 6144 | 128 | 9.208 | 6.430 | 1.435 | 1.416-1.442 |

The worst case is 109.504 us -> 160.711 us at 8192 x 2048 (0.681x).
This fails the acceptance gate regardless of the faster 6144 x 128 case.
GPU numerical differential tests passed across all 160 pairs, with maximum
absolute error 2.3842e-7, maximum relative error 2.38394e-7, maximum ULP difference
3, and maximum NMSE 1.42937e-15. The repository's default NMSE tolerance is 1e-7.
Raw output arrays from the first pair of every shape are retained. Later pairs
were also checked; temporary duplicate output files were discarded.

## 6. Generalization

256 and 16384 columns use unchanged dispatch and serve as controls. Their median
paired ratios are about 1x, but some tails show substantial shared-host noise.
1024, 2048, 3072 and 6144 columns at 128 rows extend beyond the primary 4096/8192
shapes. A future revision needs held-out intermediate dimensions and additional
row counts, especially around any proposed dispatch threshold. Current results
do not establish general performance improvement.

## 7. Verification limitations

The first target, causal-conv1d at `cd81f0413cad2fc1e6f17e785ac39f59aae690cd`,
built successfully after supplying missing pybind11 headers. Its existing FP32
contiguous tests passed: 36 cases spanning widths 2/3/4, lengths 256/512/1024,
bias and SiLU off/on, with forward/backward checks. This is a subset of its
13,373 collected tests.

Its full production PTX fails parsing at an unexpected closing brace in an FP16
instantiation (`volta/baseline-self.log`). A diagnostic source isolation retaining
the unchanged FP32 kernel body parses but fails lowering:
`param loads with nonzero offsets are not supported` (`volta/isolated-self.log`).
The 184-byte by-value ConvParamsBase is not expressible by the current scalar
parameter bindings. `volta/aggregate-param.cu` reproduces this failure; its scalar
parameter control proves all 128 output elements equivalent. A single braced
conversion parses, so the full-module parser failure is not yet minimized.

The struct diagnostics use `int:0` only to expose lowering failure, not to encode
an intended struct. No causal-conv1d equivalence, race clearance or deadlock
clearance is claimed. These failures are classified as PTX parser limitation and
unsupported launch structure/parameter ABI. Volta and reference PTX are unmodified.

## 8. Research insight

Volta can compare different thread-block sizes while proving an entire RMSNorm
row, including in-place output, with the reduction's floating-point operations
modeled over the reals. A successful proof does not predict performance: this
launch change is mathematically valid but has a severe shape-dependent slowdown.
The causal-conv1d attempt shows that production argument ABI and module syntax
can block verification before arithmetic or synchronization is even analyzed.
Supporting those constructs would be a separate verifier-extension experiment;
none was undertaken here. Hardware-counter access is needed to distinguish
cache behavior from other explanations for the observed slowdowns.

## Reproduction and remaining work

Repository origins and exact commits are in `pins.json`; tool versions and device
state are in `results/`. Each recorded command has its working directory, exit
status, elapsed time and combined output. `record.py` refuses to overwrite prior
command evidence. `verify_rms.py` and `bench_rms.py` implement the fail-closed
proof and measurement gates. Use fresh output prefixes/directories for reruns.
`results/launch256-proof-hashes.json` hashes the proof and source artifacts.

The requested goal is **not complete**: no candidate has passed all acceptance
gates, missing hardware-counter metrics remain unresolved, and there is no final
accepted candidate commit. Continue the optimization search, preserve these
results, and perform a requirement-by-requirement audit before declaring success.
