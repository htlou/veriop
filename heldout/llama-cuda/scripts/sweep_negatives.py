"""Negative controls for the all-CTA sweep pipeline (same driver, mutant PTX as the optimized side):
 N1 off-by-one mutant (`in_x_idx <= in_w`) on perf-512x512x256 f32 WHCN: CTAs containing output column 511
    (all odd CTAs) must FAIL; even CTAs are unaffected.
 N2 reversed-tap-order mutant (real-valued equal, different fma order) on perf-112x112x32 f32 WHCN/CWHN: must
    be EQUIVALENT (reals) but NOT syntactically identical -> the bit-exactness criterion rejects it."""
import sys
import sweep_all_ctas as S
from pathlib import Path

R = S.ROOT
which = sys.argv[1]
S.OUT = R / 'sweep-negatives' / which
S.OUT.mkdir(parents=True, exist_ok=True)
if which == 'N1-offbyone':
    S.NEW = R / 'volta/mutant/conv2d-dw-mutant-offbyone.ptx'
    cfgs = [c for c in S.CONFIGS if c[0] == 'perf-512x512x256-k3s1p1-f32-whcn']
else:
    S.NEW = R / 'volta/mutant/conv2d-dw-mutant-reorder.ptx'
    cfgs = [c for c in S.CONFIGS if c[0].startswith('perf-112x112x32')]
import os
os.sched_setaffinity(0, S.CPUS)
for c in cfgs:
    S.run_config(c)
