# `e983f8ff`: map-view rewrites

The sampled performance commit `e983f8ff465ca6c5f5dd4583f5f66fee320e1ef7` changes seven production Dafny files. **Selected label: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** Three pure rewrites in `DynamoToStruct.dfy` are proved equal, but this does not cover the rewritten `CryptList`, the changed attribute-validation traversal, or the other edits.

[`source-scoped.diff`](source-scoped.diff) records the exact historical changes. [`map_views_equiv.dfy`](map_views_equiv.dfy) copies the old and new `FlattenValueMap`, `FlattenErrors`, and all-success expressions using a generic `Result` datatype. Its lemma proves the three pairs equal for every finite map with equality-supporting key and value types. Dafny 4.10 reports [`6 verified, 0 errors`](dafny.log). The proof is about these source-audited expressions; it does not model surrounding SDK behavior or prove a performance improvement.

Reproduce from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/e983f8ff/map_views_equiv.dfy
```

No official before/after benchmark score has been measured for this historical commit.
