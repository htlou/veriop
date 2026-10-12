# FlashAttention `6c73fb50`: SM100 hd256 exp2 emulation

**Checker verdict: UNSUPPORTED by the installed Volta pipeline.** The parent `96bd151b00add1dc5744115cfc350c0a809c3fa2` and child `6c73fb506fa84424c3fa04880f85c789b4a498e2` change two CuTe Python files. The child replaces some `cute.math.exp2` calls in the hd256 forward path with `ex2_emulation_2` and changes tuning and scheduling. [check_source.py](check_source.py) verifies both historical file pairs and the archived [diff](../source-screening/6c73fb50.source.diff); [source-audit.json](source-audit.json) records exact Git object IDs. The full [parent](hd256-old.py) and [child](hd256-new.py) target modules are retained.

Both target modules parse as Python, but Volta 0.1.0 accepts **PTX**, not CuTe Python. Its [parent attempt](volta-old.log) fails at the PTX lexer, and its [child attempt](volta-new.log) rejects a non-ASCII source character before PTX parsing. The local CuTe compiler is unavailable because importing `cutlass` fails on missing `cutlass._mlir` ([log](cute-import.log)); the GPU driver is also unavailable in this host. No exact historical PTX pair was produced, so Volta did not analyze numerical output or produce an equivalence/counterexample verdict.

The source clearly changes the exp2 implementation for selected fragments, but neither numerical equality nor inequality has been established for the actual kernel. The commit subject's `+3% to +9%` claim is not a measured score here; no official before/after GPU benchmark ran. With a working CuTe lowering pipeline and GPU environment, this case needs PTX-level comparison or a numerical-error specification and a fresh checker run.

Recheck source integrity with `python3 -B history-eq/gpu/flash-attention/6c73fb50/check_source.py`.
