# RoaringBitmap `6d5dcff3`: De Morgan rewrite in range scans

**Verdict: `EQUIV` for Java source behavior of this commit.** Commit `6d5dcff3527215ce6b50a67aa237523da2421692` changes three expressions in `RangeBitmap.java`, its only changed file. The [full parent](RangeBitmap.old.txt), [full child](RangeBitmap.new.txt), and [diff](source.diff) are saved here. [`check_source.py`](check_source.py) checks both snapshots against the pinned Git history, confirms the only full-file differences are these three replacements, and runs the Z3 bit-vector check:

```java
((~value & ~containerMask) & mask)  ->  (~(value | containerMask) & mask)
```

The [QF_BV query](demorgan.smt2) asks for any 64-bit values that make the old and new operands differ; Z3 4.13.3 returns `unsat` ([version](z3-version.log), [result](z3.log)). Java `long` bitwise operations have the same 64-bit semantics. Equal operands give the same `Long.numberOfLeadingZeros` result, and every surrounding statement is byte-identical. This proves equality of the changed class's source behavior for every execution, including all three changed sites.

[KeY 3.0.0's separate relation](RangeSkipRelation.java) remains open: the [automatic run](key.log) leaves one goal, and [30-second](key-smt-script.log) and [120-second](key-smt-120s.log) SMT retries report `unknown`. The equality verdict comes from the complete source audit plus direct Z3 proof, **not** a closed KeY or Kuiper proof. The Z3 executable is bundled with the local Kuiper installation; Kuiper did not check this commit.

Reproduce from this directory:

```sh
python3 check_source.py
source ../../../../benchmarks/env.sh
printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 RangeSkipRelation.java
export PATH="../../../../benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin:$PATH"
java -jar "$KEY_JAR" --auto --timeout=60000 "$PWD/relation-smt.key"
```

No official before/after benchmark score was measured for this historical commit.
