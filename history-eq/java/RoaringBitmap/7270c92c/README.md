# RoaringBitmap `7270c92c`: select from both ends

**Verdict: `EQUIV_PARTIAL` for the rank inside the selected 64-bit word.** The [source audit](check_source.py) matches parent `87a0309a` and child `7270c92c` to the exact `BitmapContainer` and `MappeableBitmapContainer` blobs and [production diff](../source-screening/7270c92c.source.diff). In both classes, the old forward-only `select` implementation survives unchanged except for its name, `selectOneSide`; the child adds reverse scanning for ranks in the upper half.

Let `before` be the number of set bits before the target word, `bits` the number in it, and `after` the number after it. If `before <= j < before + bits`, the old call uses rank `j - before`. After reverse scanning the suffix, the child uses `bits - (cardinality - j - after)`. [KeY 3.0.0](SelectRankRelation.java) proves these ranks equal and proves the reverse leftover is within the target word for every `before, bits, after, j` satisfying `0 <= before`, `1 <= bits <= 64`, `0 <= after`, and total cardinality `<= 65536` ([0 open goals](key.log)). A deliberate rank `-1` mutant leaves [1 open goal](key-negative.log).

This is a source-mapped arithmetic lemma, not a proof that both loops reach the same word for every bitmap or that `Util.select` and all exception paths behave identically. The whole commit and public `select` API remain unproved. No official historical before/after benchmark score was measured.

Reproduce the source mapping with `python3 history-eq/java/RoaringBitmap/7270c92c/check_source.py`; the KeY input and both logs are archived here.
