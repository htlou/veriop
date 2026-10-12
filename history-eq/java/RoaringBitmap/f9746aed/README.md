# RoaringBitmap `f9746aed`: cached run-container flag

**Verdict: `EQUIV_PARTIAL` for the explicit-offset address calculation.** The [source audit](check_source.py) binds the relation to parent `17f784f7`, child `f9746aed`, the exact changed `ImmutableRoaringArray.java` blobs, and the unchanged `MutableRoaringArray.NO_OFFSET_THRESHOLD = 4` definition. The archived [production diff](../source-screening/f9746aed.source.diff) matches its source manifest; [hashes and object IDs](source-audit.json) make the mapping reproducible.

Old `getOffsetContainer(k)` recomputes `hasRunCompression()` from the buffer cookie. The child passes a previously read `hasrun` to `getOffsetContainer(k, hasrun)`. For a stable buffer header, those flags agree. On the `4 <= size <= 65536` path, both implementations then select the same byte address for the offset word, for every valid `0 <= k < size`. [KeY 3.0.0](RunOffsetRelation.java) proves this address relation with **0 open goals / Proved** ([log](key.log)). An intentional `+1` address mutant has **1 open goal / Not proved** ([mutant](negative/RunOffsetRelationNegative.java), [log](key-negative.log)).

This proof does not cover the `size < 4` slow scan, the `ByteBuffer.getInt` memory access itself, concurrent buffer mutation, malformed serialized inputs and exception ordering, or the full constructor and public container operations. No official historical before/after benchmark score was measured.

Reproduce the source mapping with `python3 history-eq/java/RoaringBitmap/f9746aed/check_source.py`. After sourcing `benchmarks/env.sh`, run KeY `--auto` on `RunOffsetRelation.java` and inspect the goal count in `key.log`.
