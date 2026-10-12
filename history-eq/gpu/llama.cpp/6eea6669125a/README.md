# llama.cpp `6eea6669125a` — early graph expansion and CUDA debug count

**Verdict: `EQUIV_PARTIAL` for the CUDA translation unit with `GGML_CUDA_DEBUG` disabled.** The [reproduction](reproduce.py) checks the exact before/after Git blob IDs and removes the single inactive `GGML_CUDA_DEBUG` conditional from each complete historical `ggml-cuda.cu` file. Every remaining nonblank source line is identical, in order; the [recorded result](result.json) includes all four blob IDs. Thus this changed CUDA translation unit has the same active source under that build configuration, provided its unchanged dependencies and compile options are the same.

The same source check confirms the other changed file, `llama-graph.cpp`, removes exactly two early `ggml_build_forward_expand(gf, cur)` calls. It does **not** prove that graph node order, CUDA fusion, concurrent execution, or final tensor values are equal. With `GGML_CUDA_DEBUG` enabled, the moved assignment changes a diagnostic: for `i = 2` and incoming `prev_i = 0`, the old `nodes_fused` expression gives `-1` and the new one gives `1`, so only the new code logs `nodes_fused: 1`.

Run `python3 -B history-eq/gpu/llama.cpp/6eea6669125a/reproduce.py` from the project root. This is an exact-source conditional identity check, **not** a Kuiper, Volta, or Alive2 proof of the full commit. No official before/after benchmark score was measured.
