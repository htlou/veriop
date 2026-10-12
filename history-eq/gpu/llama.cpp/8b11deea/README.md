# `8b11deea`: fused MMVQ bias prefetch

**Selected-kernel verdict: `UNSUPPORTED` by installed Volta; no output equivalence result.** The commit moves fused bias and gate-bias loads earlier in `mul_mat_vec_q`. [`reproduce.py`](reproduce.py) checks the exact parent/child `mmvq.cu` Git blobs, archives each revision's own `ggml/` dependencies, and compiles both with the same NVCC SM80 flags. Both [old](old.ptx) and [new](new.ptx) PTX modules parse in Volta and contain 180 kernels. The comparison selects the same fused Q4_0, one-destination-column kernel on both sides; the PTX hashes differ.

Volta stops while lowering the **reference** kernel at a structure parameter load with a nonzero offset: [the checker reports](volta-compare.log) `param loads with nonzero offsets are not supported`. It never compares the output array, so this is neither equality nor a counterexample. The saved [result](result.json) records source blob IDs, PTX hashes, the selected kernel, launch shape, and the checker diagnostic. Other kernel instances and the complete commit remain unverified. No official historical before/after benchmark score was measured.

Reproduce from the project root with `python3 -B history-eq/gpu/llama.cpp/8b11deea/reproduce.py`.
