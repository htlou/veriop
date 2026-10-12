# zstd fixed sample: source-available performance commits

The fixed sample has 200 keyword candidates. Fifteen have all changed `lib/` source blobs locally available, and all fifteen have checker records. This directory preserves exact source diffs for twelve performance-motivated commits reviewed after the initial three. [`check_diffs.py`](check_diffs.py) checks every saved diff against Git. A pending checker entry is not an unverified or unsupported checker outcome.

| Commit | Change |
|---|---|
| [`007cda88ca1c`](007cda88ca1c.source.diff) | Compiler guard to avoid XXH64 AVX-512 autovectorization by default; checked, unsupported. |
| [`0c654d22c87a`](0c654d22c87a.source.diff) | Forces inlining of `ZSTD_BtFindBestMatch`. |
| [`0cf74fa95751`](0cf74fa95751.source.diff) | Removes one spare slot from pool allocations. |
| [`107c5755f426`](107c5755f426.source.diff) | Changes decompression and wild-copy paths; checked, full commit unknown. |
| [`4ddb1f556680`](4ddb1f556680.source.diff) | Reworks small-segment FSE counting; checked, public `FSE_count` output differs on empty input. |
| [`51f4d566c231`](51f4d566c231.source.diff) | Adds static default decode tables for small inputs. |
| [`5d39357bc4a0`](5d39357bc4a0.source.diff) | Changes long sequence-length bookkeeping; checked, one-sequence threshold projection equal. |
| [`5dc0a1d65921`](5dc0a1d65921.source.diff) | Adds an inline hint to `ZSTD_storeSeq`. |
| [`90a03a95a1a2`](90a03a95a1a2.source.diff) | Adds an inline hint and changes an error return from `GENERIC` to `corruption_detected`; its historical error-code header is unavailable locally. |
| [`b89e8c2aaf94`](b89e8c2aaf94.source.diff) | Skips the runtime BMI2 probe when BMI2 selection is compile-time fixed; checked, full commit unknown. |
| [`ef51941822eb`](ef51941822eb.source.diff) | Reworks the optimal parser; checked, literal-price helper locally equal. |
| [`f36da5b4d9f6`](f36da5b4d9f6.source.diff) | Restructures index reduction for autovectorization; checked, partial equivalence. |

This is an intent/source audit. It does not establish function equivalence, public API behavior, or an official performance delta.
