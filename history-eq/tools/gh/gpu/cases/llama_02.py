import sys, os; sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from ptxlib import *
R = "llama.cpp"
CFG = "nvcc 12.8 --ptx -O3 -std=c++17 -arch=compute_80 --extended-lambda -DGGML_BACKEND_BUILD, ggml/src + ggml/include of the respective revision"
CK = "Volta (PTX parse) + per-function PTX identity (nvcc 12.8)"

# f3dd7b8e: HIP CDNA mmf
c = full(R, "f3dd7b8e"); W = f"{HE}/gh/work/{R}/f3dd7b8e"
t, d = ptx_totals(W); assert t["changed"] == 0 and t["removed"] == 0 and not t["build_fail"], t
write_result(R, c, checker=CK, checker_ran=True, verdict="EQUIV_PARTIAL",
    scope=f"all {t['tus']} translation units that include the changed headers/sources (mma.cuh, mmf.cuh, mmf.cu) for sm_80: {t['identical']} pre-existing kernels PTX-identical; {t['added']} added kernel instantiations (new rows_per_block template parameter for CDNA) have no old counterpart; host dispatch in mmf.cu not covered",
    build_config=CFG,
    units=[dict(name="pre-existing mul_mat_f / mul_mat_f_ids / fattn-mma / mmq kernels", file="ggml/src/ggml-cuda/mma.cuh", result="EQUIV", detail=f"{t['identical']} kernels identical across {t['tus']} TUs"),
           dict(name="new rows_per_block=64 (CDNA) instantiations", file="ggml/src/ggml-cuda/mmf.cuh", result="UNKNOWN", detail="new code for AMD CDNA; no old counterpart, not reachable on NVIDIA devices by host dispatch"),
           dict(name="ggml_cuda_should_use_mmf / mmf_get_rows_per_block", file="ggml/src/ggml-cuda/mmf.cu", result="UNKNOWN", detail="host dispatch; not modelled")],
    evidence_dir=ev(R, "f3dd7b8e"),
    notes="AMD CDNA (MFMA) enablement. Every kernel that existed before is compiled to byte-identical PTX for sm_80; the commit adds new template instantiations and host routing that are not compared.")

# bc81d47a: host routing for CDNA
c = full(R, "bc81d47a"); W = f"{HE}/gh/work/{R}/bc81d47a"
t, d = ptx_totals(W); assert t["changed"] == 0 and t["added"] == 0 and not t["build_fail"], t
write_result(R, c, checker=CK, checker_ran=True, verdict="EQUIV_PARTIAL",
    scope=f"device code: mmvq.cu and ggml-cuda.cu translation units, sm_80, {t['identical']} kernels PTX-identical; new host predicate ggml_cuda_should_use_mmvq and its two call sites in ggml_cuda_mul_mat are source-argued only",
    build_config=CFG,
    units=[dict(name="mmvq kernels", file="ggml/src/ggml-cuda/mmvq.cu", result="EQUIV", detail="whole PTX files identical for both TUs"),
           dict(name="ggml_cuda_should_use_mmvq (host)", file="ggml/src/ggml-cuda/mmvq.cu", result="UNKNOWN", detail="for non-CDNA devices returns ne11 <= MMVQ_MAX_BATCH_SIZE, a bound already in the initial use_mul_mat_vec_q condition (source inspection only, not checker-proved); for CDNA it adds new thresholds")],
    evidence_dir=ev(R, "bc81d47a"),
    notes="AMD CDNA routing change. NVIDIA PTX is identical; the host routing predicate is by inspection unchanged for NVIDIA but was not run through a checker, so the verdict is EQUIV_PARTIAL.")

# b62b3509: additive chunked SSD kernels
c = full(R, "b62b3509"); W = f"{HE}/gh/work/{R}/b62b3509"
t, d = ptx_totals(W); assert t["changed"] == 0 and t["added"] == 4 and not t["build_fail"], t
write_result(R, c, checker=CK, checker_ran=True, verdict="UNSUPPORTED",
    scope="ssm-scan.cu sm_80 PTX: 12 pre-existing kernels identical; 4 new kernels (ssm_ssd_init_state/pre_matmul/prepare_dt/...) plus new host dispatch for Mamba-2 prefill",
    build_config=CFG, unsupported_reason="interface-or-state-layout-change",
    units=[dict(name="pre-existing ssm_scan kernels", file="ggml/src/ggml-cuda/ssm-scan.cu", result="EQUIV", detail="12 kernels PTX-identical"),
           dict(name="chunked SSD prefill pipeline", file="ggml/src/ggml-cuda/ssm-scan.cu", result="UNSUPPORTED", detail="new multi-kernel pipeline (red.global.add.f32 accumulation, ex2.approx, host-side dispatch and cuBLAS-style staging) replaces the single-kernel prefill path; no old kernel to pair it with and floating-point summation order differs")],
    evidence_dir=ev(R, "b62b3509"),
    notes="The optimization is a new algorithm (chunked SSD matmul) selected by host code for large prefill; old and new paths are different multi-kernel computations, so no common harness/interface exists. Volta parses the new PTX; no semantic query was formed.")
print("ok")
