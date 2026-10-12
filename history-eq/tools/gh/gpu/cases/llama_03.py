import sys, os; sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from ptxlib import *
R = "llama.cpp"
NONE = "none invoked (changed code is outside Volta/Alive2 scope)"
def host(short, reason, scope, notes, ran=False, checker=NONE, ev_dir=None, units=None, build="n/a"):
    if os.path.exists(f"{GHRES}/{R}/{full(R, short)}.json") and "--force" not in sys.argv:
        pass
    write_result(R, full(R, short), checker=checker, checker_ran=ran, verdict="UNSUPPORTED", unsupported_reason=reason,
                 scope=scope, build_config=build, units=units or [], evidence_dir=ev_dir or ev(R, short), notes=notes)

host("1725e316", "checker-language-feature-unsupported",
     "src/models/qwen3next.cpp (ggml graph construction, C++ with ggml_context/std::string), models.h, ggml-cuda.cu fusion-name matcher (host), ggml-metal-common.cpp",
     "Graph-builder rewrite (548 lines): its output is a ggml compute graph (pointer-linked tensor structs), not a scalar/array function; the only CUDA change is a host-side node-name test (strncmp on 'dnet_add') in ggml-cuda.cu. No device kernel changed, so no PTX comparison exists; Alive2 cannot model the ggml context allocator and pointer graphs.")
host("9f5e1edb", "global-state-or-dispatch",
     "argsort.cu host function argsort_f32_i32_cuda_cub: runtime stream-capture query (cudaStreamIsCapturing) selecting DeviceSegmentedRadixSort vs DeviceSegmentedSort",
     "Host-side dispatch between two CUB library calls depending on runtime CUDA-graph capture state; no kernel in the repository changed, CUB internals are not analysable by Volta. The rest of the diff is reformatting.")
host("c173a53b", "checker-language-feature-unsupported",
     "ggml_cuda_match_moe_weighted_reduction in ggml-cuda.cu (host C++ with std::vector, lambdas, ggml_cgraph walking)",
     "One-line host predicate change (drops the n_tokens <= 0 early return, so zero-token graphs are now matched); the function walks pointer-linked ggml_tensor graphs with std::vector/lambdas, which Alive2 cannot model without a full ggml/CUDA host environment. No device code changed. By inspection the new code differs from the old on n_tokens <= 0, but that is not a checker result.")
host("d6f30300", "dependency-closure-too-large",
     "48 files: new tensor-parallel meta backend (ggml-backend-meta.cpp), llama model/graph host code, vendors headers, CUDA host changes",
     "Experimental backend-agnostic tensor parallelism: new host-side scheduling/communication code and public API additions, no old counterpart for most of it; no device kernel arithmetic is changed. Not a PTX or x86-IR function pair.")
host("841f27ab", "out-of-checker-language",
     "ggml-metal.metal / ggml-metal.m (primary perf change: Metal FA kernels), plus ggml.c accessor ggml_flash_attn_ext_get_prec, CUDA host fattn dispatch",
     "The optimization is in Metal Shading Language kernels (745 changed lines), which no available checker consumes. The small CUDA/C parts replace a direct op_params[3] read by the new accessor ggml_flash_attn_ext_get_prec (adds GGML_ASSERT on the op) and add a BF16 supports_op rejection; these are API additions without an old counterpart and were not run through Alive2.")
host("ef07a409", "out-of-checker-language",
     "WebGPU WGSL shaders rms_norm.wgsl / soft_max (primary perf change), ggml-webgpu.cpp host, ggml.c new function ggml_soft_max_ext_inplace",
     "The optimization is in WGSL shader code and WebGPU host code; ggml.c only gains a new inplace wrapper (no old counterpart). No PTX or x86 IR comparison can be formed.")
print("ok")
