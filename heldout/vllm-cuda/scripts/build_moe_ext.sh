#!/usr/bin/env bash
# Subset _moe_C_stable_libtorch (moe_align_block_size only); flags as build_ext.sh.
set -euo pipefail
SRC=$(realpath "$1"); OUT=$(realpath -m "$2")
HERE=$(cd "$(dirname "$0")/.." && pwd)
PY=$HERE/venv/bin/python
TORCH=$($PY -c 'import torch,os;print(os.path.dirname(torch.__file__))' 2>/dev/null)
PYINC=$($PY -c 'import sysconfig;print(sysconfig.get_paths()["include"])')
mkdir -p "$OUT/obj" "$OUT/shadow/torch/csrc/stable"
cp "$TORCH/include/torch/csrc/stable/stableivalue_conversions.h" "$OUT/shadow/torch/csrc/stable/"
(cd "$OUT/shadow" && patch --batch --forward -p1 --input="$SRC/cmake/patches/pytorch_stable_string.patch" >/dev/null)
CS=$SRC/csrc
INC="-I$OUT/shadow -I$CS -I$TORCH/include -I$TORCH/include/torch/csrc/api/include -I$PYINC"
DEFS="-DENABLE_FP8 -DUSE_CUDA -DTORCH_TARGET_VERSION=0x020B000000000000ULL -DTORCH_EXTENSION_NAME=_moe_C_stable_libtorch -DPy_LIMITED_API=3 -DNDEBUG"
for f in moe_align_sum_kernels topk_softmax_kernels; do /usr/bin/nvcc -O3 -std=c++17 --expt-relaxed-constexpr --expt-extended-lambda -Xcompiler -fPIC -gencode arch=compute_90,code=sm_90 $DEFS $INC -c "$CS/libtorch_stable/moe/$f.cu" -o "$OUT/obj/$f.o" & done; wait
g++ -O3 -std=c++17 -fPIC $DEFS $INC -c "$HERE/ext/moe_bindings_subset.cpp" -o "$OUT/obj/moe_bindings.o"
/usr/bin/nvcc -shared -o "$OUT/_moe_C_stable_libtorch.abi3.so" "$OUT"/obj/*.o -L"$TORCH/lib" -ltorch -ltorch_cpu -lc10 -ltorch_cuda -lc10_cuda -lcuda -Xlinker -rpath -Xlinker "$TORCH/lib"
echo built
