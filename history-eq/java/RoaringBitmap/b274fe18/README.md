# RoaringBitmap `b274fe18`: bit 63 lost by range-intersection fast path

**Verdict: verified unequal for two public container-method returns on a valid input.** Parent `6a8093c7a685d81d9a07b8f295a6ae68374b1ae5`; child `b274fe181ae94a810280b2c8ae62deef86ecef1f`. The optimized `RunContainer.intersects(BitmapContainer)` and mappeable counterpart replace per-value membership checks with `isNonEmptyInRange`.

Use a one-run container `[63,64)` and a bitmap container with only bit 63 set. The parent tests membership of 63 and returns `true`. In the child, the one-word range mask isolates `1L << 63`, a negative signed `long`, and the changed test uses `> 0`, so it returns `false`. The same expression appears in ordinary and mappeable bitmap containers. [The source-locked check](check.py) verifies the four exact historical changed blobs, the valid one-run constructor, the old membership test, and the new range test ([blob IDs](source-ids.json)). Its [QF_BV query](bit63.smt2) uses Java's 64-bit shift-count rule and proves the concrete `true`/`false` mismatch with `unsat` ([result](z3.log)). This is direct Z3, not a Kuiper proof.

The selected KeY [local Java relation](key/RangeSignRelation.java) left one goal open ([log](key/key.log)); it is **not** counted as proof. The complete historical classes could not be built here: unchanged historical `Container`, `Util`, and several other dependency blobs are missing, while a pinned newer jar has incompatible method signatures. The verdict is a source-mapped bit-vector counterexample at the two container-method boundaries, not a JVM run of complete historical classes or a whole-commit equivalence decision.

No official before/after benchmark score was measured. Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/b274fe18/check.py
```
