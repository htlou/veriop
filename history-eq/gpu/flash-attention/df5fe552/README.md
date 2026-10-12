# FlashAttention `df5fe552`: SM8x tile-size change

**Selected default-split checker outcome: `UNSUPPORTED` (`new-code-does-not-build`); semantic equality remains unknown.** The exact old/new `hopper/flash_api.cpp` Git blobs are recorded in [result.json](result.json). In `get_num_splits`, the commit renames the local tuple from `kBlockMN_kernel_args_sm80` to `kBlockMN_kernel_args_sm8x` but leaves two subsequent uses of the old name. The historical `hopper/setup.py` defaults to split support enabled.

Run `python3 history-eq/gpu/flash-attention/df5fe552/check_build.py` from the project root. It extracts the complete historical function body on both sides and compiles each with minimal declarations for its dependencies. The [old body](old.log) passes; the [new body](new.log) fails because `kBlockMN_kernel_args_sm80` is undeclared. The new body passes when split support is disabled and when only those two stale names are repaired; these controls isolate the failure.

This is a syntax check of the exact changed function with stub dependencies, not a full historical FlashAttention build. It establishes no semantic inequality or equivalence result. The default candidate cannot produce a kernel for Volta comparison until this source error is fixed; the split-disabled configuration remains semantically unverified.
