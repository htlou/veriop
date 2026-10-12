# Fixed-sample audits for three small repositories

Each row counts the deterministic `veriop-history-v1` keyword sample at its pinned SHA. A keyword hit is screened before receiving a checker verdict; excluded items are not counted as `unsupported`.

| Repository | Sampled candidates | Confirmed optimizations | Non-optimization exclusions | Verified unequal | Equal/refinement | Unverified | Unsupported |
|---|---:|---:|---:|---:|---:|---:|---:|
| [rust-base64](rust-base64-pinned-sample-audit.json) | 41 | 16 | 25 | 0 | 0 | 0 | 16 |
| [SymCrypt/SymCRust](SymCrypt-pinned-sample-audit.json) | 11 | 2 | 9 | 0 | 0 | 0 | 2 |
| [aws-encryption-sdk](aws-encryption-sdk-pinned-sample-audit.json) | 7 | 2 | 5 | 0 | 0 | 0 | 2 |

The broader rust-base64 audit found 25 performance commits, including nine outside the fixed keyword sample; its two successful equal/refinement checks are among those nine. All 17 SymCRust source commits were screened, finding three production performance changes; one was outside the fixed sample. [All 138 AWS Encryption SDK source commits were screened](../dafny/aws-encryption-sdk/full-source-screening.md), finding four identified runtime optimizations, two outside the fixed keyword sample. The [four-commit optimization sample](aws-encryption-sdk-optimization-sample.json) has one unverified and three unsupported whole-commit results; local Dafny checks do not change those whole-commit verdicts.
