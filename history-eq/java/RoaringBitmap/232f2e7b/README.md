# RoaringBitmap `232f2e7b`: `checkedRemove` on run containers

**Whole-commit verdict: UNKNOWN; conditional local equivalence proved.** This commit changes `checkedRemove(int)` in both `RoaringBitmap` and `MutableRoaringBitmap`. The parent computes cardinality before and after `remove`; the child first calls `contains` for run containers, then uses `isEmpty` to decide whether to retain the container. [`materialize.py`](materialize.py) verifies the two exact [historical classes and diff](source.diff) against Git; the [manifest](source_manifest.json) records SHA-256 hashes. The unchanged ordinary `RunContainer` source is also preserved. The historical mappeable run-container blob is missing locally.

The [KeY relation](key/RunRemovalRelation.java) proves that both branches return the same removed/not-removed result and make the same container-retention decision **if** `remove` lowers cardinality by exactly one when `contains` is true, leaves it unchanged otherwise, and `isEmpty` agrees with zero cardinality. The proof covers all `1 <= oldCardinality <= 65536` and both membership outcomes. KeY reports [zero open goals and `Proved`](key/key.log), with the [saved proof](key/RunRemovalRelation.java.auto.proof). These helper laws were not proved for the historical ordinary or mappeable container implementations, and the rest of each class was not loaded into KeY; the local proof does not establish full `checkedRemove` or whole-commit equivalence.

Both exact changed classes fail to compile against the pinned current 1.6.24 JAR because the historical `ImmutableBitmapDataProvider` interface returns `IntIterator` while the current one requires `PeekableIntIterator` ([parent log](javac-old-mixed.log), [child log](javac-new-mixed.log)). This is a dependency-version mismatch, not evidence of a before/after optimization failure. A complete historical runtime build and official before/after benchmark score are absent.

Reproduce the local check from the project root:

```sh
python3 history-eq/java/RoaringBitmap/232f2e7b/materialize.py
cd history-eq/java/RoaringBitmap/232f2e7b/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-232f -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 RunRemovalRelation.java
```
