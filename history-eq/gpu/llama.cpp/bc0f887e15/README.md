# llama.cpp `bc0f887e15` — CANN matrix-multiplication support gate

**Verdict: `NOT_EQUIV` for the CANN `supports_op` result on a selected valid Q8_0 matrix shape.** The parent `GGML_OP_MUL_MAT` branch accepts F16/F32/Q8_0 only when `src0->ne[0] - 1 > QK8_0`; the child removes that condition and returns true. Historical `ggml-common.h` defines `QK8_0` as 32. For Q8_0 with `ne[0]=32`, the parent returns false and the child returns true.

[reproduce.py](reproduce.py) extracts the exact parent/child switch arms from `ggml-cann.cpp`, compiles them with Clang 20, and runs Alive2 on both the symbolic branch and the fixed Q8_0/32 case. [Alive2's fixed-case log](alive2-support_q8_0_32.log) reports an incorrect transformation with old return 0 and new return 1; [result.json](result.json) records the scope. Reproduce from the project root with `python3 -B history-eq/gpu/llama.cpp/bc0f887e15/reproduce.py`.

This is an observable backend capability decision. It does not show a difference in matrix values or prove that the newly accepted operation executes successfully on Ascend hardware. The changed `quantize_float_to_q4_0.cpp` scratch-buffer allocation and scale-copy code were not checked. No official historical benchmark score was measured.
