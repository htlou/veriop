# llama.cpp `c3c15053`: WebGPU fast-matmul vectorized key

**Verdict: `NOT_EQUIV` for the pipeline-selection key.** With F32 source matrices, widths of 128, and three output rows, the historical caller chooses the fast matrix-matrix path. The old `get_mul_mat_fast_pipeline` sets `key.vectorized=0` because the row count is not divisible by four; the new version sets it to 1. F16 gives the same key change. Four-row, unaligned-width, and non-F32/F16 controls agree.

[reproduce.py](reproduce.py) verifies the single changed historical Git blob and archived diff, reads unchanged enum values and the fast-path call site from the same revision, then compiles the exact source predicate in both versions. [Alive2 refutes old-to-new equality](alive-old_to_new.log) and [new-to-old equality](alive-new_to_old.log) with zero checker errors; native runs confirm the valid small-shape witness and controls. [result.json](result.json) records the source hashes and results.

The proof covers the selected pipeline key, not WGSL execution or final tensor values. The commit also adds a `_vectorized` shader-variant suffix at another site; that site is source-audited but not compared as a complete shader. No official historical before/after benchmark score was measured.
