# DynamoDB Encryption SDK `3194054`: authenticated-attribute predicate

**Verdict: `EQUIV_PARTIAL`; whole commit unverified.** The exact [historical diff](source-scoped.diff) changes `StructuredEncryptionUtil.IsAuthAttr` from a disjunction of the three authenticated `CryptoAction` constructors to `!x.DO_NOTHING?`. The historical datatype has exactly four constructors. The [Dafny relation](auth_attr_equiv.dfy) copies that datatype and both predicate expressions, and proves equality for every constructor. The [recheck log](recheck.log) reports `1 verified, 0 errors`. The [source audit](../../../tools/screen_dynamodb_full.py) matches the model and changed diff lines to the pinned Git commit before retaining this partial verdict.

This proof covers only `IsAuthAttr`. The other changed production paths and whole-program behavior have not been compared, and no official before/after benchmark score was measured. Recheck the lemma from the project root with:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/3194054/auth_attr_equiv.dfy
```
