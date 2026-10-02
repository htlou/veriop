# Rust / Aeneas submission

This branch contains the original and optimized Rust sources, recorded official benchmark runs, generated Aeneas models, Lean equivalence proofs, and checker logs. Snapshot: 2026-10-02. Historical experiments retain their original results and limitations.

## Accepted Base64 result

**2.034483× aggregate speedup**, eight unchanged upstream Criterion `encode_slice` workloads, four rounds. Individual workload ratios: **1.836–2.758×**; this is not 2× at every size. The exact measured candidate has a complete extracted public API equivalence proof.

| Requested artifact | Location |
|---|---|
| Original complete library | [aeneas/repos/rust-base64](aeneas/repos/rust-base64) |
| Optimized complete library | [aeneas/repos/base64-pairs-unroll8-exact](aeneas/repos/base64-pairs-unroll8-exact) |
| Exact source change | [patch](aeneas/patches/base64-pairs-unroll8-exact.patch) |
| Before/after timings, rounds and aggregate | [performance.json](aeneas/results/pairs-unroll8-exact/performance.json) |
| Raw official harness samples | [criterion/](aeneas/results/pairs-unroll8-exact/criterion) |
| Source pins and measured executable hashes | [build.json](aeneas/results/pairs-unroll8-exact/build.json) |
| Original Aeneas model | [Base64Unroll8PublicRef.lean](aeneas/proof/Base64Unroll8PublicRef/Base64Unroll8PublicRef.lean) |
| Optimized Aeneas model | [Base64Unroll8PublicOpt.lean](aeneas/proof/Base64Unroll8PublicOpt/Base64Unroll8PublicOpt.lean) |
| Complete public API proof | [Base64Unroll8PublicProof.lean](aeneas/proof/Base64Unroll8PublicProof.lean) |
| Internal encoder proof | [Base64Unroll8Proof.lean](aeneas/proof/Base64Unroll8Proof.lean) |
| Checker output and axiom audit | [verification log](aeneas/logs/base64-unroll8-public-verification.log) |
| Proof/source/benchmark provenance | [292-file manifest](aeneas/results/base64-unroll8-public-proof-provenance.json) |
| Deliberately incorrect padding rejected | [negative-control log](aeneas/logs/base64-unroll8-public-negative-control.log) |

`encode_slice_generic_equiv` covers all inputs with a shared arbitrary `AsRef` callback and all output buffers, for equal encoding tables, padding characters, and padding settings. The actual capacity calculation/check is included. Return count, API error, padding, full returned buffer, and modeled failure/divergence agree. Error constructor translation is proved lossless. Recorded runtime validation includes 243 upstream tests and 41,520 complete-buffer differential cases.

The proof checks extracted programs. Charon/Aeneas translation, standard-library models and native compilation remain trusted. Native release-overflow behavior, panic payloads and state after caught unwinding are not separately certified. Axiom reports include standard Lean axioms, opaque `Formatter`, and unused decoder declarations carried by the engine records; they contain no assumed encoder-equivalence lemma or `sorryAx`.

## LZ4 and tool work: incomplete

[Original lz4_flex](aeneas/repos/lz4_flex), [copy-helper candidate](aeneas/repos/lz4-stdlib-copy), [performance](aeneas/results/stdlib-copy/performance.json), and [CopyProof.lean](aeneas/proof/CopyProof.lean) are included. The copy-helper equality is proved; full block compression/decompression equivalence and a repeatable 2× performance gain are not achieved. Other candidates and failed extraction artifacts are retained as experiments.

The latest Charon lifetime-binder fix passes its targeted regression and the [small generic-sink equivalence check](aeneas/logs/sink-reborrow-equivalence.log). [LZ4 extraction now generates a model](aeneas/logs/lz4-decompress-partial-fixed-aeneas.log), but that model has not been Lean checked and retains external-definition warnings. Full Charon testing stopped on missing `odoc`; clippy remains outstanding. See [test log](aeneas/logs/charon-fuse-binders-full-test.log). Source patches for all current translator changes are preserved under [submission/upstream-patches](submission/upstream-patches).

## Checking this submission

Run from this branch's root:

```bash
python3 submission/verify-artifacts.py
python3 submission/audit-evidence.py
# With elan available: rebuild/check the archived Aeneas models and proof.
bash submission/check-rust-proof.sh
```

The patched Lean backend source is included at `aeneas/env/aeneas/backends/lean`; Lean dependencies are pinned. The proof script fetches dependencies and builds from archived sources. It does not regenerate the Rust extraction or rerun benchmarks.

For the original provenance verifier, restore upstream metadata and exact recorded benchmark binaries first:

```bash
python3 submission/restore-upstreams.py
python3 submission/restore-bench-binaries.py
cd aeneas
bash verify-base64-unroll8-public.sh --existing-models
```

That verifier uses CPU affinity 64–79; adapt affinity on hosts lacking those CPUs. The benchmark executables are stored losslessly as `.gz` files beside their recorded paths. Restored bytes must match the original hashes. Nested Git metadata is fetched at pinned upstream commits without changing source snapshots. No private keys or local compiler caches are included.

Fresh Rust extraction additionally requires the pinned Rust/Charon/OCaml/Aeneas toolchains and building the patched translator. See [historical experiment README](aeneas/README.md), [pins](aeneas/pins.json), [extraction script](aeneas/extract-base64-public.sh), and archived source patches. The historical setup script predates later tool patches and is not a turnkey installer for the final patched translator. Its logs preserve original absolute paths; replay commands must use the current checkout. Historical binary dumps omitted to keep the archive manageable are explicitly listed with hashes in [omitted-artifacts.json](submission/omitted-artifacts.json); final Base64 differential buffers and all 292 proof-provenance artifacts are included.
