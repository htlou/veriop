# RoaringBitmap `a698be65`: observable empty-prefix sharing

The exact historical [diff](source.diff) changes `BranchNode(int)` from allocating `new byte[compressedPrefixSize]` to using `Art.EMPTY_BYTES` when the size is zero. [`check_source.py`](check_source.py) verifies that this is the entire `BranchNode.java` change, records both Git blob IDs, and confirms that `Art.EMPTY_BYTES` is an empty array. It also checks the unchanged `public Node4(int)` constructor and `protected prefix` field. A client subclass of `Node4` can expose whether two nodes' `prefix` fields refer to the same array.

[KeY 3.0.0](EmptyPrefixIdentity.java) proves the distinguishing observation: two old zero-length allocations are distinct objects, while two new prefixes refer to the same shared array. The [proof log](key.log) reports **0 open goals** and `Proved`; the saved [proof](EmptyPrefixIdentity.java.auto.proof) is adjacent. A separate [native witness](native-result.json) compiles the **exact historical `BranchNode.java` on each side** with the same minimal, unchanged signature stubs and a legal same-package [observer](Observer.java). It prints `false` before and `true` after. **Verdict: `NOT_EQUIV` for protected array identity.** This does not show different bitmap contents or execute both complete historical libraries. The other `Art.java` copy change is not needed for this counterexample. No official before/after benchmark score was measured.

Reproduce the source audit and native witness from the project root with `python3 -B history-eq/java/RoaringBitmap/a698be65/check_source.py` and `python3 -B history-eq/java/RoaringBitmap/a698be65/run_native.py`. Then run KeY from this directory:

```sh
mkdir -p /tmp/veriop-key-a698be65
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-a698be65 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 EmptyPrefixIdentity.java
```
