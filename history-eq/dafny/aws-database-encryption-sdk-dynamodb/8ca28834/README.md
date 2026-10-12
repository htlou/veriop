# `8ca28834`: `UnicodeLess` slice-to-cursor rewrite

The sampled performance commit `8ca288345fe7371711c1c51e1d064538686e25f1` changes many Dafny modules. **Selected label: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** Its sole `FilterExpr.dfy` change rewrites `UnicodeLess` from recursive suffix slicing to a cursor; that helper change is proved equal for every pair of strings.

[`source-scoped.diff`](source-scoped.diff) records the historical helper change. [`unicode_less_equiv.dfy`](unicode_less_equiv.dfy) copies both branch structures, quantifies over any shared `IsHighSurrogate` predicate, and proves by induction that the old suffix call equals the new cursor call. This covers all string pairs and does not rely on a particular surrogate implementation. [Dafny 4.10](dafny.log) reports `6 verified, 0 errors`.

The other changed functions and modules in this commit remain unproved; no official before/after benchmark score has been measured. Reproduce from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/8ca28834/unicode_less_equiv.dfy
```
