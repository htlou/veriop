import sys, os; sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from ptxlib import *
R = "llama.cpp"
NONE = "none invoked (Alive2 x86-64 target cannot model the changed non-x86 code)"
def u(short, reason, scope, notes, units=None):
    write_result(R, full(R, short), checker=NONE, checker_ran=False, verdict="UNSUPPORTED", unsupported_reason=reason, scope=scope,
                 build_config="n/a (would need a cross target; Alive2 LLVM 20 x86-64 pin)", units=units or [], evidence_dir=ev(R, short), notes=notes)
u("3c7450ce", "non-x86-target-intrinsics", "ggml/src/ggml-cpu/arch/riscv/quants.c: RVV (__riscv_v_intrinsic) vec_dot kernels for VLEN 256/512/1024",
  "All changed code is RISC-V Vector intrinsics guarded by __riscv_v_intrinsic; Alive2 here only targets x86-64 and the intrinsics are not modelled. For an x86-64 build the changed translation unit contributes no code.")
u("8c583242", "non-x86-target-intrinsics", "ggml/src/ggml-cpu/kleidiai/{kernels.cpp,kernels.h,kleidiai.cpp}: Arm KleidiAI Q8_0 per-channel kernels",
  "Arm-only (NEON/SME/i8mm via KleidiAI micro-kernels, new kernel tables and new API); no x86 IR and no old counterpart for the added kernels.")
u("ad5c975c", "non-x86-target-intrinsics", "ggml/src/ggml-cpu/arch/s390/quants.c, arch-fallback.h, ggml-cpu-impl.h: IBM z/Arch (s390x) Q5_0/Q5_1 vec_dot with vector intrinsics",
  "s390x vector (vec_*) intrinsics replace the generic C fallback only for __s390x__; the arch-fallback.h edit removes two #defines only inside the __s390x__ branch, so an x86-64 build is unchanged. Not analysable by the x86 Alive2 pin.")
u("c7b43ab6", "non-x86-target-intrinsics", "ggml/src/ggml-cpu/llamafile/sgemm.cpp: ppc64le MMA (__MMA__ / Power10 builtins) Q4_0 tinyBLAS path",
  "Power10 MMA builtins (vec_xl, __builtin_mma_*) guarded by __MMA__; no x86 IR changes.")
u("e8921349", "non-x86-target-intrinsics", "ggml/src/ggml-cpu/llamafile/sgemm.cpp (+615 lines): ppc64le MMA matrix-multiplication kernels, CMake option",
  "New/changed code is under PowerPC MMA guards (ppc64le); x86-64 compilation of sgemm.cpp is not changed by the commit, but the optimized path itself cannot be modelled by the available checker.")
u("85c55223", "interface-or-state-layout-change", "new ggml/src/ggml-cpu/iqp.cpp/iqp.h (AVX2 packed IQ-quant mat-mul, +1342 lines) hooked into ggml-cpu.c mul_mat and ggml-common.h",
  "The optimization is a new AVX2 GEMM implementation (iqp.cpp) with a new entry point and a repacked-weights state layout selected from ggml_compute_forward_mul_mat; there is no old definition to pair it with, and the surrounding code is a pointer-rich threadpool/params interface. Not attempted with Alive2 (new file, intrinsics-heavy, state layout change).")
print("ok")
