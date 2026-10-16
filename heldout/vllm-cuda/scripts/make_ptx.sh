#!/usr/bin/env bash
# Emit PTX (compute_90) for one vLLM kernel source with the same flags as build_ext.sh.
#   usage: make_ptx.sh <vllm_src_root> <relative .cu under csrc/libtorch_stable> <out.ptx>
set -euo pipefail
SRC=$(realpath "$1"); REL=$2; OUT=$(realpath -m "$3")
HERE=$(cd "$(dirname "$0")/.." && pwd)
PY=$HERE/venv/bin/python
TORCH=$($PY -c 'import torch,os;print(os.path.dirname(torch.__file__))' 2>/dev/null)
PYINC=$($PY -c 'import sysconfig;print(sysconfig.get_paths()["include"])')
SH=$HERE/build/ptx-shadow; mkdir -p "$SH/torch/csrc/stable" "$(dirname "$OUT")"
cp "$TORCH/include/torch/csrc/stable/stableivalue_conversions.h" "$SH/torch/csrc/stable/"
(cd "$SH" && patch --batch --forward -p1 --input="$SRC/cmake/patches/pytorch_stable_string.patch" >/dev/null)
CS=$SRC/csrc
/usr/bin/nvcc -ptx -O3 -std=c++17 --expt-relaxed-constexpr --expt-extended-lambda \
  -arch=compute_90 -DENABLE_FP8 -DUSE_CUDA -DTORCH_TARGET_VERSION=0x020B000000000000ULL \
  -DTORCH_EXTENSION_NAME=_C_stable_libtorch -DPy_LIMITED_API=3 -DNDEBUG \
  -I"$SH" -I"$CS" -I"$TORCH/include" -I"$TORCH/include/torch/csrc/api/include" -I"$PYINC" \
  "$CS/libtorch_stable/$REL" -o "$OUT"
