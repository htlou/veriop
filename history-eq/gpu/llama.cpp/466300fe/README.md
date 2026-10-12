# llama.cpp `466300fe`: Vulkan Q4_K/Q5_K dequantization

**Verdict: `EQUIV_PARTIAL` for the integer extraction in `dequantFuncQ4_K` and `dequantFuncQ5_K`.** The historical optimization changes twelve scale-byte reads to three packed 32-bit reads, and changes how one Q4/Q5 quantized value is selected. [`reproduce.py`](reproduce.py) reads the exact parent/child Git blobs, saves the four function bodies, and checks that the formulas modeled in [`proof.smt2`](proof.smt2) occur in those bodies.

For every index `0..255`, all possible twelve scale bytes, and arbitrary 16-bit `qs` and `qh` words, Z3 finds no difference in the extracted scale, min-byte, Q4 nibble, or Q5 value. The four negated-equality queries each return `unsat` in [`proof.log`](proof.log). The remaining arithmetic in the selected functions uses these values; its source expressions are unchanged apart from replacing the old Q5 exact integer addition with the same integer value before conversion to FP16.

The proof assumes the new `uvec4` view packs the same bytes in little-endian lane order as the old scalar arrays, and that `unpackFloat2x16(v.x)` exposes the same two FP16 scale bits as the old `f16vec2 d`. It does not compare compiled SPIR-V, device floating-point behavior, other dequantization functions, or the whole commit. Z3 was invoked directly; Kuiper and Volta did not check this pair. No official before/after benchmark score was measured.

Run `python3 -B history-eq/gpu/llama.cpp/466300fe/reproduce.py` from the project root.
