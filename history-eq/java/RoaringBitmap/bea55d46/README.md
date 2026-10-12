# RoaringBitmap `bea55d46`: ArrayContainer copy step

**Fixed-sample verdict: `EQUIV_PARTIAL`.** The parent `BitSetUtil.toLongArray` first converts an `ArrayContainer` to a zero-initialized `BitmapContainer`, sets each `char` bit in that temporary bitmap, then copies the words. The child writes those bits directly into the newly allocated `long[] words` slice. [`check_source.py`](check_source.py) locks the three relevant parent/child Java files to their exact Git blob IDs and checks these statements against the historical source; its [run](source-check.log) passed.

The [Z3 relation](array_copy_step.smt2) checks one arbitrary loop step for every 16-bit Java `char`, word index, and destination position. Assuming the corresponding old temporary-bitmap word and new destination word are equal before the step, no post-step difference exists (`unsat`). Both arrays start at zero, so this pointwise invariant carries through any number of ArrayContainer elements when the destination slice is valid. An intentionally wrong destination index produces `sat`, showing the query detects a misplaced write. See the [solver output](z3.log).

This is a source-mapped proof of the **ArrayContainer bit-setting step**, not a whole-method or whole-commit proof. It does not check the caller's bounds and container dispatch, RunContainer's new direct-copy implementation, or the new public `copyBitmapTo` contract for nonzero destinations. The full commit remains unverified. No official before/after benchmark score was measured for this historical commit.

From the project root, reproduce with `python3 history-eq/java/RoaringBitmap/bea55d46/check_source.py` and `alive2/.venv/bin/z3 history-eq/java/RoaringBitmap/bea55d46/array_copy_step.smt2` (Z3 4.15.3; expected `unsat`, then `sat`).
