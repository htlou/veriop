# RoaringBitmap `1de68254`: Node16 first-key bytes

Commit `1de68254774c3d1932ee025cb331f60dd4e904d0` removes the temporary byte array used to read eight bytes of `Node16.firstV` during a Node16-to-Node48 conversion. [`check_source.py`](check_source.py) verifies the exact [old](Node16.old.txt) and [new](Node16.new.txt) production source, unchanged [`LongUtils.toBDBytes`](LongUtils.old.txt), and [production diff](source.diff) against Git. The commit also edits a JMH benchmark file whose historical blob is absent locally; it does not change another production source file.

**Selected-checker verdict: UNKNOWN.** [KeY's relation](Node16FirstByteRelation.java) compares `LongUtils.toBDBytes(firstV)[i]` with the new `(byte)(firstV >>> ((7-i)<<3))` for every Java `long` and `0 <= i < 8`. KeY 3.0.0 [leaves eight goals open](key-main.log), so there is no KeY equivalence proof. A smaller [shift-only probe](ShiftRelation.java) also [leaves one goal open](key-shift.log). Independently, the exact 64-bit [bit-vector query](byte-relation.smt2) returns [`unsat`](z3.log) for a difference, proving the selected byte values equal under Java's fixed-width shift semantics. Applying the unchanged `Byte.toUnsignedInt` to equal bytes therefore yields equal array indices. This independent local identity is not a KeY proof of the whole conversion.

The old code allocates a byte array while the new code does not. The local value query does not cover allocation failure, the Node48 mutations, or the full commit's public behavior. No official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/1de68254/check_source.py
source benchmarks/env.sh
printf '1\n' | java -Duser.home=/tmp/veriop-key-1de -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/1de68254/Node16FirstByteRelation.java
benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 history-eq/java/RoaringBitmap/1de68254/byte-relation.smt2
```

The KeY input directory also contains `ShiftRelation.java`; selecting contract 1 targets `Node16FirstByteRelation.same`.
