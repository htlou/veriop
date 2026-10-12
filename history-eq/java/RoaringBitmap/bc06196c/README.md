# RoaringBitmap `bc06196c`: `BitmapContainer.ior(BitmapContainer)`

**Verdict: NOT_EQUIV for the unrestricted public container API.** The historical [diff](source.diff) changes only this method in production Java. The [exact parent and child class files](source_manifest.json) show that the public `BitmapContainer(long[] newBitmap, int newCardinality)` constructor stores its input array without a length check. With a one-word left bitmap and a zero-word right bitmap, the parent enters its `for (k < this.bitmap.length)` loop and reads `b2.bitmap[0]`, throwing `ArrayIndexOutOfBoundsException`. The child guards the loop with `k < b2.bitmap.length`, skips it, computes cardinality zero, and returns.

The [native Java witness](BitmapIorWitness.java) executes source-audited extractions of the old and new method bodies and records the different outcomes in [native.log](native.log). [check_source.py](check_source.py) confirms that both changed loop bodies and the public constructor match the archived class sources after whitespace normalization. KeY [proves](key/guard/key-guard.log) the exact first-iteration guard/bounds relation for this input, with **zero open goals**; the [saved proof](key/guard/IorGuardRelation.java.auto.proof) is included. A more direct KeY attempt that executes the caught array exception leaves one open goal ([diagnostic](key/key.log)), so the closed KeY claim is specifically about the source guards and invalid read, not the full historical class.

Both historical class files are archived with Git-object hashes. The native witness is an extracted class, not a full build of the historical repository; this counterexample relies only on the archived constructor, loop, `computeCardinality`, and `isFull` bodies. It is outside the ordinary fixed-size 1024-word bitmap representation, so this verdict does not imply an error for normally constructed containers. No official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/bc06196c/materialize.py
python3 history-eq/java/RoaringBitmap/bc06196c/check_source.py
mkdir -p /tmp/veriop-roaring-bc06196c
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -d /tmp/veriop-roaring-bc06196c history-eq/java/RoaringBitmap/bc06196c/BitmapIorWitness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -cp /tmp/veriop-roaring-bc06196c BitmapIorWitness
source benchmarks/env.sh
(cd history-eq/java/RoaringBitmap/bc06196c/key/guard && printf '0\n' | java -XX:-UsePerfData -jar "$KEY_JAR" --auto --timeout=60000 IorGuardRelation.java)
```
