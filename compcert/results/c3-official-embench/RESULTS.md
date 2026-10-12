# C3: profile-guided layout, official Embench results

**Reference correction:** The speed numbers below use a local reference and
do not satisfy the requested published-reference Embench speed metric.
Published-reference speed scores have not been established. A separate
[published-reference size run](size-published-c3-pgo.log) reports **5.48**,
versus baseline/C1 **5.46**; the local-reference rounded size score below
does not replace this published-reference result.

**C3 is not accepted as a performance improvement.** The official scores do not establish a stable speed gain, and picojpeg exceeds the frozen per-program text-growth gate: 14,386→14,674 bytes (+2.001946%, limit 2%). The candidate is frozen; layout tuning stops.

| Run | Compiler | Official speed score | Official geometric SD | Output |
|---|---|---:|---:|---|
| 1 | baseline | 0.98 | 1.05 | [speed-0-baseline.log](speed-0-baseline.log) |
| 2 | c3-pgo | 0.98 | 1.08 | [speed-1-c3-pgo.log](speed-1-c3-pgo.log) |
| 3 | c3-pgo | 0.92 | 1.11 | [speed-2-c3-pgo.log](speed-2-c3-pgo.log) |
| 4 | baseline | 0.93 | 1.12 | [speed-3-baseline.log](speed-3-baseline.log) |

All runs use the unmodified Embench 1.0 scoring and native timing modules, all 19 programs, and the [same local baseline reference](../official-embench/reference/speed.json). Scores are copied at upstream printed precision. Baseline itself varies from 0.98 to 0.93 in this session; the candidate varies from 0.98 to 0.92. This does not isolate a precise compiler effect. The official native timer is coarse, and the host is shared. No runs or programs are discarded; no temporal CI is claimed.

Official size score relative to same-host baseline: **baseline 1.00, C3 1.00** (rounded). See [baseline](size-0-baseline.log), [candidate](size-1-c3-pgo.log), and the separate [per-program speed-build text growth](text-growth.json). A rounded equal suite score does not override the failed per-program size gate.

## Implementation and verification

- [Source](../../c3/PgoLayout.ml), [integration](../../c3/enumerate.ml), [complete patch](../../patches/c3-pgo.patch), [frozen objective/profile](../frozen/c3-pgo.json).
- True edge counts from profiling-only LTL edge instrumentation; production compiler only returns permutations. Frequency-weighted fallthrough and estimated-distance reward; 4 bytes/LTL instruction is an estimate, not a hardware measurement.
- Speed build: 311 function compilations; 292 profile matches, 98 changed orders, 19 unmatched functions fall back to baseline. The repeated-count change is not new input data. Source/profile/compiler/executable hashes are in [freeze.json](freeze.json).
- [Clean proof-build record](../c3-proof-build.json): all 253 original Coq files unchanged, original checker unchanged, Coq kernel check passes, four key theorem objects byte-identical to baseline. Formal evidence is CompCert/Rocq simulation, not Aeneas or Alive2.
- Functional gate: 24/24 CompCert C tests, 30/30 PolyBench dumps, 19/19 official Embench verifiers, 11/11 baseline-valid MiBench programs. Invalid baseline `bf` remains a visible failing diagnostic. Total 84/84 valid programs pass; all 85 compile.
- [MiBench upstream-script checks](../c3-mibench-official/summary.json): seven large-input project scripts (eight executables) pass against baseline; basicmath/qsort retain upstream small inputs. No private MiBench aggregate is calculated.

## Profiles and diagnostic evidence

All 19 Embench profiles passed CFG flow checks. MiBench profiles use baseline-valid small inputs. Six main-function profiles end inside a nonreturning call and have missing outgoing CFG flow; their raw data is retained and those incomplete function profiles are excluded before production compilation. [MiBench validation](../c3-profiling/validation-mibench.json) records every exclusion. All retained profiles conserve flow. This filtering uses profile validity, not candidate performance.

[Callgrind diagnosis](../../c3/DIAGNOSIS.md) does not explain C1 regressions with increased instruction count or modeled instruction-cache misses. Simulator counters remain diagnostic. They are not official benchmark scores or physical PMU readings.

Next experiment: bounded leaf-function inlining through CompCert’s existing verified Inlining pass, independent of C1/C3 layout. No C3 coefficient/threshold sweep follows these results.
