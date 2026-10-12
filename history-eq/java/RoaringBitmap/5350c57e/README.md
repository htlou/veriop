# RoaringBitmap `5350c57e`: rank cache survives inherited deserialization

Commit `5350c57e1990d48fa24f5bdcbe736c1c6b9acdd4` adds `FastRankRoaringBitmap`, which caches cumulative container cardinalities for `rankLong`. It overrides the ordinary add/remove operations to invalidate the cache but does not override `deserialize(DataInput)`. The unchanged parent `RoaringBitmap.deserialize` delegates directly to `highLowContainer.deserialize(in)` and overwrites the bitmap.

**Commit-level verdict: `UNKNOWN`; source-mapped model suggests a regression after deserialization.** [`check_cache.py`](check_cache.py) extracts and compiles the exact historical parent `rankLong` and `deserialize` method bodies and the child cache fields, `preComputeCardinalities`, and `rankLong` method bodies. The support model has two containers with keys 0 and 1. It changes their cardinalities from `[2, 1]` to `[1, 1]` through the inherited `deserialize` call. The [run](result.json) gives:

```text
before=3/3  (base/fast)
after=2/3   (base/fast)
```

The second model result differs because the fast class still uses the cached first-container cardinality 2. In the real source, `rankLong(65536)` adds that cached count to the second container's rank. The exact historical `RoaringArray.deserialize` dependency is missing locally, so the modeled post-deserialization state has not been shown reachable by running the complete historical library. This is **not yet a verified historical-program inequality or a KeY proof**. Other `FastRankRoaringBitmap` operations and official benchmark scores remain unchecked.

Reproduce from the project root: `python3 history-eq/java/RoaringBitmap/5350c57e/check_cache.py`.
