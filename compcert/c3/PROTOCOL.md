# C3 frozen candidate protocol

Objective and search are fixed before C3 official score runs. Optimize the
existing reachable-node permutation only; keep the CompCert checker and all
253 Coq source files unchanged. Profile data and heuristic ranking are
untrusted; acceptance of enumeration uses the existing verified checker.

Use measured LTL edge counts from profiling-only builds. Match a whole LTL
function fingerprint; fall back to baseline for absent/malformed profiles or
functions never entered. Profile every Embench program at CPU_MHZ=1; evaluate
at the official scoring protocol's common CPU_MHZ=10000. This changes repeat
count, not input data, so Embench is not an unseen-input generalization test.
Freeze objective coefficients before any C3 execution-time feedback. MiBench
small-input training / available large-input evaluation is the input holdout;
there is no official MiBench aggregate score.

Frequency-weighted reward: eligible immediate fallthrough 1.0; other edges
receive 0.1 times linear proximity within 1024 estimated bytes, with a 0.15
penalty for taken unconditional branches. Reward placing entry first using
the measured function entry count. Use four bytes per LTL instruction as a
distance estimate, not an actual instruction-size measurement. Penalize
extra static jumps by 0.002 times average node edge traffic and disallow
more than max(1, LTL instruction count / 100) extra modeled Linear jumps.

Reuse C1's deterministic weighted node search for candidate generation, then
rescore node insertions using the full frequency/distance objective. Limit
this final stage to 512-node functions, two sweeps and 4096 proposals. These
are compile-cost bounds; no names, expected outputs or benchmark scores enter
the compiler. Keep the original order among candidates.

Internal reward is not a benchmark metric. Evaluate with the unchanged
official Embench speed/size scripts and native runner as specified in
[OFFICIAL.md](../performance/OFFICIAL.md). Preserve complete suite scores,
per-program scores, all runs and failed experiments. Require clean proof
build/check, original functional oracles, no unexplained failures, and no
program above 2% measured text growth for production acceptance. Official
score improvement must survive repeated runs; their geometric SD is not a
temporal confidence interval. A small rounded/unstable difference is
inconclusive. If this candidate has no supported gain, stop layout tuning.
