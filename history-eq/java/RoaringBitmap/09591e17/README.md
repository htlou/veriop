# RoaringBitmap `09591e17`: OrderedWriter class becomes an interface

**Verdict: not equivalent at public binary API scope.** Parent `7a5b3440de141a64d318362f58055ccea52e1f33`; child `09591e17a2c4277a0db72dfa32b5b7e3a498a3c8`. The commit replaces the public concrete `OrderedWriter` class and its no-argument constructor with an interface while adding other writer implementations.

The [reproducer](run_witness.py) compiles the exact historical `OrderedWriter.java` blobs from both revisions. An [old client](Witness.java) that invokes `new OrderedWriter()` prints `true` with the old class, then throws `InstantiationError` with the new interface ([result](result.json), [run log](check.log)). [Compile-only support signatures](Support.java) replace unavailable unchanged dependencies of the old class; all their methods throw if called, and the witness only invokes the old no-argument constructor. Therefore this evidence concerns the public type/constructor, not bitmap-writing behavior.

This is a binary API counterexample for existing clients. It does not compare the new `DenseOrderedWriter` or `AdaptiveOrderedWriter` algorithms or measure their performance.

Run from the project root:

```sh
python3 history-eq/java/RoaringBitmap/09591e17/run_witness.py
```
