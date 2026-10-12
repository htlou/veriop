# RoaringBitmap `a8c6c4a5`: ordinary ArrayContainer XOR step

**Fixed-sample verdict: `EQUIV_PARTIAL`.** In the high-cardinality branch of `ArrayContainer.xor(ArrayContainer)`, the parent toggles both arrays' bits into a fresh bitmap. The child converts the left array to a bitmap by setting its bits, then calls `BitmapContainer.ixor` to toggle the right array. [`check_source.py`](check_source.py) locks the parent and child `ArrayContainer.java` and their unchanged `BitmapContainer.java` to exact Git object IDs, and checks the relevant operations ([run](source-check.log)).

The [QF_BV check](xor_step.smt2) models Java's 16-bit `char` and 64-bit shift count. Z3 returns `unsat` for three obligations: toggling versus setting a left bit that was not already set, identical right-array toggles, and commutativity of the parent's XOR order. This establishes the **per-bit update relation** under the valid ArrayContainer invariant that each left value occurs once. Dropping that invariant returns `sat`, a counterexample to the unrestricted relation ([solver output](z3.log)).

This does not prove the full method's cardinality calculation, container-type selection, exceptional behavior, or the other changed `or`/`ior`/`lazyor` methods. The changed `MappeableArrayContainer` path is also unchecked. The full commit remains unverified; no official before/after benchmark score was measured.

Reproduce from the project root with `python3 history-eq/java/RoaringBitmap/a8c6c4a5/check_source.py` and `alive2/.venv/bin/z3 history-eq/java/RoaringBitmap/a8c6c4a5/xor_step.smt2` (expected `unsat`, `unsat`, `unsat`, `sat`).
