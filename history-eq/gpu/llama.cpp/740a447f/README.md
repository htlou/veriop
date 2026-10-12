# llama.cpp `740a447f`: Vulkan queue policy

**Verdict: `NOT_EQUIV` for the queue-policy projection.** On an AMD non-GCN device with `GGML_VK_ALLOW_GRAPHICS_QUEUE` and `GGML_VK_ASYNC_USE_TRANSFER_QUEUE` absent, the old code permits a graphics compute queue and does not request an async transfer queue; the new code excludes graphics and requests an async transfer queue. For AMD GCN, only the graphics exclusion changes. These are policy outputs, not tensor-value counterexamples.

[reproduce.py](reproduce.py) reads the exact parent and child `ggml-vulkan.cpp` blobs from the pinned local Git store, confirms the archived whole-file diff is the only changed path, extracts both queue expressions, and compiles the projections with Clang 20. [Alive2](alive-old_to_new.log) refutes old-to-new equality; [the reverse check](alive-new_to_old.log) is also refuted. Native controls agree on AMD default settings and on two cases where the policies coincide. [result.json](result.json) records the blob IDs, model hashes, checks, and witness values.

The projection models each environment variable by its presence bit and encodes the selected graphics flag and async-transfer choice. It does not execute Vulkan queue creation, compare final tensor outputs, or prove the whole commit unequal. No official historical before/after benchmark score was measured.
