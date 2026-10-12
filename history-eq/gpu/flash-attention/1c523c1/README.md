# FlashAttention `1c523c1`: interleaved rotary kernel

The sampled historical commit `1c523c1ce1139a73a00818183a9a992238c849bf` changes `flash_attn/ops/triton/rotary.py` to load interleaved rotary inputs contiguously. Its parent is `26d7d92f3db1c31bacc8d425ee45833b7ec7c16e`.

`build_ptx.py` imports the unchanged source from both historical worktrees and launches the FP16, interleaved, non-conjugate `rotary_kernel` with shape `(batch=1, seqlen=4, heads=1, headdim=32)` on H100. Both compile to distinct PTX (`old.ptx`, `new.ptx`) and their outputs match for one fixed random input (`runtime-check.json`). This runtime observation is **not** an equivalence proof. The old/new PTX SHA-256 hashes are `754cc7f15ae0c5f49479eec21e0cbb6f95d76cf8229674f2fe6bf373705a2aaa` and `fa9ca2b262096c60ed1d7af797fbd3caddd1b67fbd5de52fbd5ab0e6a3cf33a5`.

The exact Volta comparison is in `volta-interleaved-f16-4x32-normalized.json`. Raw Triton PTX first hits Volta's parser at `.ptr` parameter annotations (`volta-interleaved-f16-4x32.json`). For the retry, `build_ptx.py` removes only those pointer annotations and one-register load/store braces from `old-volta.ptx` and `new-volta.ptx`; their instruction values and memory operations are unchanged. Volta then stops in the **reference** kernel: `t0: guard predicate is symbolic at pc:19; the kernel is not a structured-CTA under this configuration`. It produces no equivalence or counterexample verdict. This specialization is **unsupported by the installed Volta**, and the full commit remains unproved. Kuiper was not used.

The repository's pinned official FlashAttention benchmark is a separate baseline run; it does not measure this historical rotary before/after pair. No performance delta is reported here.
