# RoaringBitmap `55b5744c`: removed writer option

**Verdict: `NOT_EQUIV` at public binary API scope.** The commit removes the public `RoaringBitmapWriter.Wizard.optimiseForBitmaps()` method. The [reproducer](run_witness.py) compiles the exact historical `RoaringBitmapWriter.java` Git blobs from the parent and child, then compiles one [client](Witness.java) against the parent. That unchanged client returns `true` with the parent and throws `NoSuchMethodError` with the child ([results](result.json), [log](check.log)).

[Compile-only support classes](Support.java) stand in for two unchanged writer implementations whose old constructors do not match the current support JAR. The witness never calls those classes; it exercises only the exact historical public wizard method. This is an intentional API removal, not evidence that bitmap contents differ or that performance regressed. No official historical before/after benchmark score is established.

Run from project root: `python3 history-eq/java/RoaringBitmap/55b5744c/run_witness.py`.
