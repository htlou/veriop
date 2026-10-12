# llama.cpp `661ae31c`: historical RMS_NORM optimization

The commit changes `ggml/src/ggml-cuda/norm.cu` and `common.cuh`. For `ncols < 1024`, the unfused `rms_norm_f32` launch changes from 32 to 256 threads; fused paths also change integer modulo to precomputed fast modulo. The comparison here covers **only the unfused 256-column, one-row kernel**. The whole commit remains **unknown** because the fused paths, other shapes, and host-side precomputation are not proved.

Both historical revisions compiled to PTX with `nvcc -arch=compute_80 --ptx` using the same compile flags, recorded in `build-old.json` and `build-new.json` (both exit 0). PTX SHA-256: old `ce2c9cdfaa61a6ac55a77349b595848721f423dbe08776ab82c32ce339717204`; new `02869cccc20aa536c781e3f7ff877cf463b0773f3d32f9a915a42ac0c40b858c`. The PTX files are `old.ptx` and `new.ptx`.

`volta-rms-256-full.json` records the exact Volta CLI invocation: old `rms_norm_f32<32,false,false>` vs new `rms_norm_f32<256,false,false>`, blocks 32/256, grid 1×1×1, `ncols=256`, 256 readable input floats and 256 writable output floats. The check covers **all 256 output elements** and returns `EQUIVALENT` under Volta's real-number floating-point model. `volta-rms-256-full-numeric.json` repeats the complete comparison with Volta's optional f64 numeric oracle and returns `EQUIVALENT`. `volta-rms-256-sample1.json` is a preliminary one-element check, not the evidence for the full-output claim.

This is a Volta result. Kuiper has not checked this pair. The commit message's “1–6% perf E2E” claim is upstream's statement; this workspace has not measured this historical pair with llama.cpp's official benchmark, so no performance delta is established here.
