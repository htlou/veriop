# RoaringBitmap `d8dcfb17`: early exit in `rank`

**Verdict: conditional local equivalence; whole commit unproved.** The exact historical [diff](source.diff) adds `else { break; }` in four loops: `rankLong(int)` and `rangeCardinality(long,long)` in both `RoaringBitmap` and `ImmutableRoaringBitmap`. [`materialize.py`](materialize.py) archives both historical revisions of the two changed classes; [`source_manifest.json`](source_manifest.json) records their hashes and the exact parent and child commits.

The [KeY relation](key/RankEarlyExitRelation.java) compares the original scan with an early-stopped scan. It permits arbitrary `char` container keys, cardinalities, per-container rank values, start indices, and initial `long` sizes, requiring equal-length arrays and **strictly increasing keys**. Once a key exceeds the query's high key, every later key also exceeds it, so the original scan cannot add to the result or find an equal-key container. KeY 3.0.0 reports [zero open goals and `Proved`](key/key.log), and the [proof artifact](key/RankEarlyExitRelation.java.auto.proof) is saved.

This is a proof of the changed loop decision under the sorted-key invariant. The full historical classes, the invariant of `RoaringArray`/`MutableRoaringArray`, and the surrounding public methods were not loaded into KeY. No official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/d8dcfb17/materialize.py
cd history-eq/java/RoaringBitmap/d8dcfb17/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-d8dcfb17 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 RankEarlyExitRelation.java
```
