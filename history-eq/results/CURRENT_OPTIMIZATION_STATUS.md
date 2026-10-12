# Current historical-optimization results across 25 repositories

These are **selected, confirmed optimization-intent commits**, not all keyword candidates or all intents found outside the samples. 6 repositories currently have 200 selected optimizations. Most selection is seeded within the performance-keyword population after intent screening; regex additionally screens all nonkeyword source commits. Smaller histories are not padded to 200.

Every `≢` or `≡/⊑` label has its recorded program scope and build configuration. `Full` means full coverage within that scope, not necessarily every platform or the whole library. `UNKNOWN` includes missing-source cases where the checker was never run; `UNSUPPORTED` can be a source/scope classification. The last three columns reproduce ledger status labels, **not actual checker-run counts**: some older ledgers mark a metadata/scope classification `checked` without invoking the checker. `Unrecorded` does not establish execution or nonexecution.

A scoped `≢` result for a routing decision or scheduler parameter is not a counterexample to numerical output equality.

| Repo | Basis | Optimizations | ≢ scoped | ≡/⊑ full | ≡/⊑ partial/bounded | Unknown | Unsupported | Marked checked | Marked not run | Unrecorded |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| [zstd](zstd-optimization-sample.json) | optimization sample | 200 | 4 | 0 | 7 | 188 | 1 | 12 | 184 | 4 |
| [xxHash](xxHash-optimization-sample.json) | optimization sample | 139 | 23 | 24 | 55 | 0 | 37 | 139 | 0 | 0 |
| [aws-lc](aws-lc-optimization-sample.json) | optimization sample | 200 | 1 | 0 | 0 | 95 | 104 | 1 | 199 | 0 |
| [fast_float](fast_float-optimization-sample.json) | optimization sample | 34 | 6 | 1 | 16 | 7 | 4 | 30 | 4 | 0 |
| [simdjson](simdjson-optimization-sample.json) | optimization sample | 117 | 2 | 0 | 4 | 106 | 5 | 6 | 111 | 0 |
| [SymCrypt](SymCrypt-partial.json) | complete 17-source-commit screen | 3 | 0 | 0 | 0 | 0 | 3 | 0 | 0 | 3 |
| [rust-base64](rust-base64-optimization-sample.json) | optimization sample | 26 | 6 | 3 | 5 | 0 | 12 | 26 | 0 | 0 |
| [regex](regex-optimization-sample.json) | optimization sample | 116 | 2 | 2 | 2 | 109 | 1 | 8 | 106 | 2 |
| [v4-core](v4-core-optimization-sample.json) | optimization sample | 53 | 0 | 1 | 1 | 51 | 0 | 2 | 51 | 0 |
| [openzeppelin-contracts](openzeppelin-contracts-optimization-sample.json) | optimization sample | 106 | 0 | 1 | 1 | 102 | 2 | 2 | 104 | 0 |
| [hacl-star](hacl-star-optimization-sample.json) | optimization sample | 134 | 0 | 0 | 5 | 118 | 11 | 8 | 126 | 0 |
| [everparse](everparse-optimization-sample.json) | optimization sample | 89 | 0 | 0 | 1 | 63 | 25 | 5 | 84 | 0 |
| [aws-encryption-sdk](aws-encryption-sdk-optimization-sample.json) | optimization sample | 4 | 0 | 0 | 1 | 0 | 3 | 2 | 2 | 0 |
| [aws-database-encryption-sdk-dynamodb](aws-database-encryption-sdk-dynamodb-optimization-sample.json) | optimization sample | 11 | 1 | 0 | 6 | 2 | 2 | 9 | 2 | 0 |
| [compress](compress-optimization-sample.json) | optimization sample | 200 | 0 | 1 | 2 | 145 | 52 | 3 | 197 | 0 |
| [scion](scion-optimization-sample.json) | optimization sample | 23 | 4 | 0 | 1 | 16 | 2 | 7 | 16 | 0 |
| [RoaringBitmap](RoaringBitmap-optimization-sample.json) | optimization sample | 89 | 29 | 3 | 25 | 30 | 2 | 61 | 23 | 5 |
| [netty](netty-optimization-sample.json) | optimization sample | 200 | 3 | 0 | 2 | 143 | 52 | 5 | 195 | 0 |
| [s2n-bignum](s2n-bignum-optimization-sample.json) | optimization sample | 94 | 0 | 1 | 6 | 87 | 0 | 8 | 86 | 0 |
| [openssl](openssl-optimization-sample.json) | optimization sample | 200 | 4 | 0 | 0 | 72 | 124 | 4 | 196 | 0 |
| [evm-semantics](evm-semantics-optimization-sample.json) | optimization sample | 41 | 0 | 0 | 4 | 14 | 23 | 4 | 37 | 0 |
| [kontrol](kontrol-optimization-sample.json) | optimization sample | 13 | 1 | 0 | 0 | 9 | 3 | 4 | 9 | 0 |
| [llama.cpp](llama-optimization-sample.json) | optimization sample | 200 | 28 | 0 | 34 | 14 | 124 | 94 | 106 | 0 |
| [cutlass](cutlass-optimization-sample.json) | optimization sample | 43 | 0 | 0 | 0 | 33 | 10 | 1 | 42 | 0 |
| [flash-attention](flash-attention-optimization-sample.json) | optimization sample | 198 | 0 | 0 | 2 | 133 | 63 | 6 | 192 | 0 |
| **Total** | | 2533 | 114 | 37 | 180 | 1537 | 665 | 447 | 2072 | 14 |

The [four-category report](FOUR_CATEGORY_STATUS.md) counts partial/bounded evidence as unverified. Source: [machine-readable rows](CURRENT_OPTIMIZATION_STATUS.json). The [sampling and source audit](SOURCE_AND_SAMPLING_COVERAGE.md) explains the draw and not-run coverage; the original [fixed-sample status](FIXED_SAMPLE_STATUS.md) counts keyword candidates before this optimization-only selection; the [progress log](PINNED_PROGRESS.md) records proof scope and individual cases.
