# Verified CUDA RMSNorm optimization

Retained candidate: register reuse with an unrolled eight-element tile per thread.
The measured 4096-column speedups are **1.07-1.09x** and 8192-column speedups
are **1.04-1.46x**, with 22 complete Volta equivalence checks and 157 targeted
repository tests passing. The experiment remains open because required hardware
profiling counters are unavailable. [Original specification](SPECIFICATION.txt).

## 1. Target

llama.cpp RMSNorm normalizes each hidden-state row before subsequent model
computation. The target is the contiguous FP32, unscaled and non-fused path in
`ggml/src/ggml-cuda/norm.cu`, originally `rms_norm_f32<block_size,false,false,false>`.
The baseline launches 256 threads below 1024 columns and 1024 threads otherwise.

- Baseline commit: `11fe02151f79c41d0d4af7da708755d73b9c0da6`.
- Local candidate commit: `82488eb0527fba1c043f158a427e2712d1218d8f`.
- Public Volta commit: `5d7530cc7fbef656c3fbeac22c6529441e4db70c`.
- CUDA compiler: nvcc 12.8.93; PTX target: compute_80.
- Timing device: NVIDIA H100 80GB HBM3, physical GPU6; driver 570.195.03.

[Repository pins](pins.json), [candidate provenance](candidate/cache8-provenance.json),
[production patch](candidate/cache8.patch), and [candidate source](candidate/cache8/ggml/src/ggml-cuda/norm.cu).
The candidate is committed locally; no upstream submission was made.

The real baseline and candidate repository builds pass. Existing CUDA-versus-CPU
checks pass on both: 101 RMS_NORM/NORM cases plus 56 related
RMS_NORM_SCALE/RMS_NORM_MUL_ADD/RMS_NORM_BACK cases, **157 per version**.
This is the targeted repository suite. Logs:
[baseline primary](results/llama-baseline-tests.log),
[candidate primary](results/cache8-tests.log),
[baseline related](results/baseline-fallback-tests.log),
[candidate related](results/cache8-fallback-tests.log).

The preferred causal-conv1d target was attempted first and stopped at baseline
verification failure; section 7 preserves its findings.

## 2. Baseline bottleneck

The original kernel reads each input twice: once to accumulate squares, then
again after reduction to scale the output. It writes each output once, with one
CTA barrier and two levels of warp reduction. Small-grid timings have a roughly
5-6 us floor; large-grid timings grow with data volume. These observations
motivated reducing load and loop overhead while preserving the reduction.
Hardware-counter attribution of the dominant bottleneck remains incomplete.

| Selected 1024-thread kernel resource | Baseline | Cache8 |
|---|---:|---:|
| Registers/thread | 32 | 25 |
| Local bytes/thread | 0 | 0 |
| Static shared bytes | 0 | 0 |
| Dynamic shared bytes/block | 128 | 128 |
| Maximum resident blocks/SM | 2 | 2 |
| Theoretical occupancy | 100% | 100% |
| CTA barriers per row | 1 | 1 |

Resource values come from CUDA driver JIT metadata and the occupancy API on
H100 GPU5 with the same driver/architecture, not achieved-occupancy counters:
[baseline query](results/baseline-jit-resources.log),
[selected cache8 query](results/cache8-jit-resources.log).
The benchmark's historical resource printout queries the generic specialization;
the selected-kernel query above is authoritative for cache8.

At 8192 columns, Volta's symbolic PTX execution counts change from 17,408 to 9,216
loads (including shared loads), removing 8,192 input loads. Total thread
instructions decrease from 192,672 to 159,968. Both execute one CTA barrier;
Volta's `block syncs: 1024` counts participating threads. Its 320 warp-sync events
are unchanged. These are modeled PTX counts, not measured GPU instructions:
[instruction profiles](results/cache8-instruction-profiles.json).

Nsight Compute 2025.1.1 failed with `ERR_NVGPUCTRPERM` before optimization and on
the final recheck. The driver still reports `RmProfilingAdminOnly: 1`.
**Achieved memory bandwidth and warp execution efficiency are missing.**
Cache-hit behavior and scheduling contributions therefore remain unresolved.
[Initial profiler output](results/llama-ncu-baseline.log),
[final recheck](results/cache8-final-profile-recheck.log).

## 3. Optimization

The kernel adds an internal template parameter `cache_size=0`. The selected
unscaled, non-fused 1024-thread specialization uses `cache_size=8` for
1024 through 8192 columns. Each thread loads up to eight guarded elements into
registers, accumulates their squares in the original order, participates in the
existing reduction, and reuses those values when writing scaled outputs.
Both bounded loops are unrolled. The mechanism is **register reuse and loop
unrolling**; the original block sizes, scalar alignment requirements, reduction,
precision, API, and in-place behavior are preserved. Generic fallbacks handle
smaller/larger widths and scaled/fused operations.

Four distinct mechanisms were ranked before implementation:
launch configuration, register reuse, vectorized memory access, and cross-warp
reduction work sharing. [Ranked hypotheses](results/hypotheses.md).

The first launch256 candidate passed proof but regressed at 8192 x 2048 to
0.681x. Additional unseen widths produced regressions at 7168 and 8191 columns,
so a simple column-threshold refinement was rejected. The second, cache8
candidate retains the original launch and improves all changed timing shapes.
Earlier evidence remains intact:
[initial launch report](results/launch256-report-before-cache8.md),
[launch timing](bench/launch256-pairs/summary.json),
[additional launch timing](bench/launch256-heldout-pairs/summary.json).
Those runs used different GPU/time conditions; compare each candidate only to
its paired baseline.

## 4. Formal verification

**Volta proves equivalence under its modeled real-valued semantics.**
The public checker and reference PTX are unmodified. Its workspace tests pass
with two upstream ignored tests. Both production sources compile using the same
nvcc configuration, including upstream's existing fast-math options; this change
adds no numerical relaxation. Full commands and archived PTX:
[baseline compile](baseline/llama-ptx-build.json),
[candidate compile](candidate/cache8-ptx-build.json),
[flag audit](candidate/cache8-compile-audit.json),
[baseline PTX](ptx/llama-norm-baseline.ptx),
[candidate PTX](ptx/llama-norm-cache8.ptx).

For affected widths, compare original `rms_norm_f32<1024,false,false,false>`
with candidate `rms_norm_f32<1024,false,false,false,8>`. Controls compare original
256/1024-thread entries with the corresponding candidate `cache_size=0` entries.
Exact mangled symbols are recorded for every instance.

Baseline self-equivalence passed at 256, 4096 and 8192 columns before optimization.
The retained candidate passes at **256, 1024, 2048, 3072, 4096, 5120, 6144, 7168,
8191, 8192 and 16384 columns**, each with separate input/output and in-place
output: **22 complete comparisons and 44 separate safety analyses**.

Every instance has grid (1,1,1), block (256,1,1) below 1024 columns or (1024,1,1)
otherwise, 128 dynamic shared-memory bytes, contiguous FP32 arrays, and epsilon
`9.999999747378752e-06` (the exact FP32 value of 1e-5). Separate arrays are
`x:in` and `out:out`, each ncols elements; in-place uses `x:inout`. All 24 scalar
and pointer bindings are preserved. Only parameters 0-6 are accessed by these
specializations; unused fusion bindings are recorded placeholders.

Every comparison requests `--sample 0`, checks the entire output array, reports
exactly ncols elements, and ends with **`EQUIVALENT`**. Both sides' individual
analyses report **`no data races or deadlocks detected`** and the full footprint.
[Proof summary](volta/cache8-summary.json),
[complete configurations and commands](volta/cache8-complete-instances.json),
[8192-column in-place proof](volta/cache8-8192-inplace.log),
[baseline safety](volta/cache8-8192-inplace-reference-safety.log),
[candidate safety](volta/cache8-8192-inplace-candidate-safety.log).

These are concrete one-row proofs. Multi-row performance tests extend beyond
that formal scope; arbitrary grids, all widths, and bit-exact IEEE-754 behavior
are not formally proved. GPU numerical checks are reported separately below.
Embedded benchmark PTX bodies match proof PTX after removing whitespace/comments:
[baseline correspondence](bench/baseline-ptx-audit.json),
[candidate correspondence](bench/cache8-ptx-audit.json).

To replay the exact recorded 8192-column comparison from `cuda/` without
rebuilding or replacing its evidence:

```bash
python3 - <<'PYREPLAY'
import json, subprocess
record = json.load(open('verified_optimization/volta/cache8-8192-inplace.json'))
subprocess.run(record['command'], cwd=record['cwd'], check=True)
PYREPLAY
```

## 5. Performance

The [minimal CUDA-event harness](bench/rms.cu) includes the production translation
unit and calls the real `rms_norm_f32_cuda` dispatcher. It is a custom kernel
microbenchmark of the real implementation; correctness uses the existing
repository tests. No end-to-end language-model speedup is measured.

Each process uses 200 warmups and 1000 timed launches. Each shape uses ten pairs
with alternating baseline/candidate order. Both versions run on physical GPU6
with matched build flags and clock policy. Across 56 before/after GPU samples,
SM clocks are 1980 MHz and memory clocks 2619 MHz. The device is shared; these
samples cannot establish identical load or in-kernel clocks. Timing dispersion
is retained without adjustment. [GPU-state evidence](results/cache8-gpu-state-summary.json).

Latency columns are medians of ten process averages; speedup is the median of
ten paired baseline/candidate ratios. Speedup p5/p95 describe those ratios,
not confidence intervals. Latency p5/p95 and standard deviations are in the JSON.
The 16384 x 128 control shows why the ratio of separate medians is misleading.

| Columns | Rows | Baseline us | Cache8 us | Paired speedup | Speedup p5-p95 |
|---:|---:|---:|---:|---:|---:|
| 256 | 1 | 4.999 | 4.996 | 1.001x | 0.995-1.007 |
| 256 | 128 | 5.291 | 5.290 | 1.000x | 0.999-1.005 |
| 256 | 2048 | 10.138 | 10.166 | 0.995x | 0.977-1.020 |
| 4096 | 1 | 5.581 | 5.207 | 1.072x | 1.069-1.078 |
| 4096 | 128 | 6.163 | 5.693 | 1.087x | 1.072-1.102 |
| 4096 | 2048 | 64.224 | 59.484 | 1.083x | 1.078-1.119 |
| 8192 | 1 | 5.939 | 5.496 | 1.080x | 1.067-1.083 |
| 8192 | 128 | 9.401 | 6.402 | 1.458x | 1.443-1.482 |
| 8192 | 2048 | 109.893 | 105.575 | 1.042x | 1.035-1.044 |
| 16384 | 1 | 9.467 | 9.465 | 1.000x | 0.999-1.005 |
| 16384 | 128 | 12.409 | 11.163 | 1.005x | 0.816-1.227 |
| 16384 | 2048 | 101.602 | 102.195 | 0.997x | 0.935-1.002 |
| 1024 | 128 | 3.297 | 2.838 | 1.160x | 1.153-1.257 |
| 2048 | 128 | 5.916 | 5.275 | 1.131x | 0.863-1.208 |
| 3072 | 128 | 6.199 | 5.459 | 1.140x | 1.123-1.149 |
| 6144 | 128 | 9.272 | 5.976 | 1.547x | 1.527-1.573 |

[Primary raw commands/logs and summary](bench/cache8-pairs/summary.json).
For the primary and additional runs together: **28 shape runs (27 unique),
280 pairs, 560 timing processes, 560,000 measured launches**, plus 112,000 warmups.
All process commands and stdout/stderr are retained.

Across all 280 baseline/candidate comparisons, **maximum absolute error = 0,
maximum relative error = 0, maximum ULP difference = 0, NMSE = 0**. The repository
threshold is NMSE <= 1e-7. Outputs are checked for finiteness and against a CPU
reference as well. Inputs are reproducible random FP32 values, not embedded
benchmark values in the implementation. These results establish observed
floating-point agreement for the tests. The first output pair per shape is
archived; subsequent pairs were checked before their duplicate files were removed.

## 6. Generalization

The additional suite includes previously untimed cache8 widths 5120, 7168, and
8191, plus row-count extensions at 6144. 6144 x 128 repeats a primary shape as
an anchor. These shapes had informed rejection of launch256; they are held out
from cache8's primary timing suite, not a blind external evaluation.

| Columns | Rows | Baseline us | Cache8 us | Paired speedup | Speedup p5-p95 |
|---:|---:|---:|---:|---:|---:|
| 5120 | 1 | 6.125 | 5.275 | 1.161x | 1.153-1.167 |
| 5120 | 128 | 6.600 | 5.785 | 1.144x | 1.132-1.568 |
| 5120 | 2048 | 86.817 | 69.273 | 1.253x | 1.231-1.260 |
| 6144 | 1 | 6.367 | 5.349 | 1.183x | 1.176-1.196 |
| 6144 | 128 | 9.299 | 5.994 | 1.542x | 1.490-1.563 |
| 6144 | 2048 | 101.325 | 79.377 | 1.278x | 1.231-1.287 |
| 7168 | 1 | 6.571 | 5.428 | 1.211x | 1.204-1.218 |
| 7168 | 128 | 9.580 | 6.188 | 1.544x | 1.529-1.562 |
| 7168 | 2048 | 115.956 | 92.673 | 1.252x | 1.248-1.255 |
| 8191 | 1 | 6.493 | 5.523 | 1.175x | 1.168-1.185 |
| 8191 | 128 | 10.066 | 9.429 | 1.064x | 1.039-1.077 |
| 8191 | 2048 | 119.530 | 109.414 | 1.092x | 1.087-1.094 |

[Additional raw commands/logs and summary](bench/cache8-heldout-pairs/summary.json).
All twelve paired medians improve (1.064-1.544x), including the non-multiple
8191-column tail. Unchanged 256/16384-column controls remain near 1x in the
primary suite. Some distributions have wide tails on the shared GPU, especially
2048 x 128 and the 16384 x 128 control. Results apply to this H100/SM80-PTX setup;
other architectures and end-to-end inference require separate measurements.

## 7. Verification limitations

The preferred causal-conv1d pin `cd81f0413cad2fc1e6f17e785ac39f59aae690cd` built
after supplying missing pybind11 headers. Its existing FP32 contiguous subset
passed 36 cases spanning widths 2/3/4, lengths 256/512/1024, bias/SiLU settings,
and forward/backward checks. Baseline self-equivalence failed before any optimization.

The full production PTX fails parsing at a closing brace in an FP16 instantiation.
A diagnostic isolation of the unchanged FP32 kernel parses, then fails lowering:
`param loads with nonzero offsets are not supported`. The 184-byte by-value
ConvParamsBase exceeds the current scalar parameter binding support.
The [aggregate-parameter reproduction](volta/aggregate-param.cu) reproduces this
failure; its scalar control proves all 128 outputs. A single braced conversion
parses, so minimization of the full-module parser failure remains incomplete.
The `int:0` diagnostic binding exposes lowering failure and does not encode a
valid struct invocation. No equivalence or safety clearance is assigned to A.
[Classification and logs](results/target-a-status.json).

These baseline failures are parser/tooling and unsupported parameter-ABI cases
(taxonomy J/D), not counterexamples to an optimization. Both llama.cpp candidates
pass their requested proofs; launch256 was rejected on performance. No Volta
semantics, reference PTX, output footprints, or valid input values were weakened.

The formal instance scope is stated in section 4. Hardware counters and exclusive
measurement conditions remain the external limitations described in sections 2
and 5. Every requested requirement is tracked in the
[completion audit](results/completion-audit.json); the full goal remains open.

## 8. Research insight

Bounded register reuse and loop unrolling fit Volta's current verification model:
addresses and loop bounds are concrete, complete outputs are enumerable, and
existing reductions and synchronization can be retained. The verifier also
handles comparisons between different block sizes for the tested RMSNorm rows.
This enables proof inside the optimization loop, while measurements decide
whether a valid transformation is useful. Register reuse improved these shapes;
launch tuning alone produced severe regressions despite successful proofs.

Production ABI and module parsing can prevent entry into that verification
model. Aggregate parameter loads and the causal-conv1d module parser issue need
separate implementation work in the verifier. Neither failure demonstrates a
fundamental impossibility. General symbolic sizes and IEEE floating-point proofs
would require capabilities beyond the concrete real-valued results obtained here.
Vectorization and redesigned reductions remain ranked hypotheses, not established
verifier gaps: they were not needed to obtain the retained result.

Reproduction uses the saved command arrays, commits, and hashes. `../record.py`
refuses evidence overwrite; use fresh output prefixes for recorded reruns.
`../verify_cache8.py`, `../bench_cache8.py`, and `../bench_cache8_heldout.py` implement
the proof gates and paired protocol. Remaining requirements are authorized profiling access, hardware-counter collection
and bottleneck assessment, and a controlled-device timing repeat to establish the
requested matched GPU-state condition. These require an external environment change.

Run `python3 audit_cache8.py` from `cuda/` to audit the retained artifacts without
launching kernels or changing evidence. [Audit result](results/cache8-final-artifact-audit.log).
