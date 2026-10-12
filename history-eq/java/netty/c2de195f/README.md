# Netty `c2de195f`: public `ByteString.equals` changes behavior for a subclass

The sampled commit `c2de195f872506dacd5df5cd5507b49e1669790d` optimizes `ByteString.equals(Object)`. `materialize.py` archives the exact parent and child `ByteString.java` and places their **unchanged, exact `equals` and `hashCode` method bodies** into minimal compilable class shells. `check_source.py` checks those bodies and the archived source hashes. The shell supplies only the constructor, final `length`/`array` accessors, and the helper for the child method; the helper is never reached by this witness.

**Result: verified unequal for the public method on a valid `ByteString` subclass.** `ByteString` is public and non-final, and its public `hashCode()` is overridable. For a one-byte left operand and a zero-byte subclass right operand whose `hashCode()` throws, the parent checks unequal lengths first and returns `false`. The child calls both virtual `hashCode()` methods before the array-length comparison, so it throws `IllegalStateException`. The compiled historical method bodies produce:

```text
old: false
new: IllegalStateException(hashCode called)
```

The output is archived in `witness.log`. This is an observable API-level counterexample, not a claim that ordinary base-class `ByteString` comparisons differ. It does not establish any official benchmark performance score or whole-commit equivalence result for the other changed platform-helper code.

Reproduce from the project root:

```sh
python3 history-eq/java/netty/c2de195f/materialize.py
python3 history-eq/java/netty/c2de195f/check_source.py
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac -d /tmp/veriop-netty-c2de195f history-eq/java/netty/c2de195f/parent/ByteString.java history-eq/java/netty/c2de195f/child/ByteString.java history-eq/java/netty/c2de195f/child/PlatformDependent.java history-eq/java/netty/c2de195f/Witness.java
benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -cp /tmp/veriop-netty-c2de195f Witness
```
