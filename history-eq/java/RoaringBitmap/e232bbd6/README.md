# RoaringBitmap `e232bbd6`: public `IntegerUtil.setByte`

Commit `e232bbd642878a590367248f48ccd1a1907e5656` replaces the public `IntegerUtil.setByte(int, byte, int)` array update with shifts and masks. [`check_source.py`](check_source.py) confirms the exact [parent](IntegerUtil.old.txt), [child](IntegerUtil.new.txt), and [production diff](source.diff) against Git. The commit also changes a test file; the only production source change is this method.

**Verdict: verified unequal for the unrestricted public method.** The same [witness](SetByteWitness.java), compiled against each exact historical class, gives different results at `pos=4`: the [parent](native-old.log) throws `ArrayIndexOutOfBoundsException`, while the [child](native-new.log) returns `0x7f223344` for `(v,bv)=(0x11223344,0x7f)`. `pos=-1` differs similarly. Valid positions 0 and 3 agree in these controls; the controls are not a proof for every valid input.

The [KeY boundary model](key/SetByteBoundary.java) checks the `pos=4` case: an old four-element array write is outside bounds, while the new bit-operation sequence completes normally. KeY 3.0.0 reports [zero open goals and `Proved`](key/key.log), and the [proof artifact](key/SetByteBoundary.java.auto.proof) is saved. This reduced boundary result corroborates the historical execution; it is not a KeY proof of the complete old and new classes. No official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/e232bbd6/check_source.py
source benchmarks/env.sh
mkdir -p /tmp/rb-e232-old/classes /tmp/rb-e232-new/classes
cp history-eq/java/RoaringBitmap/e232bbd6/IntegerUtil.old.txt /tmp/rb-e232-old/IntegerUtil.java
cp history-eq/java/RoaringBitmap/e232bbd6/IntegerUtil.new.txt /tmp/rb-e232-new/IntegerUtil.java
javac --release 8 -d /tmp/rb-e232-old/classes /tmp/rb-e232-old/IntegerUtil.java history-eq/java/RoaringBitmap/e232bbd6/SetByteWitness.java
javac --release 8 -d /tmp/rb-e232-new/classes /tmp/rb-e232-new/IntegerUtil.java history-eq/java/RoaringBitmap/e232bbd6/SetByteWitness.java
java -XX:-UsePerfData -cp /tmp/rb-e232-old/classes SetByteWitness
java -XX:-UsePerfData -cp /tmp/rb-e232-new/classes SetByteWitness
printf '0\n' | java -Duser.home=/tmp/veriop-key-e232 -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/e232bbd6/key/SetByteBoundary.java
```
