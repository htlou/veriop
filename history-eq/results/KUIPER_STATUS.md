# Kuiper status for historical optimization pairs

The installed Kuiper package is usable: on 2026-10-10, running
`./fstar.sh src/examples/Kuiper.Example.Add.fst` from
`benchmarks/tools/kuiper-package` exited 0 with
`Verified module: Kuiper.Example.Add` and
`All verification conditions discharged successfully`.
The package's `BUILD_INFO` pins Kuiper to
`413219948f91911ffaf0ac37a5ff941c5d1e55c7`.

This is a toolchain smoke test, **not a proof of an optimization pair**.
The [FlashAttention `8d454a3a` arithmetic lemma](../gpu/flash-attention/8d454a3a/README.md)
was subsequently verified by the F* checker bundled with Kuiper. It proves
the changed tile-scheduler quotient/remainder formula under explicit bounds;
it does **not** verify the old and new CUDA kernels. No historical old/new
kernel pair in this study has a Kuiper equivalence or refinement verdict.
The package documents authoring kernels in F*, verifying them, then
extracting CUDA; it does not document an importer or equivalence checker
for arbitrary existing CUDA, PTX, or Vulkan kernels. A historical-pair
claim would require a source-to-model correspondence for both revisions
and a relational proof about their outputs under the same input contract.
Direct Z3 runs using a binary bundled with Kuiper are recorded as Z3
checks, not Kuiper checks.
