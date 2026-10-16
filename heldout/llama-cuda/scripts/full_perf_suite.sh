#!/bin/bash
# Full official `test-backend-ops perf` (all ops) baseline vs candidate on one idle GPU, order A B B A.
# A run is marked contaminated if any other compute process appears on the GPU during it.
set -u
H=/srv/home/hantaolou/code/veriop/heldout/llama-cuda
O=$H/bench/full-suite; GPU=${GPU:-7}
UUID=$(nvidia-smi -i $GPU --query-gpu=uuid --format=csv,noheader)
run() { # tag side
  bin=$H/$2/build-cuda/bin/test-backend-ops
  until [ -z "$(nvidia-smi --query-compute-apps=gpu_uuid --format=csv,noheader | grep $UUID)" ]; do sleep 60; done
  nvidia-smi -i $GPU --query-gpu=utilization.gpu,memory.used,clocks.sm,clocks.mem --format=csv,noheader > $O/$1-$2.gpu-before
  ( while sleep 1; do nvidia-smi --query-compute-apps=gpu_uuid,pid --format=csv,noheader | grep $UUID | grep -v " $$\$" ; done ) > $O/$1-$2.others &
  mon=$!
  CUDA_VISIBLE_DEVICES=$GPU timeout 3600 $bin perf -b CUDA0 > $O/$1-$2.log 2>&1; echo "exit $?" >> $O/$1-$2.log
  kill $mon
  nvidia-smi -i $GPU --query-gpu=utilization.gpu,memory.used,clocks.sm,clocks.mem --format=csv,noheader > $O/$1-$2.gpu-after
}
run p1 baseline; run p1 candidate; run p2 candidate; run p2 baseline
echo done > $O/DONE
