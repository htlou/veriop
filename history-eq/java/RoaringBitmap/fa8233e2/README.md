# RoaringBitmap `fa8233e2`: writing behind in `SparseOrderedWriter`

The saved [parent](old/SparseOrderedWriter.java) and
[child](new/SparseOrderedWriter.java) classes are exact historical Git blobs.
[`check_source.py`](check_source.py) also checks the unchanged historical
`Util.java` and `RoaringBitmap.java` objects. In `SparseOrderedWriter.add`, when
the incoming high 16-bit key is below `currentKey`, the parent throws
`IllegalStateException`; the child calls `underlying.add(value)` and returns.
The historical `Util.highbits(1)` is 0, while the writer can hold key 1 after
writing 65536.

[KeY's proof](key.log) has zero open goals for the [branch projection](SparseBranch.java)
at `currentKey=1, value=1`: the parent selects the throw branch and the child
selects the insertion branch. The [source-locked result](result.json) records
the six historical object IDs and the model hash. Recheck by running:

```sh
printf '0\n' | benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -jar benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 history-eq/java/RoaringBitmap/fa8233e2/SparseBranch.java > history-eq/java/RoaringBitmap/fa8233e2/key.log 2>&1
python3 -B history-eq/java/RoaringBitmap/fa8233e2/check_source.py
```

**Full-commit verdict: `UNKNOWN`.** The KeY query proves the branch decision,
not completion of the child `RoaringBitmap.add`, reachability of the modeled
writer state through the public API, or equivalence for increasing input. Six
historical Java source blobs, including buffer dependencies, are absent
locally. Substituting the pinned newer RoaringBitmap JAR fails to
compile both historical variants because its `short`-based APIs changed to
`char`-based APIs. No official before/after benchmark score was measured.
