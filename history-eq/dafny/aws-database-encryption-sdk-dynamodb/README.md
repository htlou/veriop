# DynamoDB Encryption SDK historical optimization checks

Pinned repository: `96d6132720b8014b8c28a051e3e7cd953d0c41bd`. The fixed-seed keyword sample contains 29 candidates. The [screening ledger](../../results/aws-database-encryption-sdk-dynamodb-pinned-sample-audit.json) records 8 confirmed runtime performance changes and 21 excluded non-optimizations. All 8 confirmed changes have a checker result. A [complete source-history intent screen](full-source-screening.md) adds three performance changes, making an [11-commit optimization sample](../../results/aws-database-encryption-sdk-dynamodb-optimization-sample.json). The new `ec22b7d3` case has a [one-function Dafny equality proof](ec22b7d/README.md); its whole commit remains unverified. The Rust `162c86c9` case is documented [separately](../../rust/aws-database-encryption-sdk-dynamodb/162c86c9/README.md). The last ambiguous refactor, `187e5fc8`, was [described upstream](https://github.com/aws/aws-database-encryption-sdk-dynamodb/pull/117) as a Dafny CI/compilation workaround and is excluded from runtime performance commits.

| Commit | Checked scope | Selected label; whole-commit status |
|---|---|---|
| `3194054eea95c640d0ac469911e950fc76953dd6` | `StructuredEncryptionUtil.IsAuthAttr` predicate | **EQUIV_PARTIAL**; whole commit unproved ([evidence](3194054/README.md)) |
| `ccf61d6a9c49385f1cccde0cda9c0609ba050455` | New `DynamoToStruct` `by method` implementations | **UNKNOWN**; 10 trusted equality assumptions prevent a verified implementation-to-spec relation |
| `eb7679afa9fb6383a76fd71f9e7a4e40bbe53c8a` | `DynamoDBSupport.IsWriteable` on a one-reserved-key item | **VERIFIED DIFFERENT locally**; old failure message has no trailing newline, new one does ([evidence](eb7679af/README.md)) |
| `e983f8ff465ca6c5f5dd4583f5f66fee320e1ef7` | Three `DynamoToStruct` map-view expressions | **EQUIV_PARTIAL**; whole commit unproved ([evidence](e983f8ff/README.md)) |
| `8b710042e1bc0516b70a9f9674edab7f775d236f` | `ExtractAttributes2` and `RemoveCommonPrefix` slice-to-cursor rewrites | **EQUIV_PARTIAL**; whole commit unproved ([evidence](8b710042/README.md)) |
| `8ca288345fe7371711c1c51e1d064538686e25f1` | `UnicodeLess` slice-to-cursor rewrite | **EQUIV_PARTIAL**; whole commit unproved ([evidence](8ca28834/README.md)) |
| `ea9469327109a61e544425479dfb2c6be514ce5a` | cache TTL comparison and saturated addition | **EQUIV_PARTIAL** for cache TTL predicate; whole commit unknown because saturation cast violates the pinned `int64` bound ([evidence](ea946932/README.md)) |
| `ec22b7d316678f4d836837e751bdfcf41f461441` | `ConstantTimeCompare` returned value and zero test | **EQUIV_PARTIAL** under the `uint64` length bound; whole commit unproved ([evidence](ec22b7d/README.md)) |

For `3194054`, `commit-stat.txt` records seven changed files, including production Dafny code. `source-scoped.diff` records the exact `IsAuthAttr` rewrite: the old test lists the three authenticated `CryptoAction` constructors, while the new test rejects only `DO_NOTHING`. The historical datatype has exactly those four constructors. `auth_attr_equiv.dfy` copies that datatype and the two expressions; Dafny 4.10 proves their equality for every constructor (`dafny.log`: `1 verified, 0 errors`). This is a local result, not a proof of the other edits in the commit.

For `ccf61d6`, `source.diff` contains the entire two-file commit change. New iterative implementations of `ItemToStructured2`, `StructuredToItemEncrypt`, `StructuredToItemDecrypt`, and `MapAttrToBytes` use ten `assume {:axiom}` statements that equate computed results with their specification functions. Those equalities are obligations the optimization needs, but the source assumes them. `axiom_control.dfy` demonstrates the trust effect: Dafny accepts an intentionally wrong `by method` that returns 1 for a function specified to return 0 (`axiom_control.log`: `1 verified, 0 errors`). Removing that assumption makes the same obligation fail (`axiom_removed_control.log`: `0 verified, 1 error`). The control diagnoses the verification pattern; it is not a counterexample to the historical SDK's runtime output. The commit also updates the `MaterialProviders` submodule, which has not been compared across revisions.

Reproduce the local checks from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/3194054/auth_attr_equiv.dfy
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/ccf61d6/axiom_control.dfy
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/ccf61d6/axiom_removed_control.dfy
```

No official before/after benchmark score is attached to these historical commits. The pinned repository's official Rust quick suite is a baseline readiness check, not a delta for them.
