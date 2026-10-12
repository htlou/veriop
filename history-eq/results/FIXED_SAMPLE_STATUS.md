# Fixed-sample status across the 25 pinned repositories

The deterministic `veriop-history-v1` sample has 3,359 **keyword candidates**, not confirmed optimizations. Local Git stores contain every changed source blob by exact Git object ID for 653 candidates; 2,706 have at least one changed blob missing. This includes `history-eq/repos/xxHash` and `history-eq/repos/rust-base64` at the pinned HEADs, plus exact matching blobs in `cuda/repos/llama.cpp` at a different HEAD. An [exact-ID cross-check](pinned-archive-blob-crosscheck.json) of 102,486 archived files recovered 5 of the 25,425 missing Git blobs, completing 3 additional candidates. Source absence is a coverage issue, not a checker verdict.

25 repositories have per-commit ledgers covering every sampled keyword candidate. These tracking records include pending states; they do not mean all candidates have been screened or checked. A dash means no auditable fixed-sample count, not zero. Full means complete coverage within the recorded checker scope and configuration, not necessarily every platform or the whole library. Equal/refine partial includes bounded or local proofs and does not certify the whole commit.

Within the 25 ledgered repositories, 1445 candidates are confirmed optimizations and 1445 have assigned outcome labels: 83 unequal, 12 full equal/refine, 113 partial/bounded equal/refine, 863 unverified, and 374 unsupported. Another 0 confirmed optimizations have no outcome label; 0 sampled candidates still await intent screening.

| Repository | Sample | Blobs here | Confirmed | Labeled | Unequal | Equal/refine full | Equal/refine partial | Unverified | Unsupported | Label pending | Intent pending |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| [zstd](zstd-pinned-sample-audit.json) | 200 | 15 | 106 | 106 | 3 | 0 | 7 | 95 | 1 | 0 | 0 |
| [xxHash](xxHash-pinned-sample-audit.json) | 173 | 173 | 94 | 94 | 17 | 9 | 27 | 22 | 19 | 0 | 0 |
| [aws-lc](aws-lc-pinned-sample-audit.json) | 200 | 1 | 56 | 56 | 1 | 0 | 0 | 27 | 28 | 0 | 0 |
| [fast_float](fast_float-pinned-sample-audit.json) | 66 | 40 | 29 | 29 | 6 | 0 | 14 | 5 | 4 | 0 | 0 |
| [simdjson](simdjson-pinned-sample-audit.json) | 200 | 5 | 55 | 55 | 2 | 0 | 4 | 44 | 5 | 0 | 0 |
| [SymCrypt](SymCrypt-pinned-sample-audit.json) | 11 | 3 | 2 | 2 | 0 | 0 | 0 | 0 | 2 | 0 | 0 |
| [rust-base64](rust-base64-pinned-sample-audit.json) | 41 | 41 | 16 | 16 | 0 | 0 | 0 | 0 | 16 | 0 | 0 |
| [regex](regex-pinned-sample-audit.json) | 162 | 8 | 92 | 92 | 1 | 0 | 1 | 89 | 1 | 0 | 0 |
| [v4-core](v4-core-pinned-sample-audit.json) | 82 | 2 | 47 | 47 | 0 | 1 | 1 | 45 | 0 | 0 | 0 |
| [openzeppelin-contracts](openzeppelin-contracts-pinned-sample-audit.json) | 200 | 2 | 60 | 60 | 0 | 1 | 1 | 56 | 2 | 0 | 0 |
| [hacl-star](hacl-star-pinned-sample-audit.json) | 200 | 9 | 77 | 77 | 0 | 0 | 3 | 67 | 7 | 0 | 0 |
| [everparse](everparse-pinned-sample-audit.json) | 200 | 8 | 41 | 41 | 0 | 0 | 1 | 27 | 13 | 0 | 0 |
| [aws-encryption-sdk](aws-encryption-sdk-pinned-sample-audit.json) | 7 | 7 | 2 | 2 | 0 | 0 | 0 | 0 | 2 | 0 | 0 |
| [aws-database-encryption-sdk-dynamodb](aws-database-encryption-sdk-dynamodb-pinned-sample-audit.json) | 29 | 13 | 8 | 8 | 1 | 0 | 0 | 6 | 1 | 0 | 0 |
| [compress](compress-pinned-sample-audit.json) | 200 | 3 | 155 | 155 | 0 | 0 | 1 | 120 | 34 | 0 | 0 |
| [scion](scion-pinned-sample-audit.json) | 52 | 5 | 18 | 18 | 4 | 0 | 1 | 11 | 2 | 0 | 0 |
| [RoaringBitmap](RoaringBitmap-pinned-sample-audit.json) | 88 | 87 | 60 | 60 | 25 | 0 | 24 | 9 | 2 | 0 | 0 |
| [netty](netty-pinned-sample-audit.json) | 200 | 6 | 115 | 115 | 3 | 0 | 2 | 62 | 48 | 0 | 0 |
| [s2n-bignum](s2n-bignum-pinned-sample-audit.json) | 200 | 8 | 80 | 80 | 0 | 1 | 6 | 73 | 0 | 0 | 0 |
| [openssl](openssl-pinned-sample-audit.json) | 200 | 2 | 47 | 47 | 2 | 0 | 0 | 17 | 28 | 0 | 0 |
| [evm-semantics](evm-semantics-pinned-sample-audit.json) | 152 | 4 | 40 | 40 | 0 | 0 | 4 | 14 | 22 | 0 | 0 |
| [kontrol](kontrol-pinned-sample-audit.json) | 70 | 4 | 12 | 12 | 0 | 0 | 0 | 9 | 3 | 0 | 0 |
| [llama.cpp](llama.cpp-pinned-sample-audit.json) | 200 | 196 | 136 | 136 | 18 | 0 | 14 | 3 | 101 | 0 | 0 |
| [cutlass](cutlass-pinned-sample-audit.json) | 47 | 2 | 25 | 25 | 0 | 0 | 0 | 24 | 1 | 0 | 0 |
| [flash-attention](flash-attention-pinned-sample-audit.json) | 179 | 9 | 72 | 72 | 0 | 0 | 2 | 38 | 32 | 0 | 0 |

Counts refer to sampled commits, not proof units. An `UNKNOWN` label can mean missing exact historical source, timeout, or another incomplete check; it does not imply that a checker ran. Unequal and equal/refine verdicts can be scoped to an API, helper, specialization, or precondition; read each per-commit record before treating one as a whole-program result. Missing source alone never establishes equality, inequality, or checker rejection.

Run `python3 history-eq/tools/render_fixed_sample_status.py` from the project root to revalidate the sample, availability, and ledger commit sets and regenerate this table and [JSON](FIXED_SAMPLE_STATUS.json).
