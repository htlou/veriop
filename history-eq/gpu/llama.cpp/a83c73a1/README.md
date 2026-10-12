# llama.cpp `a83c73a1`: CUDA launch-queue environment setting

Run `python3 -B history-eq/gpu/llama.cpp/a83c73a1/verify_env_call.py` from the project root. The [result](result.json) checks the exact old/new Git blobs for both changed files and confirms that the only executable `ggml-cuda.cu` edit is a block inserted at the start of `ggml_backend_cuda_reg`'s first initialization. On Linux, if `CUDA_SCALE_LAUNCH_QUEUES` is absent, the new source calls `setenv(..., "4x", 0)` before allocating the registry context; the old source does not.

The Alive2 projection keeps that inserted block verbatim and models only whether the variable exists and the number of `setenv` calls. It finds a difference in both directions when the first initialization sees an absent variable: old 0 calls, new 1. When the variable is already present, both directions verify equal `setenv` counts. See the [old→new counterexample](symbolic-old_to_new.log) and [present-variable control](present-old_to_new.log).

**Verdict: scoped `NOT_EQUIV` for the external-call trace.** This does not claim different tensor outputs, final registry contents, or an official historical performance delta. It assumes a first call reaches the initialization block and observes the Linux `setenv` call; the Windows branch and failure behavior of `setenv` are outside this projection.
