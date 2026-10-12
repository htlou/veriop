# llama.cpp `ece0f5c1`: OpenCL `set_rows` fast remainder

**Verdict: `EQUIV_PARTIAL`.** The historical edit changes all four `set_rows` kernels from signed `% ne11` and `% ne12` to `fastmod`, with `fastdiv` constants computed on the host. For divisor 3 and every nonnegative 31-bit group index, [the F* theorem](Kuiper.Llama.OpenCL.FastDiv.fst) proves that the source-formula quotient equals integer division, the remainder equals `% 3`, and the `mul_hi + index` sum fits in 32 bits. [Kuiper's bundled F* verifier reports success](kuiper.log).

[The reproduction script](reproduce.py) checks both exact historical changed blobs and the archived diff, confirms all four old/new kernel replacements, compiles and runs the exact historical host constant initializer (`mp=1431655766`, `L=2` at divisor 3), then reruns the F* proof. [The result record](result.json) includes the Git blob IDs, source-diff hash, proof hash, and checker build hash.

This is a source-audited arithmetic specialization. Other divisors, OpenCL integer-cast and work-group limits outside the stated index range, complete kernels, output tensors, and official benchmark performance are unverified. The bundled F* verifier was used; Kuiper did not compare the complete GPU kernels.
