# RoaringBitmap `23a855bf`: `LongUtils` high/low reconstruction

The sampled commit `23a855bf2c1d31d6e29143c699a8219a17ca0d75` has parent `0be3468ed826e1c163e4280ba63e1f71f7519be6`. It changes nine paths, including ART traversal and `Roaring64Bitmap`; the saved [parent](LongUtils.old.txt), [child](LongUtils.new.txt), and [diff](longutils.diff) cover only `LongUtils.java`. [`check_source.py`](check_source.py) verifies all three files byte-for-byte against the historical Git objects ([result](source-check.log)).

**Selected verdict: `NOT_EQUIV` at public binary API scope.** The exact old
`LongUtils` class declares `compareHigh(byte[], byte[])` and
`isMaxHigh(byte[])`; the new class removes those signatures. The
[binary-client reproducer](run_binary_client.py) compiles both exact historical
classes, compiles one [client](BinaryClient.java) against the old class, and
runs that same client with each version. The old class returns `-1` and `true`;
the new class throws `NoSuchMethodError` for each call. Exact Git blob IDs and
all four outcomes are in [the result](binary-result.json). This is an existing
client compatibility counterexample, independent of the other changed files.

The [KeY 3.0.0 relation](key/LongUtilsRelation.java) compares the exact old and new `toLong(byte[], char)` expressions for a non-null high array of at least six bytes. Its [automatic run](key/key.log) leaves **one goal open**; KeY did not prove this local relation. Its warnings about saving settings to a read-only home directory did not prevent symbolic execution, and the log contains no closed proof.

The independent [QF_BV query](tolong.smt2) represents each of the six bytes and the unsigned 16-bit Java `char` without restricting their values. It asks whether the old and new return bits can differ. Z3 4.13.3 returns [`unsat`](z3.log), proving equality for all inputs satisfying the normal-return precondition. This is **independent Z3 evidence for one method**, not a KeY proof or a whole-commit proof. The Z3 binary is bundled with the local Kuiper package; Kuiper did not verify this commit. The other production methods and files remain outside the checked relation.

Reproduce from this directory:

```sh
python3 check_source.py
source ../../../../benchmarks/env.sh
(cd key && printf '0\n' | java -Xmx2g -jar "$KEY_JAR" --auto --timeout=60000 LongUtilsRelation.java)
../../../../benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 tolong.smt2
```

Reproduce the exact binary-client counterexample from the project root:

```sh
python3 -B history-eq/java/RoaringBitmap/23a855bf/run_binary_client.py
```

No official before/after benchmark score was measured for this historical commit.
