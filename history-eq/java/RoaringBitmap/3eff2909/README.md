# RoaringBitmap `3eff2909`: skip work after an empty intersection

**Verdict: partial local equality; whole commit unproved.** The exact historical [diff](source.diff) changes six aggregation loops in [`FastAggregation`](FastAggregation.old.txt) and [`BufferFastAggregation`](BufferFastAggregation.old.txt). Each loop now skips the rest of a key once `tmp.isEmpty()` becomes true. Four cardinality/limited-memory loops also remove a guard around `getContainerAtIndex(index)` when `index < 0`. [`materialize.py`](materialize.py) archives both old/new changed classes, and the [manifest](source_manifest.json) records their exact Git hashes.

The [KeY relation](key/EmptyIntersectionRelation.java) proves the early-exit algebra for any number of `long` masks and any initial accumulator: continuing a bitwise intersection after its value reaches zero gives the same result as stopping. KeY 3.0.0 reports [zero open goals and `Proved`](key/key.log), with the [saved proof](key/EmptyIntersectionRelation.java.auto.proof). This is a per-word property. Applying it to the historical container operations additionally requires `isEmpty()` to agree with logical emptiness and `iand` to implement intersection; those laws are not proved here.

The removed `index < 0` checks depend on the guarantee that `Util.intersectKeys` returns only keys present in every bitmap. The archived historical [`Util.intersectKeys` source](Util.old.txt) indicates this intent, but the full helper invariant and the corresponding buffer implementation were not proved. This case therefore counts as **partial**, not a whole-commit or public-API proof. No official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/3eff2909/materialize.py
cd history-eq/java/RoaringBitmap/3eff2909/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-3eff2909 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 EmptyIntersectionRelation.java
```
