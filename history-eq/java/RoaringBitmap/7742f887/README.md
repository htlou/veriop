# RoaringBitmap `7742f887`: skip redundant container field write

Commit `7742f8876a5370fa95ed105cca05f09ab0c1d6bf` (parent `8800009c2ea603463d026f83371fd0012f452ae5`) changes only `ContainerAppender.add(int)`. The [exact diff](source.diff) replaces `container = container.add(lowbits(value))` with a single call saved as `tmp`, assigning `container = tmp` only if `tmp != container`. [`check_source.py`](check_source.py) verifies that this is the complete difference between the saved [parent](ContainerAppender.old.txt) and [child](ContainerAppender.new.txt) source files, and that the KeY relation contains the same two updates.

**Result: verified equal for the changed field update in sequential Java semantics.** [The KeY relation](ContainerAppenderRelation.java) starts its old/new fields at the same reference, gives both sides the same result of the unchanged `container.add(lowbits(value))` call, and proves their final references equal. The parameter and fields are nullable, so the claim includes null. KeY 3.0.0 reports **0 open goals** and `Proved` in the [log](key-nullable-fields.log); the [saved proof](ContainerAppenderRelation.java.auto.proof) is adjacent. The unchanged branches and call are established by the full-file source comparison; the proof does not load the entire historical RoaringBitmap class or analyze concurrent calls to the writer.

The first KeY attempt loaded the saved historical `.java` snapshots from the same directory and failed on a missing `RoaringBitmapWriter` dependency ([diagnostic log](key.log)); renaming those immutable snapshots to `.txt` removed this harness-only loading issue. A later attempt with a nullable parameter but non-null-by-default model fields left one open KeY goal ([diagnostic log](key-nullable.log)); the final proof marks both fields nullable. A CLI exit code alone is not used as proof evidence.

Reproduce from this directory:

```sh
python3 check_source.py
source ../../../../benchmarks/env.sh
printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 ContainerAppenderRelation.java
```

No official before/after benchmark score was measured for this historical commit.
