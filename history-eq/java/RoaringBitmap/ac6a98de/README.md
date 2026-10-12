# RoaringBitmap `ac6a98de`: empty array in `addOffset`

**Verdict: verified unequal at two public helper calls.** Parent `492061d1f118e66ee6acbc8825c3f5e1359eefb5`; child `ac6a98de1126a3d523c9ed1f0ba74ac2d04e3ebe`. This optimization changes `Util.addOffset(Container, char)` and `BufferUtil.addOffset(MappeableContainer, char)` for array containers, as well as bitmap and run paths. No official before/after benchmark score was measured.

On an ordinary empty `ArrayContainer` and offset 1, the parent returns two empty containers, while the child throws `NoSuchElementException`. The mappeable empty-array call has the same return-versus-exception difference ([old](old.log), [new](new.log)). Empty containers are constructible through the historical public constructors. The old array branch allocates two empty results and runs a zero-iteration loop. The new array branch calls `source.first()` before checking the cardinality; the unchanged historical `first()` calls `assertNonEmpty` and throws when cardinality is zero. The [exact source diff](../source-screening/ac6a98de.source.diff) shows both paths.

[The differential runner](run_witness.py) compiles ten exact historical source blobs on each side, including both changed helper classes, both array classes, and their container/iterator dependencies. The pinned newer jar supplies other unchanged classes whose historical blobs are missing; its SHA-256 and all ten source object IDs are in [result.json](result.json). The relevant helper, `first()`, and exception guard execute from the historical classes because the compiled directory precedes the jar on the classpath. This proves the public helper-call mismatch for the supplied valid input, not a fully historical whole-repository build.

KeY did **not** prove the historical classes. It cannot load a local model naming `java.util.NoSuchElementException` ([log](key/key.log)). Replacing that class with `RuntimeException` allows loading but leaves one goal open ([log](key/key-runtime.log)); neither run contributes to the verdict. The actual historical JVM executions are the counterexample.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/ac6a98de/run_witness.py
```
