# RoaringBitmap `5a4d2e6c`: AddOffset boundary check

Commit `5a4d2e6c46f06de2afd963160b0826a8e330a8e4` adds an early skip before `Util.addOffset`/`BufferUtil.addOffset` in both `RoaringBitmap.addOffset` and `MutableRoaringBitmap.addOffset`, and simplifies the two output-key guards. `materialize.py` archives all four exact historical Java source files. `check_source.py` verifies their SHA-256 hashes and confirms that these guards are the **only** byte changes in either production file.

**Result: verified equal for output-key selection, partial at commit level.** `AddOffsetGuardRelation.java` compares the old and new tests for the current key and next key for an arbitrary Java `int key`, including `key + 1` overflow. KeY 3.0.0 closed both JML obligations with **0 open goals** (`current-key.log`, `next-key.log`). Thus the new `continue` skips only cases where the old code would append neither offsetted container, and on all other keys the old and new append guards agree.

The proof does not model the skipped `Util.addOffset`/`BufferUtil.addOffset` call, memory allocation, exceptions, container contents, or complete resulting bitmap. It is an `EQUIV_PARTIAL` classification, not whole-method equivalence. No official before/after RoaringBitmap benchmark score is claimed.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/5a4d2e6c/materialize.py
python3 history-eq/java/RoaringBitmap/5a4d2e6c/check_source.py
printf '0\n' | benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -jar benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 history-eq/java/RoaringBitmap/5a4d2e6c/AddOffsetGuardRelation.java
printf '1\n' | benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -jar benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 history-eq/java/RoaringBitmap/5a4d2e6c/AddOffsetGuardRelation.java
```

The KeY menu currently assigns `0` to `nextKeyEquivalent` and `1` to `currentKeyEquivalent`; inspect the selected method and `Proved` line in each run.
