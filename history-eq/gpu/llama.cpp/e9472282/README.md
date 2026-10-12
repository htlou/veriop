# llama.cpp `e9472282`: programmatic dependent launches

The [historical production diff](../source-screening/e9472282.source.diff) is the exact parent `29f14822` to child `e9472282` diff (SHA-256 `d6d31c5e1da3b8b4f7be70572cf6f439a7481eda9c947bda851ce74a6e372db2`). It adds Hopper programmatic launch barriers inside kernels and selects `cudaLaunchKernelEx` with programmatic stream serialization on the host. The optimization aims to overlap dependent kernel launches.

[Volta's `compare` interface](../../../../cuda/repos/volta/README.md) checks one PTX kernel per side at CTA 0. The changed dependency between successive launches is outside that model, so a single-kernel comparison would omit the optimization's essential behavior. **Fixed-sample verdict: `UNSUPPORTED` by the selected Volta checker.** No equality proof, counterexample, Kuiper proof, or official historical benchmark delta was produced.
