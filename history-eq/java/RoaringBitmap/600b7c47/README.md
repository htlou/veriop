# RoaringBitmap `600b7c47`: faster `Roaring64Bitmap.isEmpty()`

**Scoped verdict: `NOT_EQUIV` for `Roaring64Bitmap.isEmpty()` when its high-low index stores an empty container. Whole historical-commit verdict: `UNKNOWN`.** The only changed production file replaces `getLongCardinality() == 0L` with `highLowContainer.isEmpty()` and removes empty containers after deserialization. [`materialize.py`](materialize.py) verifies the [parent](Roaring64Bitmap.old.txt), [child](Roaring64Bitmap.new.txt), and [diff](source.diff) against Git; [the manifest](source_manifest.json) records their SHA-256 hashes. It also preserves exact unchanged `Container`, `RunContainer`, `HighLowContainer`, and ART sources.

There is a concrete public-path concern. In both historical versions, `Roaring64Bitmap.xor` inserts the equal-key result without checking whether the XOR container is empty. The exact historical `HighLowContainer.put` inserts it, and its `isEmpty()` asks whether the ART has a key. Two equal bitmaps can therefore produce one stored container with zero cardinality. On that state, the old `isEmpty()` returns `true` and the new one returns `false`. The source-audited [KeY relation](key/EmptyXorRelation.java) proves this deciding branch for equal singleton inputs: [the proof log](key/key.log) reports zero open goals and `Proved`, and the [saved proof](key/EmptyXorRelation.java.auto.proof) is retained. KeY did not load the full historical classes or prove their container implementation.

The new [stored-empty witness](StoredEmptyWitness.java) constructs that state with the exact historical `HighLowContainer.put` and an exact historical empty `RunContainer`. It then calls each exact historical `Roaring64Bitmap.isEmpty()` implementation. The [parent log](stored-empty-old.log) reports `cardinality=0 isEmpty=true`; the [child log](stored-empty-new.log) reports `cardinality=0 isEmpty=false`. Class-load logs confirm that `Roaring64Bitmap`, `Container`, `RunContainer`, `HighLowContainer`, and `Art` come from the archived historical sources on both sides. Reflection is used only to install the internal state; this witness does not itself prove that public methods reach the state.

The separate [public XOR witness](XorEmptyWitness.java) does reach the state through ordinary calls and reports the same difference for equal singletons and equal ranges ([old log](runtime-old-full.log), [new log](runtime-new-full.log)). **That run has mixed dependencies:** missing historical `ArrayContainer`, `BitmapContainer`, and related classes came from the pinned 1.6.24 JAR; [the setup record](witness-setup.json) pins its hash. It corroborates the reachable-state concern but does not establish a fully historical public counterexample or whole-commit verdict. No official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/600b7c47/materialize.py
python3 history-eq/java/RoaringBitmap/600b7c47/run_witness.py
cd history-eq/java/RoaringBitmap/600b7c47/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-600b -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 EmptyXorRelation.java
```
