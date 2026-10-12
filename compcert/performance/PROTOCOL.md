# Frozen-policy CPU evaluation

Compare only the pinned official baseline and the frozen C1-global compiler.
No layout-policy edits or selection based on runtime results are permitted.
The existing C1 proof-build and source-hash evidence remains authoritative.

Evaluate all 19 supported Embench workloads and all 11 baseline-valid MiBench
executables. Retain bf as excluded from runtime inference because its baseline
functional oracle is invalid; retain its earlier structural and failure data.
Include upstream test/c aes and fft as separate sanity cases, and the same
/usr/bin/true executable under both labels as a launch/noise control.

Embench uses unchanged source and its upstream CPU_MHZ=1000 scaling parameter
instead of CPU_MHZ=1, with WARMUP_HEAT=1. Baseline/candidate compile and link
flags, inputs and source hashes must match. MiBench reuses the exact native
executables from the structural evaluation. Use official large input/CLI
settings where the same executable supports them; basicmath_small, qsort_small
and bftest retain their original workload. Both versions use the same copied
working/input tree. Redirect output to /dev/null during timing; preserve and
check real outputs before and after timing.

Choose one physical core from a five-second /proc/stat idle-core sample before
candidate timing. Pin the runner and all inherited child processes to that
core. Record its SMT sibling, governor, boost, frequency limits and sampled
frequency. Do not change machine-wide privileged settings on this shared host.
Probe requested hardware events through perf_event_open; retain errno evidence
if denied. Unavailable counters remain unavailable, not inferred from Lgoto.

Warm up each binary three times. Measure 40 balanced blocks per case: 20 ABBA
and 20 BAAB, shuffled with a fixed seed. Each block has two invocations per
variant, yielding 80 measurements per variant. No outlier rejection, early
stopping or choosing the faster order. Record raw monotonic wall-clock times,
child CPU time, context switches, faults, frequency samples and sibling load.
Measurement includes process startup; the negative control quantifies its
floor, without subtracting it from program times.

Report per-variant median and p5/p95 invocation time. Primary paired speedup
is exp(median of block log ratios), each block comparing geometric means of
its two baseline and two candidate times. Use 10,000 paired-block bootstrap
resamples for a two-sided percentile 95% CI. A ratio above 1 means baseline
is slower. Preserve order-stratified and early/late diagnostics. Interpret CIs
as conditional on this host/session; adjacent-block correlation, frequency
variation and simultaneous workloads limit sub-percent claims. Show Embench
and MiBench separately; do not combine them or mix C2 into the conclusions.
