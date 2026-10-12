# RoaringBitmap `b2ad9b33`: aggregation-buffer behavior

The [historical diff](source.diff) moves calls with three through ten bitmaps from `workShyAnd` to `naive_and`. The [reproducer](run_native.py) checks the Git blob ID for each exact historical `FastAggregation.java`, compiles both files against the **same** built RoaringBitmap dependency JAR, and calls the public `and(long[], RoaringBitmap...)` method with three empty bitmaps.

The [native result](native-result.json) gives two concrete counterexamples. With a 1024-element caller-owned buffer containing `7` at index 17, both versions return an empty bitmap, but the old version clears that element to `0` in its `finally` block and the new version leaves it `7`. With a one-element buffer, the old version throws `IllegalArgumentException` and the new version returns normally. The first example has the old branch's required 1024-element buffer; because the inputs are empty, `workShyAnd` returns before inspecting any buffer word.

**Verdict: `NOT_EQUIV` for the caller-visible behavior of this public method.** The changed buffer counterpart, nonempty intersections, and the complete historical library have not been checked. This is a native counterexample from exact changed source, not a KeY proof; the unchanged dependencies come from the current built JAR because their historical blobs are unavailable locally. No official historical before/after benchmark score was measured.

Reproduce from the project root with `python3 -B history-eq/java/RoaringBitmap/b2ad9b33/run_native.py`.
