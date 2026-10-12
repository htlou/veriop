# RoaringBitmap `7f280458`: range-container construction

**Verdict: partial equality.** The parent is `7a4df65d930d15d89d385af81a11c80b4133c5e6`; the child is `7f280458007333c917ff61301290f68dcec0b471`. The [archived production diff](../source-screening/7f280458.source.diff) changes four container classes. [`check_source.py`](check_source.py) verifies the exact historical old/new `RunContainer` and `MappeableRunContainer` blob IDs, both `full()` call sites, the new constructors, and the diff hash ([log](source-check.log)).

The old `full()` factories construct one run with packed shorts `{0, -1}`. The new factories call `(0, 1 << 16)`, whose new constructors pack `{(short) 0, (short) ((1 << 16) - 1 - 0)}` and set the run count to one. [Z3's 16-bit query](full-run-constant.smt2) returns [`unsat`](z3.log) for a mismatch between the new length and `0xffff` (`-1` as a Java `short`). The [KeY 3.0.0 relation](FullRunRelation.java) proves the resulting packed start and length equal with **zero open goals** ([log](key.log), [CSV](FullRunRelation(FullRunRelation__samePackedFullRun()).JML normal_behavior operation contract.0.csv)). The KeY model uses the Java constant value `-1` for the new length; the separate bit-vector query validates that normalization.

This proves only the local full-run representation, for both ordinary and mappeable containers under the exact-source constructor mapping. It does **not** prove `Container.rangeOfOnes(start,last)` or `MappeableContainer.rangeOfOnes(start,last)` for arbitrary ranges, public bitmap behavior, exception/allocation behavior, or the whole four-file commit. The direct KeY attempts on the unnormalized cast left one goal open ([shift attempt](key-shift-attempt.log), [array attempt](key-array-attempt.log)); those attempts are not counted as proofs. No official historical before/after benchmark score was measured.

Reproduce from the project root with:

```sh
GIT_NO_LAZY_FETCH=1 python3 history-eq/java/RoaringBitmap/7f280458/check_source.py
benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 history-eq/java/RoaringBitmap/7f280458/full-run-constant.smt2
cd history-eq/java/RoaringBitmap/7f280458
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp -Xmx2g -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 FullRunRelation.java
```
