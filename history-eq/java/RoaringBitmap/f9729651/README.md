# RoaringBitmap `f9729651`: public aggregation API break

**Verdict: not equivalent at public binary API scope.** Parent `4a940d3539d8410bcbe7a05b30abf4fe2abdb086`; child `f97296518a6647275cbd6101cbf68de55687a96d`. The commit adds lower-memory aggregation variants but replaces two existing public `workShyAnd(bitmaps...)` methods with buffer-taking signatures.

The [reproducer](run_witness.py) extracts the exact old and new `FastAggregation` and `BufferFastAggregation` Java blobs from Git, compiles each pair against the pinned support JAR, then compiles one [client](Witness.java) against the old classes. The client prints `true` for both calls with old classes. With new classes on the same runtime classpath, each call throws `NoSuchMethodError`; exact blob IDs and outputs are in [the result](result.json) and [run log](check.log). The support JAR supplies unchanged dependencies; both changed classes come from their exact historical revisions.

This counterexample establishes lost binary compatibility for existing public callers. It does not assert that the new `and(...)` method computes a wrong bitmap, nor does it measure performance.

Run from the project root:

```sh
python3 history-eq/java/RoaringBitmap/f9729651/run_witness.py
```
