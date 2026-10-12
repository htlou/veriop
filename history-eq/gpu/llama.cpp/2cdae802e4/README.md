# llama.cpp `2cdae802e4` — RDNA3 Vulkan mat-vec row tuning

**Verdict: `EQUIV_PARTIAL` for Vulkan pipeline-creation arguments outside AMD RDNA3; tensor-output equivalence remains `UNKNOWN`.** The exact historical `ggml-vulkan.cpp` source is available on both sides. After removing only the child's `is_rdna3`, `rm_int_n`, and `rm_id` definitions, their unused-value markers, and replacing the 24 calls to each helper with their input expressions, the parent and child source token streams match. [result.json](result.json) records the normalized-source hash and call counts.

The source-defined helpers return their input row count whenever `vendor != AMD` or `architecture != AMD_RDNA3`. [non-rdna3.smt2](non-rdna3.smt2) asks Z3 for an exception and returns `unsat`. For AMD RDNA3, `i=4` (the fifth column, within the source's eight-column loop) and `rows=1`, [rdna3-five-cols.smt2](rdna3-five-cols.smt2) returns `sat`: both new helpers choose four rows while the parent passes one. This is an intended pipeline-parameter difference, not an output counterexample.

Run `python3 -B history-eq/gpu/llama.cpp/2cdae802e4/reproduce.py` from the project root. The checks do not compile SPIR-V or compare the two row-count specializations' tensor outputs. No official historical benchmark score was measured.
