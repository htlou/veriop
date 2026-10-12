# Netty `59aec4b4`: stale component index after removal

The sampled commit adds a sequential-read fast path to `CompositeByteBuf`. The [witness](Witness.java) adds five one-byte components, reads from component 2, removes component 0, and then reads from the next component. Removing component 0 shifts the cached component from array index 2 to 1, but the new `lastAccessedIndex` remains 2. `findComponentForRead` starts at index 3 and selects a component whose offset is greater than the read index.

**Result: `NOT_EQUIV` for this public `CompositeByteBuf` call sequence under the pinned support JARs.** The [reproducer](run_witness.py) extracts and compiles the exact parent and child `CompositeByteBuf.java` blobs and their identical historical `UnpooledHeapByteBuf.java` and `HeapByteBufUtil.java` blobs. It compiles one client against the parent, then runs the same client binary against each version. [Recorded output](result.json):

```text
parent: first=33, next=44, exit 0
child:  first=33, ArrayIndexOutOfBoundsException: Index -1, exit 1
```

The surrounding Netty classes come from the locally built 4.2.20-SNAPSHOT buffer/common JARs, whose SHA-256 hashes are recorded in the result. The unchanged historical `AbstractByteBuf.java` blob is absent locally; therefore this is a source-locked changed-class counterexample under explicit support dependencies, **not** a whole historical Netty build or a KeY proof. No official before/after benchmark score was measured for this commit.

Reproduce from the project root with `python3 history-eq/java/netty/59aec4b4/run_witness.py`.
