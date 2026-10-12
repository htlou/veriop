# Four-category historical optimization results

Partial or bounded equality evidence remains **unverified** for the full selected comparison. Verified labels apply only to each case's recorded observation and build configuration. A routing or scheduler-parameter counterexample does not establish different numerical outputs. Samples are reproducible seeded intent screens, mostly keyword-filtered rather than uniform draws from every historical optimization; only six repositories reached 200. See the [detailed report](CURRENT_OPTIMIZATION_STATUS.md) for proof scope and ledger status.

| Repo | Samples | Verified unequal (scoped) | Verified equal/refinement (scoped) | Unverified | Unsupported | Partial evidence within unverified | Ledger marked not run | Unsupported marked not run |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| [zstd](zstd-optimization-sample.json) | 200 | 4 | 0 | 195 | 1 | 7 | 184 | 0 |
| [xxHash](xxHash-optimization-sample.json) | 139 | 23 | 24 | 55 | 37 | 55 | 0 | 0 |
| [aws-lc](aws-lc-optimization-sample.json) | 200 | 1 | 0 | 95 | 104 | 0 | 199 | 104 |
| [fast_float](fast_float-optimization-sample.json) | 34 | 6 | 1 | 23 | 4 | 16 | 4 | 0 |
| [simdjson](simdjson-optimization-sample.json) | 117 | 2 | 0 | 110 | 5 | 4 | 111 | 5 |
| [SymCrypt](SymCrypt-partial.json) | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 |
| [rust-base64](rust-base64-optimization-sample.json) | 26 | 6 | 3 | 5 | 12 | 5 | 0 | 0 |
| [regex](regex-optimization-sample.json) | 116 | 2 | 2 | 111 | 1 | 2 | 106 | 0 |
| [v4-core](v4-core-optimization-sample.json) | 53 | 0 | 1 | 52 | 0 | 1 | 51 | 0 |
| [openzeppelin-contracts](openzeppelin-contracts-optimization-sample.json) | 106 | 0 | 1 | 103 | 2 | 1 | 104 | 2 |
| [hacl-star](hacl-star-optimization-sample.json) | 134 | 0 | 0 | 123 | 11 | 5 | 126 | 11 |
| [everparse](everparse-optimization-sample.json) | 89 | 0 | 0 | 64 | 25 | 1 | 84 | 23 |
| [aws-encryption-sdk](aws-encryption-sdk-optimization-sample.json) | 4 | 0 | 0 | 1 | 3 | 1 | 2 | 2 |
| [aws-database-encryption-sdk-dynamodb](aws-database-encryption-sdk-dynamodb-optimization-sample.json) | 11 | 1 | 0 | 8 | 2 | 6 | 2 | 1 |
| [compress](compress-optimization-sample.json) | 200 | 0 | 1 | 147 | 52 | 2 | 197 | 52 |
| [scion](scion-optimization-sample.json) | 23 | 4 | 0 | 17 | 2 | 1 | 16 | 0 |
| [RoaringBitmap](RoaringBitmap-optimization-sample.json) | 89 | 29 | 3 | 55 | 2 | 25 | 23 | 0 |
| [netty](netty-optimization-sample.json) | 200 | 3 | 0 | 145 | 52 | 2 | 195 | 52 |
| [s2n-bignum](s2n-bignum-optimization-sample.json) | 94 | 0 | 1 | 93 | 0 | 6 | 86 | 0 |
| [openssl](openssl-optimization-sample.json) | 200 | 4 | 0 | 72 | 124 | 0 | 196 | 124 |
| [evm-semantics](evm-semantics-optimization-sample.json) | 41 | 0 | 0 | 18 | 23 | 4 | 37 | 23 |
| [kontrol](kontrol-optimization-sample.json) | 13 | 1 | 0 | 9 | 3 | 0 | 9 | 0 |
| [llama.cpp](llama-optimization-sample.json) | 200 | 28 | 0 | 48 | 124 | 34 | 106 | 105 |
| [cutlass](cutlass-optimization-sample.json) | 43 | 0 | 0 | 33 | 10 | 0 | 42 | 9 |
| [flash-attention](flash-attention-optimization-sample.json) | 198 | 0 | 0 | 135 | 63 | 2 | 192 | 59 |
| **Total** | 2533 | 114 | 37 | 1717 | 665 | 180 | 2072 | 572 |

The ledgers mark 2072 selected cases `not_run`. Of the 665 `UNSUPPORTED` labels, 572 are marked `not_run` in the ledgers. Those are scope classifications, not checker rejection results; the other ledger status labels do not by themselves establish a checker run.
