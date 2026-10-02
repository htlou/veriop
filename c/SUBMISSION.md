# C / LLVM / Alive2 submission

This directory contains pinned original C/C++ library sources, optimized C and LLVM implementations, recorded benchmark results, actual checked IR, Alive2 output, negative controls, and reproduction scripts. Snapshot: 2026-10-02. Historical failed attempts remain labeled as experiments.

## Implementations and evidence

| Target | Original | Optimized | Performance and proof |
|---|---|---|---|
| libdivide C header candidate | [upstream libdivide.h](repos/libdivide/libdivide.h) | [complete hybrid header](results/search/libdivide_hybrid/libdivide.h), [patch](patches/libdivide-hybrid.patch) | [status](results/search/libdivide_hybrid/status.json), [official benchmark results](results/search/libdivide_hybrid/bench/summary.json), [raw runs](results/search/libdivide_hybrid/bench/raw.json), [patched-header proof](results/search/libdivide_hybrid/patch-proof.log) |
| libdivide latest LLVM candidate | [original IR](results/search/libdivide_poisoncount/old.ll) | [optimized IR](results/search/libdivide_poisoncount/new.ll), [rewrite script](try-poisoncount.py) | [status](results/search/libdivide_poisoncount/status.json), [official benchmark results](results/search/libdivide_poisoncount/bench/summary.json), [raw runs](results/search/libdivide_poisoncount/bench/raw.json), [bidirectional proof](results/search/libdivide_poisoncount/proof.log) |
| xxHash short-input LLVM candidate | [complete upstream library](repos/xxHash), [original IR](results/search/xxhash_lookup_remap/old.ll) | [optimized IR](results/search/xxhash_lookup_remap/new.ll), [rewrite script](remap-lookup-switch.py) | [status](results/search/xxhash_lookup_remap/status.json), [official CLI sweep](results/search/xxhash_lookup_remap/bench-cli/summary.json), [raw sweep](results/search/xxhash_lookup_remap/bench-cli/raw.json), [confirmation](results/search/xxhash_lookup_remap/bench-cli-confirm/summary.json), [exhaustive length proof](results/search/xxhash_lookup_remap/length-proof/summary.json) |

The libdivide LLVM candidate measures **2.462× u32 / 2.470× u64** on the unchanged official varying-divisor benchmark (five paired runs). The separate C header candidate measures **2.487× / 2.229×** in its own series. These are separate recorded runs; the LLVM candidate's five paired direct comparisons with the header hybrid measure **1.242× / 1.187×**. Fixed-divisor sweeps use an adapted driver and contain regressions. No universal 2× claim is made. The fastest LLVM rewrite is **not** represented as a replacement C header.

xxHash measures **1.340–1.355× one-byte throughput** in the five-pair official CLI confirmation, and **1.732× one-byte latency** in the custom driver. The full official CLI sweep median is **1.006×**; the overall 2× objective is unmet. Later repeated timings and load diagnostics are also preserved under `bench-*-usage` and [usage-status.json](results/search/xxhash_lookup_remap/usage-status.json).

## Equivalence scope

Alive2 checks both directions with `--bidirectional --always-verify --fail-src-ub`. Libdivide checks both complete unsigned raw helpers with arbitrary numerators, magic values and metadata, preserving the original definedness domain. The compiled hybrid-header wrappers are checked separately.

xxHash's accepted evidence is the **20 exhaustive bidirectional length checks** under `length-proof/`, covering lengths 0–16 for the dispatcher and 1–3 for the modified helper. All other values and memory remain symbolic. The earlier whole-range attempt in `trial.json` is unaccepted; its failure is retained and does not replace the successful partitioned proof. Partition generation is an additional trusted component. This does not prove arbitrary-length XXH3 or the native compiler pipeline. The accepted results use the unmodified pinned Alive2 checker; experimental checker variants are separate.

Original/optimized IR, objects, measured binaries, raw process output, assembly audits, source pins, hashes, and negative-control logs are retained. See [full experiment report](README.md), [repository pins](repos.lock.json), [toolchain package pins](toolchain/packages.lock.json), and [submission audit](submission/audit.json).

## Checking this submission

```bash
python3 c/submission/verify-artifacts.py
python3 c/submission/audit-evidence.py
# Restore upstream metadata, then install/build the pinned tools.
python3 c/submission/restore-upstreams.py
bash c/setup.sh
source c/env.sh
# Fresh complete libdivide LLVM equivalence check:
c/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=30000   c/results/search/libdivide_poisoncount/old.ll   c/results/search/libdivide_poisoncount/new.ll
# Fresh exhaustive xxHash length check using the archived partitions:
c/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=120000   c/results/search/xxhash_lookup_remap/length-proof/old.ll   c/results/search/xxhash_lookup_remap/length-proof/new.ll
```

Require the expected 2 and 20 explicit bidirectional equivalence confirmations with zero failures/errors/timeouts; exit status alone is insufficient. Setup prerequisites and benchmark commands are in [c/README.md](README.md). Use new output labels for reruns to preserve archived measurements, and choose an available CPU. Some historical audit commands contain original absolute paths; use paths in this checkout when replaying. Nested upstream metadata is restored without changing the archived source files. No SSH keys or installed toolchain caches are included.
