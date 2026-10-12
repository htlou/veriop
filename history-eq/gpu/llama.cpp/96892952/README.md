# llama.cpp `96892952`: RDNA3 MMQ routing

**Verdict: scoped `NOT_EQUIV`.** The exact historical commit changes only `ggml/src/ggml-cuda/mmq.cu`. The [reproduction script](reproduce.py) verifies the old/new Git blobs and checks that the complete file differs only in `ggml_cuda_should_use_mmq`. It extracts that entire function and obtains its architecture macros, helper definitions, batch limit, and quantization enum values from the same historical revision.

For `GGML_CUDA_CC_RDNA3`, default force flags, `GGML_TYPE_Q2_K`, `ne11=256`, and `n_experts=1`, the parent returns **true** (use MMQ) and the child returns **false**. Native builds reproduce the witness. Smaller `ne11=128`, `n_experts=64`, and a `Q4_0` control all return true on both sides. Alive2 reports [one incorrect transformation in the forward direction](alive-old_to_new.log) and [one in reverse](alive-new_to_old.log), with zero checker errors. [result.json](result.json) records the exact source IDs, IR hashes, enum values, and native outputs.

The checked observation is this host routing helper's return value at the fixed RDNA3 capability. It does not prove that the complete CUDA kernels or final tensor outputs differ. No official before/after llama.cpp benchmark score was measured for this historical pair.
