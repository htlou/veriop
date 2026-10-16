#!/usr/bin/env bash
# Single survey run of an official script on an idle GPU (7..4), with GPU state before/after.
#   survey_run.sh <pkg-variant> <out-prefix> <script> [args...]
set -u
HERE=$(cd "$(dirname "$0")/.." && pwd); V=$1; OUTP=$(realpath -m "$2"); shift 2
until G=$("$HERE/scripts/idle_gpu.sh"); do sleep 60; done
{ echo "gpu=$G start=$(date -Is)"; nvidia-smi -i $G --query-gpu=index,utilization.gpu,memory.used,clocks.sm --format=csv,noheader; nvidia-smi --query-compute-apps=gpu_uuid,pid --format=csv,noheader; } > "$OUTP.gpu-before.txt"
cd "$HERE/vllm/benchmarks/kernels"
CUDA_VISIBLE_DEVICES=$G PYTHONPATH="$HERE/pkg/$V" "$HERE/venv/bin/python" "$@" > "$OUTP.txt" 2>&1; rc=$?
{ echo "rc=$rc end=$(date -Is)"; nvidia-smi -i $G --query-gpu=index,utilization.gpu,memory.used,clocks.sm --format=csv,noheader; nvidia-smi --query-compute-apps=gpu_uuid,pid --format=csv,noheader; } > "$OUTP.gpu-after.txt"
echo "$OUTP rc=$rc gpu=$G"
