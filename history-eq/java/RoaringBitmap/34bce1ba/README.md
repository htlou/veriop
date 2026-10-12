# `34bce1ba`: byte shift by bit operations

**Verdict: verified unequal on the unrestricted public `IntegerUtil.shiftLeftFromSpecifiedPosition` API.** The [historical source diff](source.diff) replaces a four-byte `System.arraycopy` with shifts and masks. The original [parent](IntegerUtil.old.txt) and [child](IntegerUtil.new.txt) class sources are saved verbatim from Git. No official historical before/after benchmark score was measured.

The identical [witness](IntegerShiftWitness.java) was compiled with `javac --release 8` against each exact historical class. At `(v,pos,count)=(0x11223344,4,0)`, [the parent](native-old.log) throws `ArrayIndexOutOfBoundsException`, while [the child](native-new.log) returns `0x11223344`. At `(0x11223344,0,4)`, the parent also throws while the child returns `0x22334400`. The valid case `(0x11223344,0,3)` returns `0x22334444` on both sides. These are semantic results, not performance measurements.

The [KeY boundary relation](key/IntegerShiftBoundary.java) checks the first witness: for a four-element source array, `pos + 1 = 5` is outside the source bounds even when `count = 0`; the optimized zero-count branch returns the input value. KeY 3.0.0 reports [zero open goals and `Proved`](key/key-boundary.log), with the [saved proof](key/IntegerShiftBoundary.java.auto.proof). This is a source-audited local bound/result proof. An attempted [direct relation](diagnostic/IntegerShiftRelation.java) containing the historical `System.arraycopy` call [left six KeY goals open](diagnostic/key.log). The public-API difference is established by the two historical Java executions and corroborated by the narrower KeY proof; a full-method KeY equivalence query was not discharged.

Reproduce from the project root:

```sh
source benchmarks/env.sh
mkdir -p /tmp/rb-34-old/classes /tmp/rb-34-new/classes
git -C benchmarks/repos/RoaringBitmap show 34bce1ba^:RoaringBitmap/src/main/java/org/roaringbitmap/longlong/IntegerUtil.java > /tmp/rb-34-old/IntegerUtil.java
git -C benchmarks/repos/RoaringBitmap show 34bce1ba:RoaringBitmap/src/main/java/org/roaringbitmap/longlong/IntegerUtil.java > /tmp/rb-34-new/IntegerUtil.java
javac --release 8 -d /tmp/rb-34-old/classes /tmp/rb-34-old/IntegerUtil.java history-eq/java/RoaringBitmap/34bce1ba/IntegerShiftWitness.java
javac --release 8 -d /tmp/rb-34-new/classes /tmp/rb-34-new/IntegerUtil.java history-eq/java/RoaringBitmap/34bce1ba/IntegerShiftWitness.java
java -cp /tmp/rb-34-old/classes IntegerShiftWitness
java -cp /tmp/rb-34-new/classes IntegerShiftWitness
(cd history-eq/java/RoaringBitmap/34bce1ba/key && printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 IntegerShiftBoundary.java)
```
