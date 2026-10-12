# RoaringBitmap `75a97ad1`: `RoaringBitSet.get(fromIndex, toIndex)`

**Whole-historical-commit verdict: UNKNOWN.** The exact [historical diff](source.diff) replaces `BitSetUtil.bitsetOf(roaringBitmap).get(fromIndex, toIndex)` followed by conversion back with `RoaringBitmap.bitmapOfRange(fromIndex, toIndex)`, intersection, and a negative offset. [`materialize.py`](materialize.py) archives both exact changed `RoaringBitSet` classes and the unchanged historical `BitSetUtil` dependencies; the [manifest](source_manifest.json) records their hashes.

Both archived classes compile against the pinned local RoaringBitmap 1.6.24 JAR. The [runtime witness](RangeWitness.java) uses an otherwise ordinary bitmap `{0,5,7}`. At `get(1,0)`, the [parent](old/runtime.log) throws `IndexOutOfBoundsException`, while the [child](new/runtime.log) returns an empty `BitSet`. Negative bounds also change exception class from `IndexOutOfBoundsException` to `IllegalArgumentException`. Valid small ranges in the witness agree. The test is functional behavior, not a benchmark score or formal equivalence proof.

The historical `RoaringBitmap.java` blob containing `bitmapOfRange`, `and`, and `addOffset` is missing locally at both revisions. These runs substitute the newer pinned JAR for that dependency, so they establish a **mixed-dependency witness**, not an exact historical program counterexample. A faithful KeY proof of the complete historical method cannot yet be set up; the full historical pair remains unverified. The changed method also contains no explicit `fromIndex > toIndex` check, making that boundary the key item to recheck when the historical dependency becomes available.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/75a97ad1/materialize.py
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -cp benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar -d history-eq/java/RoaringBitmap/75a97ad1/old/classes history-eq/java/RoaringBitmap/75a97ad1/old/org/roaringbitmap/BitSetUtil.java history-eq/java/RoaringBitmap/75a97ad1/old/org/roaringbitmap/RoaringBitSet.java history-eq/java/RoaringBitmap/75a97ad1/RangeWitness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -cp history-eq/java/RoaringBitmap/75a97ad1/old/classes:benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar RangeWitness
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -cp benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar -d history-eq/java/RoaringBitmap/75a97ad1/new/classes history-eq/java/RoaringBitmap/75a97ad1/new/org/roaringbitmap/BitSetUtil.java history-eq/java/RoaringBitmap/75a97ad1/new/org/roaringbitmap/RoaringBitSet.java history-eq/java/RoaringBitmap/75a97ad1/RangeWitness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -cp history-eq/java/RoaringBitmap/75a97ad1/new/classes:benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar RangeWitness
```
