#!/bin/bash
# Official `test-backend-ops perf`, one op at a time (the all-ops run aborts on an upstream mxfp4
# MUL_MAT_ID_FUSION CUDA error on both builds), baseline vs candidate in order A B B A on one idle GPU.
set -u
H=/srv/home/hantaolou/code/veriop/heldout/llama-cuda; O=$H/bench/per-op; GPU=${GPU:-7}
UUID=$(nvidia-smi -i $GPU --query-gpu=uuid --format=csv,noheader)
ops=$($H/baseline/build-cuda/bin/test-backend-ops --list-ops 2>/dev/null | awk 'NR>1{print $1}')
waitfree() { until [ -z "$(nvidia-smi --query-compute-apps=gpu_uuid --format=csv,noheader | grep $UUID)" ]; do sleep 30; done; }
run() { # op tag side
  waitfree
  extra=(); [ "$1" = MUL_MAT_ID_FUSION ] && extra=(-p '^(?!.*mxfp4).*$')
  ( while sleep 1; do nvidia-smi --query-compute-apps=gpu_uuid,pid,process_name --format=csv,noheader | grep $UUID | grep -v test-backend-ops; done ) > $O/$1.$2-$3.others &
  mon=$!
  CUDA_VISIBLE_DEVICES=$GPU timeout 900 $H/$3/build-cuda/bin/test-backend-ops perf -b CUDA0 -o "$1" "${extra[@]}" > $O/$1.$2-$3.log 2>&1; echo "exit $?" >> $O/$1.$2-$3.log
  kill $mon
}
for op in $ops; do
  run $op p1 baseline; run $op p1 candidate; run $op p2 candidate; run $op p2 baseline
done
echo done > $O/DONE
