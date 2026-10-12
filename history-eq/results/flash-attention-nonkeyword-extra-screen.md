# FlashAttention additional seeded nonkeyword optimization screen

The pinned FlashAttention source history has 1,122 nonkeyword commits. The first 200 were screened separately, and 75 individually inspected later commits were already in the optimization sample. A further metadata cue screen of the remaining draws identified the 13 explicit performance or resource changes below. The previous sample description said "30" later items; the actual tail-selection artifact and sample both contained 75, and the description has been corrected.

Every new item lacks at least one exact old/new changed source blob locally. `UNKNOWN` means its selected one-kernel NVIDIA path might be compared by Volta if faithful historical PTX becomes available; `UNSUPPORTED` means this change concerns host/build work, multi-CTA dispatch, or operator composition outside that selected Volta interface. These are checker-scope and intent classifications, not executed old/new proofs or official benchmark deltas.

| Seeded draw | Commit | Classification | Intent evidence | Missing changed blobs |
|---:|---|---|---|---:|
| 215 | `16d16d8cba` | `UNKNOWN` | Simplifies SM90 backward dK/dV register-to-shared copy. | 12 |
| 253 | `0d1ad61b7f` | `UNSUPPORTED` | Caches a hash attribute to skip an expensive Python-side check. | 2 |
| 277 | `ab3e5bd987` | `UNSUPPORTED` | Enables SM103 S ping-pong and extends SM100 two-CTA dispatch to varlen/decode shapes. | 2 |
| 293 | `ae137ed17a` | `UNSUPPORTED` | Fuses LayerScale into LayerNorm kernels, changing the operator-level composition. | 13 |
| 316 | `00756db9d9` | `UNSUPPORTED` | Omits unneeded ATen/Philox headers when dropout is disabled, reducing build work. | 5 |
| 421 | `96656b9323` | `UNSUPPORTED` | Removes redundant Python rotary shape assertions. | 2 |
| 518 | `796564dd75` | `UNKNOWN` | Uses asynchronous bulk copy for SM100 backward LSE loads. | 2 |
| 641 | `800401847e` | `UNKNOWN` | Avoids storing LayerNorm x-plus-residual when gradients are not needed. | 2 |
| 709 | `c712d43ace` | `UNKNOWN` | Shares one mbarrier for SM90 forward Q and K loads. | 8 |
| 953 | `4cb272ed75` | `UNSUPPORTED` | Caches a CuTe hash to avoid future Python-side hashing. | 2 |
| 979 | `78b7a1dc18` | `UNSUPPORTED` | Loads OPT model weights as FP16 on CPU before host-to-device transfer. | 8 |
| 1007 | `d0399b62a9` | `UNKNOWN` | Uses asynchronous bulk copy for SM100 backward dPsum loads. | 2 |
| 1055 | `eed1971f51` | `UNKNOWN` | Skips causal/local masking on KV blocks known to be unmasked in SM90 forward. | 1 |

The metadata screen does not establish that every unselected nonkeyword commit lacks optimization intent. The full [changed-blob audit](flash-attention-nonkeyword-first1122-blob-audit.json) records the reproducible seeded order and source availability.

A further [reproducible cue check](flash-attention-tail-cue-audit.json) over the **820 later draws still outside the current sample** found five messages containing a strong speed/resource or fusion/pipeline term. Their full local commit messages support these exclusions; rerun with [`audit_flash_tail_cues.py`](../tools/audit_flash_tail_cues.py):

| Draw | Commit | Why it is not an existing-path optimization sample |
|---:|---|---|
| 334 | `7c995381` | Adds a new fused cross-entropy operator. |
| 523 | `3edef7c0` | Removes an old Apex/Megatron fused-softmax kernel; no runtime gain is stated. |
| 653 | `cd089597` | Adds dropout functionality to fused residual LayerNorm/RMSNorm. |
| 685 | `fb69aefd` | Adds an SM120 forward implementation and tunes its tiles for new hardware; the parent has no corresponding SM120 path. The same commit also fixes a causal-softmax correctness bug. |
| 693 | `74797571` | Fixes a Triton backward pipeline correctness bug. |

This is a cue check, not a complete intent classification of all 820 messages. It provides no basis to pad the selected cases to 200.

A broader title/path and upstream-diff screen added [sixteen further existing-path optimization intents](flash-attention-nonkeyword-late-explicit.json). The current selected sample has 198 cases; the two latest additions change SM90 cluster eligibility and backward head swizzle, with exact historical changed blobs still unavailable locally.
