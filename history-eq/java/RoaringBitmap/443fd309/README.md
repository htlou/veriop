# RoaringBitmap `443fd309`: reverse iterator exhaustion

Commit `443fd309998cdddf18a95677ef0fe477001349bc` optimizes `advanceIfNeeded` in the ordinary bitmap's forward, rank, and reverse char iterators, and in the mappeable forward iterator. The counterexample here concerns the ordinary **reverse** iterator.

**Result: verified unequal for the public `BitmapContainer.getReverseCharIterator()` API on a valid bitmap.** A 1024-word bitmap with only bit 1 set and cardinality 1 yields a reverse iterator whose next value is 1. After `advanceIfNeeded((char) 0)`, the parent reports `hasNext() == false`; the child reports `hasNext() == true`. The child masks the current word to zero at position zero, but its new loop runs only when `position > 0`, so it never moves the position to the exhausted `-1` state. The parent consumes the one remaining value and moves to `-1`.

`materialize.py` archives exact historical parent/child `BitmapContainer.java` and the three iterator interfaces, recording their SHA-256 hashes. It copies the original iterator classes into compilable shells and copies the exact public bitmap constructor and `getReverseCharIterator()` method into a small `BitmapContainer` shell. `check_source.py` compares every extracted class and public entry point with the historical Git blobs. The [witness](witness.log) prints `old=64:2|false new=64:2|true`; the `64:2` prefix is an equal rank-iterator control, and the final boolean is the reverse iterator's `hasNext()` result. The full historical project could not be compiled from the local Git store because two unrelated production source blobs are missing, so this is a source-audited extraction, not a full-build runtime test.

KeY 3.0.0 was attempted on the exact reverse iterator methods in `key/ReverseProof.java`; its [log](key/key.log) ends with **one open goal, not proved**. That proof obligation is deliberately limited to the reached iterator state. The `NOT_EQUIV` verdict rests on the executable counterexample and exact-source audit, **not** on a closed KeY proof. The other changed iterator paths and any official historical before/after benchmark score are outside this result.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/443fd309/materialize.py
python3 history-eq/java/RoaringBitmap/443fd309/check_source.py
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -d /tmp/veriop-roaring-443fd309 history-eq/java/RoaringBitmap/443fd309/parent/*.java history-eq/java/RoaringBitmap/443fd309/child/*.java history-eq/java/RoaringBitmap/443fd309/Witness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -cp /tmp/veriop-roaring-443fd309 Witness
printf '0\n' | benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -jar benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 history-eq/java/RoaringBitmap/443fd309/key/ReverseProof.java
```
