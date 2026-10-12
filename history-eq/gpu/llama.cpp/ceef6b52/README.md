# `ceef6b52`: CUDA context creation during device initialization

**Scoped verdict: `NOT_EQUIV` for initialization effects and diagnostics.** The historical change removes unconditional `cudaSetDevice` and `cudaMemGetInfo` calls from `ggml_cuda_init` and removes free-memory text from the device log. [`reproduce.py`](reproduce.py) verifies the exact parent/child `ggml-cuda.cu` Git blobs, extracts the complete historical initializer on each side, and compiles them with the same controlled CUDA API and logging stubs under the NVIDIA/no-VMM configuration.

For one successful compute-capability 8.0 device, the [old run](old.log) calls `cudaSetDevice` once and `cudaMemGetInfo` once, then logs 512 MiB free. The [new run](new.log) makes neither call and omits the free-memory value. The [result](result.json) records the source hashes and full outputs. This is an executable counterexample for the selected external-call/log trace, and is consistent with the optimization's stated aim of avoiding eager CUDA context creation.

Volta verifies selected GPU kernels, not this host-side initializer; no Volta equivalence result exists for it. The stubs are a valid successful API scenario but do not measure actual CUDA context behavior, tensor outputs, or official historical benchmark performance. Reproduce from the project root with `python3 -B history-eq/gpu/llama.cpp/ceef6b52/reproduce.py`.
