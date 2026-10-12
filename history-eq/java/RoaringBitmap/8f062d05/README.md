# RoaringBitmap `8f062d05`: one-run equality mismatch

Commit `8f062d05e93599f0fafb8cfb920411cd0e5b2f87` changes the private `RunContainer.equals(RunContainer)` implementation. The parent compares both shorts for each run: its start and its length. The child calls `ArraysShim.equals(valueslength, 0, nbrruns, rc.valueslength, 0, rc.nbrruns)`. Each run occupies **two** shorts, so this call compares only half of the used array. For one-run containers, it compares the start and ignores the length.

**Result: verified unequal for `RunContainer.equals` on valid constructed inputs.** `new RunContainer(1, 2)` represents `{1}` and `new RunContainer(1, 3)` represents `{1, 2}`. The parent returns `false`; the child returns `true`. The unchanged public `equals(Object)` method dispatches a `RunContainer` argument to this private method in both revisions. Thus the counterexample also reaches the public equality API. It does not depend on malformed serialization or an invalid container.

`materialize.py` archives the exact historical parent and child `RunContainer.java` plus the child `ArraysShim.java`, with SHA-256 hashes in `source_manifest.json`. It extracts the original constructor, accessors, and private equality methods into small compilable Java shells. `check_source.py` checks those method bodies against the archived source and audits public dispatch. The only adaptation to `ArraysShim` is its package name. The [native witness](witness.log) reports `old.equals=false new.equals=true`.

KeY 3.0.0 was also attempted on `WitnessProof.java`, but its [log](key.log) says **one goal open; not proved**. KeY is not the basis for this verdict, and this case has no official historical before/after performance score. The result is a constructive semantic counterexample for the indicated API, not a whole-commit equivalence assessment of the other changed classes.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/8f062d05/materialize.py
python3 history-eq/java/RoaringBitmap/8f062d05/check_source.py
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -d /tmp/veriop-roaring-8f062d05 history-eq/java/RoaringBitmap/8f062d05/parent/RunContainer.java history-eq/java/RoaringBitmap/8f062d05/child/RunContainer.java history-eq/java/RoaringBitmap/8f062d05/child/ArraysShim.java history-eq/java/RoaringBitmap/8f062d05/Witness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -cp /tmp/veriop-roaring-8f062d05 Witness
```
