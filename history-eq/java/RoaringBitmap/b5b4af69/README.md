# RoaringBitmap `b5b4af69`: run-container cardinality

Commit `b5b4af69b5b136c2f65955d0101bcce9b4798b1d` changes the `getCardinality()` loops in `RunContainer` and `MappeableRunContainer` from run-index iteration to stride-two iteration over start/length pairs. [`materialize.py`](materialize.py) checks the two [old](RunContainer.old.txt) and [new](RunContainer.new.txt) production classes, their [production diff](source.diff), and the [source manifest](source_manifest.json) against Git. The commit also edits a JMH benchmark file. Both historical sides have 82 exact production Java files available in the core, buffer, and usable longlong packages, including the historical `ArraysShim`; [old](javac-old.log) and [new](javac-new.log) builds pass with Java 8 language level. The two missing ART classes prevent compiling that unrelated package at this revision.

**Verdict: EQUIV_PARTIAL.** The [KeY relation](key/CardinalityStepRelation.java) proves for every `0 <= runs <= 32768` and every sufficiently long `char[]` that the old indices `2*k+1` and new indices `1,3,...,2*runs-1` read the same values in the same order and yield equal Java `int` sums, including overflow. KeY 3.0.0 reports [zero open goals and `Proved`](key/key.log), with the [proof artifact](key/CardinalityStepRelation.java.auto.proof) saved. This covers the changed arithmetic/array-index step under the normal two-char-per-run representation. The source-audited `getLength(k)` methods use the same `2*k+1` index, so both the ordinary and mappeable array/direct branches have this local correspondence.

The identical [runtime witness](CardinalityWitness.java) against the exact historical builds gives 10 for a one-run ordinary container, 10 for an array-backed mappeable container, and 15 for a two-run direct-buffer container in both the [parent](native-old.log) and [child](native-new.log). These executions are controls, not an exhaustive proof. KeY did not load the full historical container classes or establish their invariants. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/b5b4af69/materialize.py
source benchmarks/env.sh
mkdir -p /tmp/rb-b5-old/classes /tmp/rb-b5-new/classes
javac -J-XX:-UsePerfData --release 8 -Xlint:-options -d /tmp/rb-b5-old/classes @/tmp/rb-b5-old/sources.txt
javac -J-XX:-UsePerfData --release 8 -Xlint:-options -d /tmp/rb-b5-new/classes @/tmp/rb-b5-new/sources.txt
javac --release 8 -cp /tmp/rb-b5-old/classes -d /tmp/rb-b5-old/classes history-eq/java/RoaringBitmap/b5b4af69/CardinalityWitness.java
javac --release 8 -cp /tmp/rb-b5-new/classes -d /tmp/rb-b5-new/classes history-eq/java/RoaringBitmap/b5b4af69/CardinalityWitness.java
java -XX:-UsePerfData -cp /tmp/rb-b5-old/classes CardinalityWitness
java -XX:-UsePerfData -cp /tmp/rb-b5-new/classes CardinalityWitness
printf '0\n' | java -Duser.home=/tmp/veriop-key-b5 -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/b5b4af69/key/CardinalityStepRelation.java
```
