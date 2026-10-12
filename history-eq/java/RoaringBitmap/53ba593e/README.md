# RoaringBitmap `53ba593e`: run-container `checkedAdd`

The [historical production diff](source.diff) changes two `checkedAdd` methods. The parent always calls `RunContainer.add` or `MappeableRunContainer.add` and reports whether the cardinality increased. The child checks `contains` first for those run containers, calls `add` only when absent, and returns that absence decision. Other container branches retain cardinality comparison.

The unchanged parent/child `RunContainer.java` blob is `0c16aa5f7f66a41f6d22b6c8affe33c54470b790`; the unchanged `MappeableRunContainer.java` blob is `630231f016e3c87aa45019209005fae408e96e8f`. Their [run-container](RunContainer.parent.snippet.txt) and [mappeable](MappeableRunContainer.parent.snippet.txt) source snippets show that `add` returns the same container before any write when its search finds the value or the predecessor run covers it. `contains` uses the same search and interval test. The exact diff SHA-256 is `eb430f4aed006afaaf3cf6772d8aa67397fd99ad1b55c636e4624e57b3f769c2`.

The [KeY relation](RunCheckedAddRelation.java) compares the source-derived early-return and membership decisions for every 16-bit value, valid search result, and `0 <= oldCard <= 65536`. Given the run-container add contract that an absent value increases cardinality by exactly one, it also compares old and new `checkedAdd` return values. [KeY 3.0 proves this local relation with zero open goals](key.log); the [saved proof](RunCheckedAddRelation.java.auto.proof) is available.

**Verdict: `EQUIV_PARTIAL` for the run-container decision under the stated add contract.** The proof does not load either complete historical class, prove the underlying search/add contract, compare setter side effects, or establish whole-method equivalence. No official before/after benchmark was measured.

Reproduce from the project root:

```sh
cd history-eq/java/RoaringBitmap/53ba593e
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-53ba593e -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 RunCheckedAddRelation.java
```
