# RoaringBitmap `6125ee99`: unordered bulk construction

**Fixed-sample verdict: `UNSUPPORTED` for a same-entrypoint before/after check.** The commit adds `bitmapOfUnordered`, `partialRadixSort`, and `OrderedWriter`. It does not replace the existing `bitmapOf(int...)` method: its body is byte-identical in parent and child. The new methods and class have no matching parent entrypoint. [`check_source.py`](check_source.py) verifies the exact parent/child Git blobs, the complete set of changed production paths, and these API facts ([run](source-check.log)).

One can define a **different**, cross-API relation between old `bitmapOf(data)` and new `bitmapOfUnordered(data)`, but that requires choosing observable state. The child sorts its caller-provided array in place, while the old method passes that array to `add` without sorting it. Equal bitmap contents alone would omit this observable side effect. No such cross-API specification or checker result is claimed here.

This unsupported verdict is about the requested historical same-program equivalence check, not a claim that the new API is incorrect or that no cross-API refinement can be proved. No official historical before/after benchmark score was measured.

Reproduce from the project root with `python3 history-eq/java/RoaringBitmap/6125ee99/check_source.py`.
