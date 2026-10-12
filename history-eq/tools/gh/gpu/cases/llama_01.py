import sys, os; sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from ptxlib import *
R = "llama.cpp"
CFG = "nvcc 12.8 --ptx -O3 -std=c++17 -arch=compute_80 --extended-lambda -DGGML_BACKEND_BUILD, ggml/src + ggml/include of the respective revision"

# 0a423800: change is inside GGML_USE_HIPBLAS && __HIP_PLATFORM_AMD__ branch only
c = full(R, "0a423800"); W = f"{HE}/gh/work/{R}/0a423800"
t, d = ptx_totals(W); assert t["changed"] == 0 and t["line_only"] == 0 and t["built"] == t["tus"] == t["whole_identical"], t
p = parse_all(W, d, 2)
write_result(R, c, checker="Volta (PTX parse) + per-function PTX identity (nvcc 12.8); no semantic query needed", checker_ran=True, verdict="EQUIV",
    scope=f"the only changed definition (mmq.cuh mul_mat_q launch-bounds guard under GGML_USE_HIPBLAS && __HIP_PLATFORM_AMD__, RDNA1 removed) via {t['tus']} translation units (mmq.cu + 10 mmq-instance-*.cu)",
    build_config=CFG,
    units=[dict(name="mul_mat_q launch bounds", file="ggml/src/ggml-cuda/mmq.cuh", result="EQUIV", detail=f"old/new PTX byte-identical (after path-string normalisation) for all {t['tus']} TUs, {t['identical']} kernels; Volta parses both")],
    evidence_dir=ev(R, "0a423800"),
    notes="The edit only removes defined(RDNA1) from an AMD/HIP-only __launch_bounds__ guard, so for the CUDA/NVIDIA configuration the preprocessed code is unchanged and the compiled PTX of every mmq instance is identical. Verdict is for the NVIDIA CUDA build configuration only; the HIP/RDNA1 build was not analysed.")

# 3e037f31: AMD WMMA/MFMA work; NVIDIA kernels identical except __LINE__ in NO_DEVICE_CODE diagnostics; host dispatch changed
c = full(R, "3e037f31"); W = f"{HE}/gh/work/{R}/3e037f31"
t, d = ptx_totals(W); assert t["changed"] == 0 and not t["build_fail"] and t["added"] == 0 and t["removed"] == 0, t
write_result(R, c, checker="Volta (PTX parse) + per-function PTX identity (nvcc 12.8)", checker_ran=True, verdict="EQUIV_PARTIAL",
    scope=f"device code of fattn-mma-f16 instances + fattn.cu for sm_80 ({t['tus']} TUs): {t['identical']} kernels PTX-identical, {t['line_only']} NO_DEVICE_CODE trap stubs differ only in a __LINE__ constant of the vprintf diagnostic; host dispatch in fattn.cu (ggml_cuda_get_best_fattn_kernel, ncols switch) not covered",
    build_config=CFG,
    units=[dict(name="fattn-mma-f16 / mma.cuh device code", file="ggml/src/ggml-cuda/fattn-mma-f16.cuh", result="EQUIV", detail="NVIDIA sm_80 PTX identical except __LINE__ in trap diagnostics"),
           dict(name="ggml_cuda_get_best_fattn_kernel / ncols1 switch", file="ggml/src/ggml-cuda/fattn.cu", result="UNKNOWN", detail="host kernel-selection code changed (ncols2_max for DKQ=320, AMD branches); not modelled by PTX checkers")],
    evidence_dir=ev(R, "3e037f31"),
    notes="AMD-targeted change; on the NVIDIA sm_80 build every instantiated kernel is identical up to line numbers embedded in unreachable-config trap messages. Host selection logic changed (also for NVIDIA with DKQ=320) and is not covered, hence EQUIV_PARTIAL. No Volta semantic query was needed because the PTX is identical.")
print("ok")
