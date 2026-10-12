# `ea946932`: cache TTL arithmetic

The sampled performance commit `ea9469327109a61e544425479dfb2c6be514ce5a` rewrites cache TTL arithmetic among many other Dafny changes. **Selected label: `EQUIV_PARTIAL` for `cacheEntryWithinLimits`; whole-commit verdict: `UNKNOWN`.** The new `PosLongAdd` saturation branch still fails a type-bound verification obligation.

[`source-scoped.diff`](source-scoped.diff) records the historical `SearchInfo.dfy` edits. Both revisions pin `smithy-dafny` to `2f83e28ad9532b24c93d2229476c9a268355d338`, where `INT64_MAX_LIMIT = 2^63` and `int64` requires values strictly less than that limit. Both pin `MaterialProviders` to `515995e68400e56fc720412fe355e6965715136e`, where `PositiveLong` is a nonnegative `int64` subset.

[`within_equiv.dfy`](within_equiv.dfy) isolates the source-mapped predicate and pinned bounds without the failing addition branch. Dafny 4.10 [fully verifies it](recheck.log): 6 verified, 0 errors, proving the old/new `cacheEntryWithinLimits` predicates equal for every valid `creationTime`, `now`, and TTL. It also [proves](overflow-witness.log) that `x=2^63−1, y=1` enters `PosLongAdd`'s saturation branch. The [full local verification](dafny.log) then reports `7 verified, 1 error`: casting `INT64_MAX_LIMIT` to `PositiveLong` might violate the `int64` bound. The old call site had `expect now < INT64_MAX - cacheTTL`; that expectation is false for this boundary input. These observations identify a proof/type boundary, not a validated runtime output for the complete SDK.

Reproduce from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/ea946932/within_equiv.dfy
benchmarks/tools/dafny-4.10.0/dafny/dafny verify --filter-symbol=TtlLocal.OverflowWitness history-eq/dafny/aws-database-encryption-sdk-dynamodb/ea946932/ttl_local.dfy
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/ea946932/ttl_local.dfy
```

No official before/after benchmark score has been measured for this historical commit.
