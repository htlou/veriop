# RoaringBitmap `2f3b4093`: array append fast path

**Verdict: partial local equality; full `add` methods unproved.** The exact [historical diff](source.diff) adds a direct append path to `ArrayContainer.add(short)` and both branches of `MappeableArrayContainer.add(short)`. [`materialize.py`](materialize.py) archives both revisions of the changed classes and the unchanged historical `Util` search helper; [`source_manifest.json`](source_manifest.json) records the source hashes.

Both historical `Util.branchyUnsignedBinarySearch` and `Util.hybridUnsignedBinarySearch` first check whether an unsigned 16-bit key exceeds the last element and return `-end-1` if so; with `end=0`, their search loops do not execute and they return `-1`. The [KeY relation](key/AppendFastPathRelation.java) models exactly these reachable branches. For every 16-bit `short` value and `0 <= cardinality <= 4095`, assuming the array has a free slot and the new value is greater than the last (or the array is empty), KeY proves that the old insertion index is `cardinality` and the old `arraycopy` length is zero. KeY reports [zero open goals and `Proved`](key/key-fast.log), with the [saved proof](key/AppendFastPathRelation.java.auto.proof). This establishes the local index/shift reason why direct append preserves the active content on that path.

The proof does not load or compare the complete historical `ArrayContainer` and `MappeableArrayContainer` methods. Capacity growth, conversion to bitmap containers, the non-append branch, and the `ShortBuffer` path are outside this result. It also does not prove whole-bitmap equivalence or an official before/after benchmark delta.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/2f3b4093/materialize.py
cd history-eq/java/RoaringBitmap/2f3b4093/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-2f3b4093 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 AppendFastPathRelation.java
```
