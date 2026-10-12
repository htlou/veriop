# RoaringBitmap `c79d0d66`: ART child replacement

**Verdict: `NOT_EQUIV` at public binary API scope.** The child changes `Node48.replaceChildren(Node[])` from public to package-private. The [reproducer](run_witness.py) compiles all 17 exact historical ART Java sources on each side and one [external client](Witness.java) against the parent. That unchanged client prints `ok` with the parent and throws `IllegalAccessError` with the child ([results](result.json), [log](check.log)). A pinned newer RoaringBitmap JAR supplies unchanged dependencies needed for compilation; the witness does not call their code.

This is an observable access-control difference for existing external clients. It does not show a difference in valid ART child replacement, bitmap contents, or performance. No official historical before/after benchmark score is established.

Run from project root: `python3 history-eq/java/RoaringBitmap/c79d0d66/run_witness.py`.
