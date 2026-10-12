# RoaringBitmap `418a2929`: remove a redundant ART field write

The commit changes only `Node16.java`, deleting the first `firstV = LongUtils.fromBDBytes(bytes)` in `Node16.insert` when `count < 8`. [`check_source.py`](check_source.py) locks both historical files to their Git object IDs and confirms that this one line is the complete difference. Between the deleted write and the unchanged final write, the code changes only `children` and `count` and calls `sortSmallByteArray` on the local byte array and child array. The unchanged sorter does not read `firstV`; the unchanged `fromBDBytes` helper only reads all eight bytes and performs integer operations. The source hashes and exact diff are saved in [`source-audit.json`](source-audit.json) and [`source.diff`](source.diff).

[KeY 3.0.0](FirstVRelation.java) proves that an arbitrary value written before the common sort result and then overwritten yields the same final `firstV` as writing only that common result. The [checker log](key.log) reports **0 open goals** and `Proved`. The exact one-line source difference means every other field, child-array cell, and returned node follows the same statements on both sides; the removed computation has no side effect or read by the intervening statements. Together these establish the same entire returned node state for normally completing, single-threaded calls, including the unchanged `count >= 8` branches. [The reproducible result](dead-store-result.json) binds the source audit, KeY model, log, and proof by hash. **Verdict: scoped `EQUIV`.** Exceptional execution, concurrent or reflective observation, and a full historical dependency build are not proved. No official before/after benchmark score was measured.

Reproduce from the project root with:

```sh
python3 -B history-eq/java/RoaringBitmap/418a2929/verify_dead_store.py
```
