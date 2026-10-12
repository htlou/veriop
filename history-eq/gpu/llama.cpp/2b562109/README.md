# llama.cpp `2b562109`: MMVQ routing thresholds

Run `python3 -B history-eq/gpu/llama.cpp/2b562109/verify_dispatch.py` from the project root. The [result](result.json) hashes both historical `mmvq.cu` blobs and the unchanged architecture constants, type definitions, batch limit, and quantization trait. This commit only inserts NVIDIA threshold branches into `ggml_cuda_should_use_mmvq`.

The checker extracts the **exact source prefix** of that host function and specializes it to `GGML_TYPE_Q2_K`, which the historical trait table marks quantized. For Ada CC 890, the historical constants make the AMD/CDNA branch unreachable. Alive2 refutes old/new equality in both directions: at `ne11=5`, the old helper returns true (`5 <= MMVQ_MAX_BATCH_SIZE`, where the limit is 8), while the new Ada Q2_K branch returns false (`5 <= 4`). As a negative scope control, both directions prove equal for CC 700, where none of the inserted branches applies. The [old→new log](cc890-old_to_new.log) and [new→old log](cc890-new_to_old.log) contain the checker verdicts.

**Verdict: scoped `NOT_EQUIV` for the observable routing decision.** This is a host-dispatch result: the old and new paths may still compute equal tensor values. No complete CUDA-kernel comparison, model inference run, or official historical benchmark score is claimed.
