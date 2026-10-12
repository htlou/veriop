# llama.cpp `50b7f076`: Vulkan expert mat-vec routing

**Verdict: scoped `NOT_EQUIV`.** The historical host helper `ggml_vk_use_mul_mat_vec_id` changes its route condition from `src2->ne[1] == 1` to `src2->ne[1] <= 8`. For an F32 weight tensor with two expert IDs in the second dimension, the helper returns false before and true after. The unchanged caller uses that result to select the mat-vec path.

[The reproduction script](reproduce.py) checks both exact historical changed blobs, the archived full diff, the unchanged F32 type value, and the complete helper body. [Alive2 refutes both directions](alive-old_to_new.log) of the source-extracted helper for F32 inputs; the [reverse log](alive-new_to_old.log) reports zero checker errors too. Native controls at batch sizes 1, 2, 8, and 9 agree with the expected route table in [the result record](result.json).

This proves a changed path choice, not a changed numerical result. The shader changes, Vulkan dispatch behavior, output tensors, and an official before/after benchmark score remain unverified.
