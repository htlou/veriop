# Verified optimization evidence

Source and evidence snapshot submitted 2026-10-02. Both language branches contain original sources, optimized implementations, raw benchmark results, proof inputs, checker output, and reproduction scripts.

| Branch | Targets | Current result |
|---|---|---|
| [c](https://github.com/htlou/veriop/tree/c) | libdivide / xxHash, Alive2 | libdivide LLVM candidate: 2.462× u32 / 2.470× u64 on official varying-divisor workloads; separate C header candidate: 2.487× / 2.229×. xxHash: 1.34–1.36× one-byte official CLI throughput; full sweep 1.006×. |
| [rust](https://github.com/htlou/veriop/tree/rust) | rust-base64 / lz4_flex, Aeneas + Lean | Base64: 2.034× aggregate over 8 official encode_slice workloads, with complete extracted public API equivalence. LZ4 has no repeatable 2× gain or full block proof. |

Each branch has a submission guide distinguishing accepted proofs, experimental artifacts, and incomplete work. Performance claims are workload-specific. Aeneas proves equivalence of extracted Lean programs; Alive2 checks the scoped LLVM functions. Neither certifies the complete native compiler pipeline. The C branch's fastest libdivide candidate is an LLVM rewrite, not a replacement C header.

Existing measurements are preserved; this submission does not claim a fresh benchmark run. Credentials and local toolchain caches are excluded.
