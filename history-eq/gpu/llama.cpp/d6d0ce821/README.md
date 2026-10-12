# llama.cpp `d6d0ce821` — IQ1 Vulkan shared-memory guard

**Verdict: `EQUIV_PARTIAL` for the source of the selected IQ1 vector shaders; complete Vulkan behavior remains `UNKNOWN`.** The exact historical `mul_mat_vecq.comp` and its four included GLSL files are available at the parent and child revisions. With `DATA_A_IQ1_S` or `DATA_A_IQ1_M` defined and all other external macros at their preprocessor defaults, the complete shader preprocessing output is byte-identical before and after the change. The two SHA-256 values are recorded in [result.json](result.json). The newly added `NEEDS_IQ1S_GRID_GPU` macro retains the expanded table on this vector path.

For the `types.glsl` IQ1 variants without that macro, the child preprocessing output omits the `uint32_t[2048]` expanded grid and its initialization. The host `ggml_vk_matmul_shmem_support` IQ1 lookup-table allowance changes from 12,288 to 4,096 bytes. These are exact-source checks, not an official performance result. The GLSL `#version` and `#extension` directives are removed only to let `cpp` process the conditional source; no GLSL compiler, SPIR-V output, Vulkan runtime, host dispatch, or full output equivalence was checked. Kuiper was not used.

Reproduce from the project root: `python3 -B history-eq/gpu/llama.cpp/d6d0ce821/reproduce.py`.
