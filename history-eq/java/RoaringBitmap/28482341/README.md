# RoaringBitmap `28482341`: in-place array/run intersection

**Verdict: verified unequal at four public container methods.** Parent `443fd309998cdddf18a95677ef0fe477001349bc`; child `28482341ca11a62b24bd8b30a8889aa87f266289`. The optimization changes `ArrayContainer.iand(RunContainer)` and `iandNot(RunContainer)`, plus their mappeable counterparts. On a nonempty run, the parent returns a new result and leaves a retained receiver unchanged; the child edits that receiver and returns it. On an empty run, even the returned set differs.

The same [witness](RetainedInputWitness.java) runs against each historical revision's compiled production classes. With valid array input `{1,5}` and run `[5,6)`, all four calls return the expected one-element set. But the parent leaves the retained input at `{1,5}` with cardinality 2, while the child leaves it at `{5}` for `iand` or `{1}` for `iandNot`, with cardinality 1. The parent returns a distinct object and the child returns the input itself.

With equally valid array input `{0,1}` and an **empty** run, the parent returns `{}` for `iand` and `{0,1}` for `iandNot`. The child returns `{0}` and `{1}` respectively, in both ordinary and mappeable classes ([parent output](old.log), [child output](new.log)). The changed loops call `advanceIfNeeded(0)` and then `peekNext()` without checking `hasNext()`. On an empty run, the iterator leaves `base = le = maxlength = 0`, so `peekNext()` reports a nonexistent zero. This is a returned-value counterexample, independent of receiver aliasing.

[Reproduction](reproduce.py) reads exact Git blob IDs for all 102 historical production source paths, compiles the 99 available Java classes in each revision, and asserts the four differing outputs. Two unavailable files, `BufferBitSetUtil.java` and `NaiveWriterRecommender.java`, are not needed by the compiled classes. The changed class blob IDs are recorded for the [parent](old-source-ids.json) and [child](new-source-ids.json). No current-version jar supplies historical behavior.

KeY closes two [source-mapped, fixed-input relations](key/RetainedStateRelation.java) with **zero open goals**: the retained-state branch ([log](key/key-retained.log), [proof](key/RetainedStateRelation.java.auto.proof)) and the empty-run iterator's false match at zero ([log](key/key.log), [proof](key/empty-run.proof)). These are local proofs, not KeY proofs of the complete historical classes. An earlier array-based KeY model hit an internal term-construction exception ([attempt log](key/key-array-failed.log)); it is not counted as proof. The exact historical JVM executions establish the output counterexamples.

This verdict is at the public container-method boundary. It does not claim that every high-level bitmap operation reaches an empty-run operand. No official before/after benchmark score was measured.

Run from the project root:

```sh
python3 history-eq/java/RoaringBitmap/28482341/reproduce.py
source benchmarks/env.sh
cd history-eq/java/RoaringBitmap/28482341/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -jar "$KEY_JAR" --auto --timeout=60000 RetainedStateRelation.java
printf '1\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -jar "$KEY_JAR" --auto --timeout=60000 RetainedStateRelation.java
```
