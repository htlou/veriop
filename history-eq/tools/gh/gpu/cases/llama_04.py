import sys, os; sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from ptxlib import *
R = "llama.cpp"
c = full(R, "d1e35564"); W = f"{HE}/gh/work/{R}/d1e35564"
write_result(R, c, checker="nvcc 12.8 build of old/new (Volta not reached for argsort.cu)", checker_ran=False, verdict="UNSUPPORTED", unsupported_reason="new-code-does-not-build",
    scope="argsort.cu (old init_offsets kernel + CUB sort vs new cuda::make_strided_iterator offsets) and top-k.cu (include removal)",
    build_config="nvcc 12.8 --ptx -O3 -std=c++17 -arch=compute_80 --extended-lambda -DGGML_BACKEND_BUILD",
    units=[dict(name="argsort_f32_i32_cuda_cub", file="ggml/src/ggml-cuda/argsort.cu", result="UNSUPPORTED", detail="new side: error: namespace 'cuda' has no member 'make_strided_iterator' / 'make_counting_iterator' (CUDA 12.8 bundled CCCL lacks them); old side builds"),
           dict(name="top-k.cu", file="ggml/src/ggml-cuda/top-k.cu", result="EQUIV", detail="only an #include <cuda/iterator> removal; PTX identical modulo internal hashed symbol names")],
    evidence_dir=ev(R, "d1e35564"),
    notes="The new argsort.cu needs a newer CCCL (cuda::make_strided_iterator) than CUDA 12.8 provides, so it does not build with the toolchain used here; this is a toolchain gap, not necessarily a defect of the commit. Even with a newer CCCL the pair (extra init kernel + CUB vs CUB with iterator) is a CUB-library comparison that Volta cannot model.")
print("ok")
