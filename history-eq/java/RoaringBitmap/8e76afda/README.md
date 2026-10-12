# RoaringBitmap `8e76afda`: removing a cardinality guard

Commit `8e76afda92aaf3a30a645351b4f0e9bc532d3662` removes the same three-line early return from public `RoaringBitmap.contains(RoaringBitmap)` and `ImmutableRoaringBitmap.contains(ImmutableRoaringBitmap)`. The saved [parent](RoaringBitmap.old.txt) and [child](RoaringBitmap.new.txt) sources and [complete production diff](source.diff) are pinned to Git by [`check_source.py`](check_source.py), which confirms that these are the only production Java changes. Both versions compute `getCardinality()` by narrowing `getLongCardinality()` to `int`.

**Verdict: verified unequal at both public `contains` APIs.** The [same witness program](ContainsOverflowWitness.java) was compiled once and run against all 73 production/shim Java sources from each historical revision, compiled with `javac --release 8` ([old build](javac-old.log), [new build](javac-new.log)). It creates a bitmap containing `[0, 2^31)` and a singleton subset `{0}`. The receiver's long cardinality is `2147483648`, while its 32-bit cardinality is `-2147483648`. The [old run](old-runtime.log) returns `false` for both ordinary and buffered bitmap `contains`; the [new run](new-runtime.log) returns `true` for both. Both historical programs exit successfully.

The [KeY relation](key/ContainsGuardRelation.java) isolates the removed guard at those observed 32-bit cardinalities, assuming the rest of the containment scan returns true. KeY 3.0.0 reports [0 open goals and `Proved`](key/key.log), with its [saved proof](key/ContainsGuardRelation.java.auto.proof). The historical runs establish that the premise and differing public results occur in the full classes; the KeY relation alone is not a whole-class proof.

To reproduce from the project root:

```sh
source benchmarks/env.sh
mkdir -p history-eq/wt/roaring-contains-8e76-old history-eq/wt/roaring-contains-8e76-new
git -C benchmarks/repos/RoaringBitmap archive 8e76afda92aa^ RoaringBitmap/src/main/java shims/src/main/java | tar -x -C history-eq/wt/roaring-contains-8e76-old
git -C benchmarks/repos/RoaringBitmap archive 8e76afda92aa RoaringBitmap/src/main/java shims/src/main/java | tar -x -C history-eq/wt/roaring-contains-8e76-new
mkdir -p history-eq/wt/roaring-contains-8e76-old/classes history-eq/wt/roaring-contains-8e76-new/classes history-eq/java/RoaringBitmap/8e76afda/classes
javac --release 8 -d history-eq/wt/roaring-contains-8e76-old/classes @history-eq/java/RoaringBitmap/8e76afda/old-sources.txt
javac --release 8 -d history-eq/wt/roaring-contains-8e76-new/classes @history-eq/java/RoaringBitmap/8e76afda/new-sources.txt
python3 history-eq/java/RoaringBitmap/8e76afda/check_source.py
javac --release 8 -cp history-eq/wt/roaring-contains-8e76-old/classes \
  -d history-eq/java/RoaringBitmap/8e76afda/classes \
  history-eq/java/RoaringBitmap/8e76afda/ContainsOverflowWitness.java
java -Xmx2g -cp history-eq/java/RoaringBitmap/8e76afda/classes:history-eq/wt/roaring-contains-8e76-old/classes ContainsOverflowWitness
java -Xmx2g -cp history-eq/java/RoaringBitmap/8e76afda/classes:history-eq/wt/roaring-contains-8e76-new/classes ContainsOverflowWitness
(cd history-eq/java/RoaringBitmap/8e76afda/key && printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 ContainsGuardRelation.java)
```

The historical class directories were generated with `git archive` at the commit and its parent, then compiled with the saved [`old-sources.txt`](old-sources.txt) and [`new-sources.txt`](new-sources.txt) file lists. No official before/after benchmark score was measured for this commit.
