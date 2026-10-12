# RoaringBitmap `12f1d205`: partial radix sort

Commit `12f1d205b475fe39c7ee31fada2c3811dc61c0e8` changes only `Util.partialRadixSort(int[])`. [`check_source.py`](check_source.py) verifies the saved [parent](Util.old.txt), [child](Util.new.txt), and [complete diff](source.diff) byte-for-byte against the two Git revisions ([log](source-check.log)). The method still executes two stable counting-sort passes, at shifts 16 and 24. The changed bucket formulas are `(x & mask) >>> shift` versus `(x >>> shift) & 0xFF`, where the old mask is `0x00FF0000` then `0xFF000000`. The candidate also skips clearing the local histogram after the second pass, when no further pass reads it.

**Verdict: `EQUIV_PARTIAL` for the two changed bucket formulas; `UNKNOWN` for the full method.** The [KeY 3.0.0 relation](key/RadixDigitRelation.java) asks whether the two bucket formulas agree for every Java `int` in both passes. The [automatic run](key/key.log) leaves two goals open; the [KeY-to-Z3 attempt](key/key-smt.log) returns `unknown` after 45 seconds and leaves two goals open. Neither is a closed KeY proof of the method or even of the local formulas.

Independently, the [QF_BV query](radix-digit.smt2) checks both 32-bit identities over every `int`; Z3 4.13.3 returns [`unsat`](z3.log). This proves only the bucket-index rewrites. [Both exact historical methods](run_check.py) also compile against the same support JAR and return the same SHA-256 digest over 8,320 deterministic arrays, including signed edge values ([result](result.json)). The identical surrounding loop bodies and dead final histogram reset support equivalence of sorted output, but that whole-array claim has not been discharged by the selected checker. The Z3 executable is bundled with the local Kuiper package; Kuiper did not verify this commit.

Reproduce from this directory:

```sh
python3 run_check.py
source ../../../../benchmarks/env.sh
(cd key && printf '0\n' | java -Duser.home=/tmp/veriop-key-12f1 -Xmx2g -jar "$KEY_JAR" --auto --timeout=60000 RadixDigitRelation.java)
../../../../benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 radix-digit.smt2
```

No official before/after benchmark score was measured for this historical commit.
