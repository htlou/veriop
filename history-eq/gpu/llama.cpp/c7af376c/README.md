# llama.cpp `c7af376c`: CUDA stream concurrency

The [historical production diff](../source-screening/c7af376c.source.diff) is the exact parent `00425e2e` to child `c7af376c` diff (SHA-256 `4e250979b7f8b142626ac49a15f25f06ee8d8efe1ffa149a2424ef1ea48794ee`). It introduces host-side stream mapping, fork/join CUDA events, and overlap/dependency checks so graph branches can run concurrently.

[Volta's `compare` interface](../../../../cuda/repos/volta/README.md) compares one reference PTX kernel with one optimized PTX kernel at CTA 0. It cannot represent the graph-level stream schedule or event ordering changed here. **Fixed-sample verdict: `UNSUPPORTED` by the selected Volta checker.** No equality proof, counterexample, Kuiper proof, or official historical benchmark delta was produced.
