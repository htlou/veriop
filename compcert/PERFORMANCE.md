# Frozen C1 wall-clock evaluation

**Status update, 2026-10-04:** This historical custom wall-clock study is
diagnostic evidence, not an official benchmark score or current performance
acceptance gate. Subsequent comparisons follow the [official scoring protocol](performance/OFFICIAL.md)
and preserve the upstream harness outputs in `results/official-embench/`.

**The static jump reduction did not produce a measured runtime gain in this evaluation.** On the pinned CPU, C1-global is approximately unchanged on most workloads and slower on several, including Embench picojpeg and sglib-combined and MiBench JPEG encoding. The layout policy remains frozen; these results were not used to tune it.

The user approved completing this stage with wall-clock measurements after hardware-counter access was denied. Cycles, instructions, branches and branch misses are deferred, with the [actual permission failures](performance/perf-probe.tsv) retained. No C2 executable was measured.

## Results

Speedup below means **baseline time / candidate time**; values above 1 favor C1. The primary statistic is the median paired-block log ratio, exponentiated. The suite figure is the geometric mean of those program statistics, with suites kept separate.

| Suite | Programs | Geometric mean speedup | Conditional 95% bootstrap CI | Interpretation in this session |
|---|---:|---:|---|---|
| Embench | 19 | **0.99872** | [0.99822, 0.99943] | About 0.13% longer time overall |
| MiBench, baseline-valid subset | 11 | **0.99786** | [0.99681, 0.99884] | About 0.21% longer time overall |
| test/c aes + fft sanity cases | 2 | 0.99989 | [0.99909, 1.00077] | No resolved change |

These intervals describe resampling within the recorded workloads and host session. They are not cross-machine guarantees. Across the 30 Embench/MiBench programs, **none has a pointwise 95% interval entirely above 1**. Five have intervals below 1, with the clearest regressions shown below. The remaining intervals overlap 1; that is inconclusive evidence of change, rather than proof of equivalent speed.

| Program | Baseline median ms | C1 median ms | Paired speedup [95% CI] | Candidate time change from paired estimate |
|---|---:|---:|---|---:|
| Embench picojpeg | 353.8038 | 363.7733 | **0.97215 [0.97184, 0.97298]** | **+2.86%** |
| Embench sglib-combined | 342.9668 | 345.1243 | **0.99394 [0.99282, 0.99492]** | **+0.61%** |
| Embench nettle-sha256 | 282.4737 | 282.4619 | 1.00009 [0.99989, 1.00066] | Unresolved |
| MiBench cjpeg | 10.4044 | 10.6530 | **0.97504 [0.97280, 0.97762]** | **+2.56%** |
| MiBench djpeg | 2.3248 | 2.3173 | 1.00455 [0.99963, 1.00765] | Unresolved |
| MiBench lout | 64.3617 | 64.1839 | 0.99726 [0.99626, 0.99995] | Sensitive to estimator; no supported gain |
| test/c aes | 55.0983 | 55.0765 | 1.00009 [0.99936, 1.00078] | Unresolved |
| test/c fft | 78.9527 | 79.0161 | 0.99968 [0.99824, 1.00138] | Unresolved |

The marginal medians and paired estimate are different statistics. In lout, their directions differ: the ratio of marginal medians is 1.00277, while the median of temporally matched block ratios is 0.99726. Its paired CI nearly touches 1, and the two half-run estimates differ. This is weak evidence for a precise sub-percent effect; it does not support a runtime gain claim.

Picojpeg, sglib and cjpeg are slower in both the first and second halves and under both ABBA and BAAB ordering. Their child CPU-time median ratios point in the same direction. Frequency samples for both variants have nearly identical medians around 3.7 GHz. This makes the recorded regressions more convincing than the tiny aggregate differences, while leaving their microarchitectural cause unresolved.

[Every program's median, p5/p95, CI, order/half-run diagnostic and frequency summary](results/c1-performance/RESULTS.md) is available alongside [machine-readable results](results/c1-performance/summary.json). No programs or outlier measurements were removed after observing performance.

## Method and exact workload

The experiment compares the existing official baseline compiler against the frozen C1-global compiler and retains their unchanged CompCert proof/checker boundary. The [source/compiler freeze](results/frozen/c1-candidates.json), [clean proof-build evidence](results/c1-proof-builds.json) and [performance audit](results/c1-performance/audit.json) connect this evaluation to the verified C1 implementation.

All 19 upstream Embench workloads use unchanged source with the officially supported **CPU_MHZ=1000** workload parameter and **WARMUP_HEAT=1**. The previous functional/structural run used CPU_MHZ=1 and lasted roughly a millisecond per process. The longer workload avoids letting launch time dominate most Embench cases. Baseline and candidate were rebuilt with exactly matching source, compilation and linking arguments.

After timing, the observer replay verified **160 native/observed object pairs byte for byte** and recounted actual Linear code for the scaled workload: **672 baseline Lgoto versus 654 C1 Lgoto**, matching the earlier structural totals. See [scaled-layout evidence](results/c1-performance/scaled-layout/summary.json).

MiBench reuses the exact native baseline and C1 executables from the structural evaluation. It uses upstream large inputs/CLI settings for bitcount, JPEG, LAME, lout, SHA, FFT and GSM. `basicmath_small`, `qsort_small` and the mandatory `bftest` self-test retain their original workloads. Each pair runs in the same copied input/working tree. The invalid baseline `bf` driver remains outside runtime inference under the already approved functional protocol; its original failure and structural results remain available.

This is an end-to-end process-time evaluation with warmed files and output redirected to `/dev/null`. It includes startup, input parsing, library calls and formatting. Embench's internal verifier still executes. MiBench outputs are materialized and checked separately before and after timing, including the upstream GSM large-input fixture. All 33 cases—including aes/fft and a launch control—pass those checks before and after; normalized outputs also match across the two phases.

The timing protocol was frozen before repeated measurements:

- One physical core, **CPU 40**, selected from a five-second idle-core sample before candidate timing; SMT sibling **232** recorded.
- Runner and actual benchmark child affinity checked as `[40]` in [live process evidence](results/c1-performance/live-affinity-check.json).
- Three warm-up invocations per variant per case.
- Forty balanced blocks per case: twenty ABBA and twenty BAAB in a fixed shuffled order, two invocations per variant per block.
- **80 measured invocations per variant per case; 5,280 total**, all with successful exits.
- Monotonic wall-clock around spawn and blocking wait. Timeout polling is excluded from timed waits to avoid quantizing short runtimes.
- No outlier removal or result-dependent early stopping.
- Primary per-case effect: `exp(median(block log(B/C)))`, each block using geometric means of its two invocations per variant.
- **10,000 paired-block bootstrap resamples**, two-sided percentile 95% CIs; raw invocation p5/p95 reported for each variant.

[Raw samples](results/c1-performance/samples.jsonl), [block records](results/c1-performance/blocks.jsonl), [frozen plan](results/c1-performance/plan.json), and [pre-timing hashes](results/c1-performance/pre-timing-freeze.json) preserve the observations and decisions. The measured run lasted **08:09:39–08:23:05 UTC on 2026-10-04**. [Reproduction commands](performance/README.md) recreate builds, checks, measurement and analysis; the statistical code has exact 2×-effect and equal-binary null self-checks.

## Environment and limits of inference

The shared host is an AMD EPYC 9654 system. The [environment record](results/c1-performance/environment.json) contains the kernel, CPU data, affinity and settings. The governor is **schedutil**, boost is enabled, and its controls are not writable by this user. Frequency was therefore recorded rather than fixed. Sampled `scaling_cur_freq` is a diagnostic reading, not an integrated cycle count or proof of invariant frequency.

Every timed invocation records child CPU time, voluntary/involuntary context switches, page faults, and start/end frequency samples. Block records include sibling activity. Two major faults occurred across all 5,280 invocations; those observations remain in the results. The host is not exclusive, and short blocks have coarse scheduler-jiffy activity resolution.

The identical `/usr/bin/true` launch control has median times around **0.55 ms**, with paired ratio **0.99380 [0.98436, 1.00800]**. No launch time was subtracted. Short MiBench workloads around 2–5 ms are consequently more sensitive to launch and scheduling overhead than the longer Embench workloads. Individual CIs are pointwise, not simultaneous across all programs, and block resampling does not model every possible long-range host-state correlation. Small aggregate differences should be read with these constraints.

Direct user-space `perf_event_open` probes for cycles, instructions, branches, branch misses, L1 instruction-cache load misses, frontend stalled cycles and task-clock all returned **EACCES (13)**. `perf_event_paranoid=4`; the result is a real permission failure, not an assumption based only on that setting. Per the user's follow-up, this stage is complete with wall-clock evidence, and hardware-counter measurements are deferred.

## Research conclusion

The result is closest to the proposed third outcome: **some workloads become slower even though static Linear jumps decrease**. Most measured workloads show no resolved runtime change, and this experiment provides no positive verified-runtime-gain claim for C1-global.

The existing verified interface still admits the layout transformation, and the original proofs remain intact. The performance limitation is therefore in the optimization objective for these workloads: unweighted static Lgoto count is insufficient as a standalone runtime cost model. The data motivates a future profile-aware or microarchitecture-aware objective; it does not identify branch prediction, instruction-cache behavior or alignment as the cause without additional evidence. The frozen C1 policy has not been retuned, and C2 remains outside this evaluation.
