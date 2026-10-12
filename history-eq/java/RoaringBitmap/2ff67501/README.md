# RoaringBitmap `2ff67501`: skip a redundant array resize

Commit `2ff67501ff9ddf7a556f4aac229828154d889348` changes only the production `extendArray(int k)` condition in `RoaringArray` and `MutableRoaringArray` from `size + k >= keys.length` to `size + k > keys.length`; the same commit adds tests. [`check_source.py`](check_source.py) compares the [exact production diff](source.diff) and both [parent](RoaringArray.old.txt) and [child](RoaringArray.new.txt) source files, plus the mappeable [parent](MutableRoaringArray.old.txt) and [child](MutableRoaringArray.new.txt), to the local Git objects.

**Verdict: EQUIV_PARTIAL.** The guards differ only at `size + k == keys.length`. At that boundary the parent calls `Arrays.copyOf` for `keys` and `values`; the child leaves both arrays in place. [KeY's small-capacity relation](BoundaryRelation.java) and [large-capacity relation](../2ff67501-large/BoundaryLargeRelation.java) prove that a copied `char[]` preserves an arbitrary previously used key and leaves enough capacity. Each relation and its copy-helper contract closes with zero open goals: [small boundary](small-boundary-proof.log), [small copy](small-1-final.log), [large boundary](../2ff67501-large/large-boundary-proof.log), [large copy](../2ff67501-large/large-copy-proof.log). The large proof assumes two capacity inequalities; the [32-bit Z3 checks](capacity.smt2) establish those inequalities for `1024 <= length <= 100000` ([result](capacity-z3.log)).

The proof models `Arrays.copyOf` by a separately proved element-preserving copy loop. It covers previously used `keys` entries when `0 <= size`, `0 <= k`, `size + k == capacity`, and `capacity <= 100000`. The exact source shows that all other guard outcomes take the same branch. It does **not** prove the full historical classes, the `values` reference-array contents, memory-allocation failures, or equivalence of all public bitmap operations. The separate [`Object[]` attempt](../2ff67501-value/ValueBoundaryRelation.java) proves its copy helper but leaves one boundary goal open in each capacity branch ([small](../2ff67501-value/key-1-frame.log), [large](../2ff67501-value/key-2-frame.log)). No official historical benchmark score was measured.

Reproduce from the project root after `source benchmarks/env.sh`:

```sh
python3 history-eq/java/RoaringBitmap/2ff67501/check_source.py
z3 -smt2 history-eq/java/RoaringBitmap/2ff67501/capacity.smt2
printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/2ff67501/BoundaryRelation.java
printf '1\n' | java -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/2ff67501/BoundaryRelation.java
printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/2ff67501-large/BoundaryLargeRelation.java
printf '1\n' | java -jar "$KEY_JAR" --auto --timeout=60000 history-eq/java/RoaringBitmap/2ff67501-large/BoundaryLargeRelation.java
```
