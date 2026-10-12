# RoaringBitmap `2786fbbd`: an empty bitmap containment counterexample

Commit `2786fbbd` changes the `contains(BitmapContainer)` loops in `RunContainer` and `MappeableRunContainer` ([complete production diff](production.diff)). The public `Container.contains(Container)` dispatcher and the constructors involved in the witness are unchanged. [`reconstruct.py`](reconstruct.py) checks those source facts against both historical Git revisions and extracts the exact old and new `RunContainer.contains(BitmapContainer)` bodies, plus their unchanged `getCardinality`, `numberOfRuns`, `getValue`, and `getLength` helpers, into [a runnable witness](ExtractedContainsWitness.java). The source audit [passed](source-check.log).

**Verdict: verified unequal at the public `Container.contains(Container)` path.** A `RunContainer(100, 101)` contains one value, 100. A new `BitmapContainer()` contains no values and has a 1,024-word zero-initialized bitmap. The public dispatcher calls the changed `RunContainer.contains(BitmapContainer)` method for this pair. The [exact-method Java run](runtime.log) prints `old=true new=false` and exits successfully ([compile result](javac.exit), [run result](runtime.exit)). Java gives `Long.numberOfTrailingZeros(0L) == 64`; the new loop compares that synthetic position with run start 100 and returns false on the first empty word. The old loop skips zero words and returns true. The empty bitmap is a subset of the run, so this is a functional difference rather than a representation-only allocation change.

[KeY 3.0.0](key/RunContainsFirstWord.java) proves the first-word branch relation with `word=0`, `start>64`, and one run: [0 open goals, `Proved`](key/key.log), with the [saved proof](key/RunContainsFirstWord.java.auto.proof). This local KeY proof substitutes 64 for `Long.numberOfTrailingZeros(0L)` and does **not** prove either entire historical class. A direct KeY attempt with the JDK call left one goal open ([diagnostic](key/key-jdk-uninterpreted.log)). The full historical module could not be built from this partial Git mirror because 11 unchanged production source blobs are missing at both revisions. The decisive Java execution uses the *exact changed method bodies* and unchanged helpers, plus minimal bitmap storage/cardinality scaffolding checked against the historical constructors. The other changed buffered method was not needed to establish a counterexample and was not separately checked.

Reproduce from this directory:

```sh
python3 reconstruct.py
source ../../../../benchmarks/env.sh
javac --release 8 ExtractedContainsWitness.java
java ExtractedContainsWitness
(cd key && printf '0\n' | java -Duser.home=/tmp/veriop-key-2786 -Xmx2g -jar "$KEY_JAR" --auto --timeout=60000 RunContainsFirstWord.java)
```

No official before/after benchmark score was measured for this historical commit.
