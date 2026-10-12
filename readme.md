# Verified optimization: C and Rust

Original implementations, optimized code, benchmark evidence, and formal equivalence checks are together in this project.

```text
c/          C/LLVM implementations, Alive2 checks, and benchmark results
  SUBMISSION.md
  submission/   artifact audits and reproduction helpers
aeneas/     Rust implementations, Aeneas models, Lean proofs, and benchmarks
  SUBMISSION.md
  submission/   artifact audits and reproduction helpers
benchmarks/ 25 pinned upstream targets: native benchmark gates and checker gates
history-eq/ historical performance commits checked against each repo's checker
cuda/       llama.cpp RMSNorm candidates checked with Volta (PTX)
compcert/   CompCert layout (C1) and CFG-cloning (C2) experiments
docs/       project proposal
volta-logs/ Volta parse logs
readme.md   this index
```

Upstream clones, worktrees, toolchains, build outputs, Lean build artifacts, LLBC files and
files over 5 MiB are not included; `benchmarks/targets.tsv` and each directory's pins
record how to re-fetch them.

| Target | Measured result | Verification |
|---|---|---|
| libdivide LLVM rewrite | 2.462× u32 / 2.470× u64 on official varying-divisor workloads | Complete bidirectional Alive2 checks for the two raw helpers |
| libdivide C header candidate | 2.487× / 2.229× in its separate benchmark series | Separately compiled header wrappers checked with Alive2 |
| xxHash short inputs | 1.34–1.36× one-byte official CLI throughput; full sweep median 1.006× | 20 exhaustive bidirectional length checks, scoped to short inputs |
| Rust Base64 | 2.034× aggregate over 8 official encode_slice workloads, 4 rounds | Complete extracted public API equivalence via Aeneas and Lean |
| Rust LZ4 | No repeatable 2× result | Copy-helper proof only; full block equivalence unfinished |

Start with the **[C submission guide](c/SUBMISSION.md)** or **[Rust/Aeneas submission guide](aeneas/SUBMISSION.md)** for direct links to previous code, optimized implementations, raw benchmark samples, exact proof inputs, checker logs, and reproduction commands. Performance claims are workload-specific; compiler pipelines are not formally certified. The fastest libdivide LLVM rewrite is distinct from the separately verified C header.

From the project root, check the preserved artifacts and recompute the recorded timing summaries:

```bash
python3 c/submission/verify-artifacts.py
python3 c/submission/audit-evidence.py
python3 aeneas/submission/verify-artifacts.py
python3 aeneas/submission/audit-evidence.py
```

These commands audit saved evidence; they do not run new benchmarks or equivalence proofs. The language guides contain proof-replay instructions and document incomplete results. Historical logs preserve their original paths (`alive2/` is now `c/`). Original evidence bytes and Rust's 292-file proof-provenance manifest are preserved.

The original separate [c](https://github.com/htlou/veriop/tree/c) and [rust](https://github.com/htlou/veriop/tree/rust) branch snapshots remain available. This combined layout is on `main`.
