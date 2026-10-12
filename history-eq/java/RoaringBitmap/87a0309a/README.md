# RoaringBitmap `87a0309a`: avoid array reallocation

**Verdict: EQUIV_PARTIAL.** The [exact historical diff](source.diff) and [parent/child production class files with hashes](source_manifest.json) are archived. The ordinary `BitmapContainer.limit` branch used to clone the whole 1024-word bitmap and zero the suffix after `usedwords`. It now allocates a zeroed 1024-word array and copies only the first `usedwords` words. Both versions then apply the same last-word mask and set the same `maxcardinality` field.

The source-audited [KeY relation](key/BitmapPrefixCopyRelation.java) models the parent copy and suffix-zeroing and the child prefix-copy with explicit loops. It proves that their resulting arrays agree at **every index** for arbitrary 1024-word input and every `0 <= usedwords <= 1024`; KeY reports [zero open goals and `Proved`](key/key.log), and the [proof artifact](key/BitmapPrefixCopyRelation.java.auto.proof) is saved. The explicit loops stand for the standard semantics of the historical `Arrays.copyOf` constructor and `System.arraycopy`; KeY did not load those JDK calls or the complete historical `BitmapContainer` class. The shared `select(maxcardinality)` result and unchanged last-word mask are treated compositionally.

The same commit also changes `MappeableBitmapContainer.limit` for array-backed and direct buffers, and switches one `MutableRoaringArray` constructor call. Those paths and allocation/identity behavior are not proved here. This result is local equality of the ordinary bitmap's word contents under its normal fixed-length representation, not whole-commit equivalence. No official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/87a0309a/materialize.py
source benchmarks/env.sh
(cd history-eq/java/RoaringBitmap/87a0309a/key && printf '0\n' | java -XX:-UsePerfData -jar "$KEY_JAR" --auto --timeout=90000 BitmapPrefixCopyRelation.java)
```
