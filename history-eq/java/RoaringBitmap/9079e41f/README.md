# RoaringBitmap `9079e41f`: count run cardinality during bitmap conversion

**Verdict: EQUIV_PARTIAL.** The [exact historical diff](source.diff) changes `RunContainer.toBitmapContainer()` from calling `getCardinality()` before the loop to accumulating `end - start` during the same loop. The [parent](RunContainer.old.txt) and [child](RunContainer.new.txt) classes and their hashes are archived in [source_manifest.json](source_manifest.json); [`materialize.py`](materialize.py) regenerates them from the pinned Git history.

In the parent, `getCardinality()` starts at `nbrruns` and adds `valueslength[2*r+1]` for each run. The child uses `getValue(r) == valueslength[2*r]`, `getLength(r) == valueslength[2*r+1]`, then adds `end - start == getLength(r)+1`. The [KeY sum relation](key/RunCardinalitySum.java) compares these two accumulations for every `char[]` of sufficient size and `0 <= nbrruns <= 32768`. [KeY reports zero open goals and `Proved`](key/sum.log), with a [saved proof](key/RunCardinalitySum.java.auto.proof). An independent [KeY step relation](key/RunCardinalityStep.java) proves the `end - start` identity for all 16-bit start and length values ([log](key/step.log), [proof](key/RunCardinalityStep.java.auto.proof)). KeY's recorded setting is `intRules:arithmeticSemanticsIgnoringOF`, so its proof alone does not establish wraparound behavior. The [QF_BV Z3 query](overflow.smt2) separately checks the base, step, and exit obligations modulo 32 bits; [all four are unsatisfiable](overflow-z3.log).

The `Util.setBitmapRange` calls and all other bitmap-conversion operations are unchanged in the historical diff, so the proof establishes equality of the changed cardinality calculation. KeY did not load the entire historical `RunContainer`, `BitmapContainer`, or `Util` classes, and it did not prove whole-bitmap behavior or a benchmark result.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/9079e41f/materialize.py
cd history-eq/java/RoaringBitmap/9079e41f/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-9079-step-final -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 RunCardinalityStep.java
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-9079-sum-final -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 RunCardinalitySum.java
/srv/home/hantaolou/code/veriop/benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 ../overflow.smt2
```
