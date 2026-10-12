# llama.cpp `c959b676`: flash-attention result combination

**Fixed-sample verdict: `UNSUPPORTED` by the selected Volta comparison.** This commit changes CUDA tile and occupancy paths and removes a `SOFTMAX_FTZ_THRESHOLD` mask from `flash_attn_combine_results` ([exact historical diff](../source-screening/c959b676.source.diff)). The [reproduction script](reproduce.py) archives each revision's complete `ggml/` tree from Git, compiles its actual `fattn-tile.cu` with its own headers to `compute_80` PTX, and parses both PTX files successfully. [The result record](volta-result.json) contains the commands, source object IDs, hashes, and tool output.

The attempted Volta relation is the same `flash_attn_combine_results<64>` kernel on both sides, with one 64-thread CTA, `parallel_blocks=2`, 16 bytes of shared metadata, 128 input floats, two `float2` metadata values, and all 64 output floats selected. Volta stops while lowering the **parent** kernel at `Ex2(Float32 { ftz: true, ... })`: `Instruction not yet implemented`. This occurs before any equivalence decision. It is not a proof of equality or a counterexample, and it does not classify the commit's changed tile kernel or host launch policy.

The source removal of the small-weight mask suggests that some numerical inputs may produce different results, but this workspace has no faithful GPU execution or supported Volta model establishing such a case. No official before/after benchmark score was measured. Kuiper was not used.

Reproduce from the project root with `python3 -B history-eq/gpu/llama.cpp/c959b676/reproduce.py`.
