# llama.cpp `f0995d28c`: Metal vector FlashAttention selection

**Whole-operation output verdict: `UNKNOWN`.** The commit changes one condition in the Metal FlashAttention host dispatcher: the ordinary-kernel branch starts at query batch size 20 instead of 4 for supported head dimensions. [The reproducer](reproduce.py) extracts the exact old and new conditions from `ggml-metal.m`, checks that the branch's `else` sets `use_vec_kernel`, and compiles source-mapped scalar gates with Clang 20. [Source hashes](result.json) identify both historical blobs.

[Alive2 refutes gate equality](alive2.log) and [proves that every input selecting the vector branch before still selects it after](relation-alive2.log). The [native valid-shape witness](witness.log) uses head dimension 128 and batch size 4: old vector=0, new vector=1. Batch sizes 3 and 20 are controls where both sides agree. This establishes a one-way **dispatch-predicate** relation only. It does not compare the Metal kernels, their output tensors, or their execution costs.

No official historical before/after benchmark score was measured. Volta's NVIDIA PTX interface does not check Metal kernels, and Kuiper was not used. Reproduce with `python3 -B history-eq/gpu/llama.cpp/f0995d28c/reproduce.py` from the project root.
