# RoaringBitmap `423c1e8b`: preallocated container arrays

**Verdict: `EQUIV_PARTIAL` for the empty-array constructor path.** The [exact historical source audit](check_source.py) verifies parent `952f8ce7` and child `423c1e8b`, checks that the archived [production diff](../source-screening/423c1e8b.source.diff) is byte-identical to Git's diff, and records source hashes in [`source-audit.json`](source-audit.json).

The old `RoaringBitmap.bitmapOfRange` and `MutableRoaringBitmap.bitmapOfRange` create a new array with `hbLast - hbStart + 1` slots and then wrap it in a bitmap. The child forwards that same capacity to new bitmap constructors, which create the same array. Both historical `RoaringArray(int)` and `MutableRoaringArray(int)` bodies are unchanged: they allocate zero-initialized key and container arrays of the requested capacity and set `size = 0`.

[KeY 3.0.0](CapacityConstructorRelation.java) proves that the two expanded constructor paths have the same empty size, both array lengths, and key/reference values at any valid index for all capacities `0..65536`. Its [positive log](key.log) reports **0 open goals / Proved**; a deliberate `newKeys` capacity `+1` mutant leaves **2 open goals / Not proved** ([negative log](key-negative.log)). This is a source-mapped local model: its `Object[]` represents the default-null reference storage used by the historical `Container[]` and `MappeableContainer[]` constructors.

The proof does not cover the subsequent container appends, the bitmap conversion copy loops, the copy-on-write `needsCopy` array, allocation failures, or complete public API behavior. No official historical benchmark before/after score was measured.

Reproduce the source check with `python3 history-eq/java/RoaringBitmap/423c1e8b/check_source.py`; the KeY input and both output logs are archived here.
