# `3b4fca11`: AIX tiled-matmul compile gate

**Selected AIX comparison: `UNSUPPORTED` (`new-code-does-not-build`).** The historical `tinyBLAS_Q0_PPC::matmul` method changes the AIX/big-endian path from `mnpack` to a smaller tiled path. [`reproduce.py`](reproduce.py) checks the exact old/new `sgemm.cpp` Git blobs, extracts that complete method, and compiles it with minimal declarations under both `_AIX` and ordinary preprocessing.

The [old AIX branch](old-aix.log) passes Clang 20 syntax checking. The [new AIX branch](new-aix.log) fails at `n_chunk = 32` because the semicolon is absent; both [ordinary](old-ordinary.log) [branches](new-ordinary.log) pass. The source-extracted syntax gate confirms the optimized AIX method cannot reach an equivalence checker as written. It does not establish a difference in matrix outputs, nor does it substitute for a complete AIX build. The runtime-output relation remains unverified; `UNSUPPORTED` describes this selected checker comparison.

No official historical before/after benchmark score was run. Reproduce from the project root with `python3 -B history-eq/gpu/llama.cpp/3b4fca11/reproduce.py`.
