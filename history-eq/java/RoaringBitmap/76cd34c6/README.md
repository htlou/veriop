# RoaringBitmap `76cd34c6`: trim backing arrays

**Verdict: EQUIV_PARTIAL for the active prefix; whole `trim()` unproved.** The [historical diff](source.diff) moves `MutableRoaringBitmap.trim()` into `MutableRoaringArray.trim()`. The new method copies `keys` and `values` to arrays of length `size`, then calls `trim()` on each copied container reference. The [parent](MutableRoaringArray.old.txt) and [child](MutableRoaringArray.new.txt) classes are archived; [`materialize.py`](materialize.py) regenerates both changed classes, and [source_manifest.json](source_manifest.json) records their hashes.

The parent calls `getContainerAtIndex(i).trim()` for `0 <= i < size`; the historical accessor returns `values[i]`. Under the normal array invariant (`keys` and `values` nonnull and both at least `size` long), Java's `Arrays.copyOf` preserves those first `size` entries and their object identities. The [KeY model](key/TrimCopyModel.java) represents that copy with explicit loops and proves, for arbitrary arrays and valid `size`, that every active key and container reference is preserved in order. [KeY closes the model proof](key/key-model.log) with [zero open goals](key/TrimCopyModel.java.auto.proof). This establishes the local prefix and call-order correspondence, not equality of allocation behavior or every container's `trim()` side effects.

The [direct KeY attempt](direct/TrimPrefixRelation.java) using the exact `Arrays.copyOf` call did not produce a proof: the installed KeY 3.0.0 strategy raises `IProgramMethod.isStatic()` on a null method and leaves one goal open ([log](direct/key.log)). The model proof therefore relies on the standard copy-prefix contract rather than loading the historical JDK call. The whole historical `MutableRoaringBitmap` and `MutableRoaringArray` classes were not proved, and no official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/76cd34c6/materialize.py
cd history-eq/java/RoaringBitmap/76cd34c6/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-76cd-model3 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 TrimCopyModel.java
```
