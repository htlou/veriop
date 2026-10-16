#!/usr/bin/env bash
# Build the subset vLLM _C_stable_libtorch extension (same op names/schemas as
# upstream) from a vLLM source tree.
#   usage: build_ext.sh <vllm_src_root> <out_dir>
# Flags mirror upstream CMake for the _C_stable_libtorch target on CUDA 12.x:
#   torch COMMON_NVCC_FLAGS minus the __CUDA_NO_HALF* defines (removed by
#   vllm cmake/utils.cmake for CUDA>=12), -DENABLE_FP8, USE_CUDA,
#   TORCH_TARGET_VERSION=2.11, TORCH_EXTENSION_NAME, Py_LIMITED_API (USE_SABI 3),
#   --expt-extended-lambda (torch's CMake adds it), sm_90 (H100) gencode,
#   and the torch-2.13 stable-string header hotfix used by upstream CMake.
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
DEFS="${EXTRA_DEFS:-} -DENABLE_FP8 -DUSE_CUDA -DTORCH_TARGET_VERSION=0x020B000000000000ULL -DTORCH_EXTENSION_NAME=_C_stable_libtorch -DPy_LIMITED_API=3 -DNDEBUG"
NVFLAGS="-O3 -std=c++17 --expt-relaxed-constexpr --expt-extended-lambda -Xcompiler -fPIC -gencode arch=compute_90,code=sm_90 --threads=1"
KERNELS="${EXTRA_KERNELS:-} cache_kernels.cu vocab_parallel_embedding_kernels.cu layernorm_kernels.cu activation_kernels.cu pos_encoding_kernels.cu quantization/w8a8/int8/scaled_quant.cu cuda_utils_kernels.cu"
pids=()
for k in $KERNELS; do
  o=$OUT/obj/$(echo "$k" | tr '/' '_').o
  /usr/bin/nvcc $NVFLAGS $DEFS $INC -c "$CS/libtorch_stable/$k" -o "$o" &
  pids+=($!)
done
g++ -O3 -std=c++17 -fPIC $DEFS $INC -I/usr/include -c "$HERE/ext/torch_bindings_subset.cpp" -o "$OUT/obj/bindings.o"
for p in "${pids[@]}"; do wait "$p"; done
/usr/bin/nvcc -shared -o "$OUT/_C_stable_libtorch.abi3.so" "$OUT"/obj/*.o \
  -L"$TORCH/lib" -ltorch -ltorch_cpu -lc10 -ltorch_cuda -lc10_cuda -lcuda \
  -Xlinker -rpath -Xlinker "$TORCH/lib"
echo "built $OUT/_C_stable_libtorch.abi3.so"
