# llama.cpp `38355c6c`: top-k MoE shared memory to registers

This historical performance commit changes `ggml/src/ggml-cuda/topk-moe.cu` from writing selected weights through dynamic shared memory to keeping them in registers. Its exact parent is `81387858f1fbcc1acedbd308486e1016618ca8f8`. It was found in the nonkeyword history audit and is **outside the current 200-commit llama.cpp sample**.

Both exact historical `ggml/` trees were archived from `cuda/repos/llama.cpp` and compiled with NVCC to SM80 PTX; Volta parsed both modules successfully. The [result record](result.json) identifies the changed Git blobs, source/PTX SHA-256 hashes, compiler command, selected `topk_moe_cuda<32, false>` kernel, one-row/one-selected-expert launch, and the full output footprint for weights and IDs. The [old](old.ptx) and [new](new.ptx) PTX are retained.

**Verdict: `UNSUPPORTED` by the installed Volta checker, with no semantic verdict.** The comparison exits before equivalence checking because Volta has not implemented `Ex2(Float32 { ftz: true, ... })`, generated for the softmax exponential. Successful compilation and parsing do not prove equivalence. Kuiper was not run. No official before/after llama.cpp benchmark score was measured for this commit.
