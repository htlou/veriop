# llama.cpp `baad9488`: x86 Q2_K interleaved GEMV

**Verdict: `NOT_EQUIV` for bitwise FP32 outputs of one valid 8-row, 256-column Q2_K × Q8_K matrix-vector specialization.** This is an exact historical native-execution counterexample, not an Alive2 or Kuiper proof and not a claim about acceptable numerical tolerance or whole-model outputs.

The [reproducer](run_check.py) checks the archived source diff against the two Git revisions, confirms that the historical quantizer and old scalar dot-product source blobs are unchanged, then builds each revision's official `ggml` CMake project with the same x86 AVX2 settings. The [probe](q2_probe.cpp) initializes ggml, quantizes deterministic matrix/vector data with the official reference quantizers, and writes their bytes before repacking. The parent calls `ggml_vec_dot_q2_K_q8_K` for each row; the child calls its added `repack<block_q2_K, 8, 8>` and `ggml_gemv_q2_K_8x8_q8_K` functions. Both input files have SHA-256 `a30ad9d34157fa67a692982736dbd676232d1afc633437eee0fb48152a940e26`.

The [result](result.json) records different FP32 output bits in all eight rows; for row 0, parent `0x42300a7e` (44.0102463) versus child `0x42300a7f` (44.0102501). The differences are small and may reflect accumulation order. They establish failure of **bitwise** equivalence for this specialization. Other shapes, dispatch decisions, numerical-error bounds, and the whole commit are not checked. No official before/after benchmark score was measured.

Run from the project root: `python3 -B history-eq/gpu/llama.cpp/baad9488/run_check.py`.
