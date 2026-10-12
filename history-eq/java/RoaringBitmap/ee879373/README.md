# RoaringBitmap `ee879373`: wizard capture timing

The exact historical [diff](source.diff) changes writer suppliers from reading mutable wizard fields when invoked to capturing their current values when the writer is created. [`run_native.py`](run_native.py) compiles both exact `RoaringBitmapWriter.java` revisions with the **same exact historical `ContainerAppender.java`** and common minimal stubs for unrelated bitmap types. The appender calls its supplier at construction and again in `reset()`.

The legal [client subclass](Observer.java) creates a writer with `initialCapacity(4)`, changes the wizard to `initialCapacity(9)`, then resets the writer. Its overridden `createUnderlying(int)` observes **9 before, 4 after** in the [native result](native-result.json). [KeY 3.0.0](key/CaptureTimingRelation.java) independently proves the capture-timing distinction for any unequal before/after values; the [log](key/key.log) reports **0 open goals** with a saved [proof](key/CaptureTimingRelation.java.auto.proof). **Verdict: `NOT_EQUIV` for the observable callback argument.** Bitmap contents and the complete historical library are not compared. No official before/after benchmark score was measured.

Reproduce the native comparison from the project root with `python3 -B history-eq/java/RoaringBitmap/ee879373/run_native.py`. Run KeY from this directory:

```sh
mkdir -p /tmp/veriop-key-ee879373
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-ee879373 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 key/CaptureTimingRelation.java
```
