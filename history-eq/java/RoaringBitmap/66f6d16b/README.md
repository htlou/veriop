# RoaringBitmap `66f6d16b`: in-place bitmap XOR

**Verdict: NOT_EQUIV for the public `BitmapContainer.ixor(BitmapContainer)` side effect.** The [exact historical diff](source.diff), [parent/child `BitmapContainer` files and unchanged helper sources](source_manifest.json) are archived. In the parent, the branch where XOR cardinality is at most 4096 fills and returns a new `ArrayContainer` without writing `this.bitmap`. In the child, XOR is written into `this.bitmap` before cardinality is counted and an `ArrayContainer` is returned. A caller retaining the original bitmap container can observe this difference.

The [native Java witness](BitmapIxorWitness.java) uses two identical, structurally normal 1024-word bitmaps containing 5000 set bits. Both historical operation orders return an empty array result, but the parent leaves the retained input at cardinality **5000** with bit 0 set, while the child leaves it at cardinality **0** with bit 0 clear ([output](native.log)). [check_source.py](check_source.py) matches the decisive operations against the archived old/new source and checks the unchanged 4096 threshold and XOR helper. The witness is an extracted class, not a full historical repository build.

KeY [proves](key/key.log) the retained-input difference for an arbitrary nonzero word on the equal-word, array-result branch, with **zero open goals** and a [saved proof](key/IxorMutationRelation.java.auto.proof). Its premise `word XOR word = 0` is discharged independently by the [64-bit Z3 query](xor-self.smt2), whose [result](xor-self.log) is `unsat`. The KeY relation models the standard `Long.bitCount(0)=0` result rather than loading the JDK implementation; the native witness executes that call. Thus the KeY result is local, while the concrete source-audited execution establishes the side-effect mismatch for a normal bitmap representation.

The result does not claim that ordinary high-level `RoaringBitmap.xor` calls expose the retained container reference; it establishes a difference at the public container method. No official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/66f6d16b/materialize.py
python3 history-eq/java/RoaringBitmap/66f6d16b/check_source.py
mkdir -p /tmp/veriop-roaring-66f6d16b
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -d /tmp/veriop-roaring-66f6d16b history-eq/java/RoaringBitmap/66f6d16b/BitmapIxorWitness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -cp /tmp/veriop-roaring-66f6d16b BitmapIxorWitness
source benchmarks/env.sh
(cd history-eq/java/RoaringBitmap/66f6d16b/key && printf '0\n' | java -XX:-UsePerfData -jar "$KEY_JAR" --auto --timeout=60000 IxorMutationRelation.java)
z3 history-eq/java/RoaringBitmap/66f6d16b/xor-self.smt2
```
