# `ec22b7d`: `nat` to `uint64` migration

The pinned historical commit `ec22b7d316678f4d836837e751bdfcf41f461441` changes 14 Dafny files, including the production `StructuredEncryptionUtil.ConstantTimeCompare` helper. All 27 changed blob references in the selected source scope are locally available. The exact old/new helper diff is in [`source-scoped.diff`](source-scoped.diff).

**Selected label: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The local equality covers one function. [`compare_equiv.dfy`](compare_equiv.dfy) transcribes the old `nat` and new `uint64` cursor expressions, including the byte XOR and OR update. Dafny 4.10 proves their returned `bv8` values and the `ConstantTimeEquals` zero test equal for every pair of equal-length byte sequences whose length is below `2^64` (`dafny.log`: `8 verified, 0 errors`). The length bound makes the new cast and increment defined and represents the condition assumed by the new source's `SequenceIsSafeBecauseItIsInMemory` lemma. The standalone model does not replay the full dependency graph or prove the other 13 changed files. It also does not prove timing behavior despite the helper name.

Reproduce from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/ec22b7d/compare_equiv.dfy
```

No official before/after benchmark score is established for this historical commit.
