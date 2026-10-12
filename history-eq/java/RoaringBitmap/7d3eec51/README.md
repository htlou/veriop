# RoaringBitmap `7d3eec51`: faster `toString()` construction

**Verdict: unsupported by the installed KeY workflow.** Parent `0769ca90969f30228deac6591cb7f3bd8c9b6ee9`; child `7d3eec51ef8aaa83ba058178f35e939ae1aaaac6`. The [exact historical diff](../source-screening/7d3eec51.source.diff) changes `StringBuilder` initial capacity and literal-string appends to character appends in eleven production Java files. It includes container, bitmap, and recommender string paths. No official before/after benchmark score was measured.

The [feature probe](key/AppendRelation.java) uses the same changed JDK operations: default versus preallocated `StringBuilder`, `append(String)` versus `append(char)`, and `toString()`. KeY stops **before proof search** at `UnsolvedSymbolException` for `StringBuilder` ([first log](key/key.log)); spelling it `java.lang.StringBuilder` gives the same failure ([second log](key/key-qualified.log)). No old/new relation, equivalence proof, or counterexample follows from these runs. The probe is not a substitute for loading the eleven historical methods; it establishes that their central JDK type is outside this installed KeY model.

The source changes are consistent with equal normal-return strings, but this has not been machine-checked for the historical methods. Allocation and exception behavior are also unproved. This fixed-sample entry is therefore `UNSUPPORTED`, not `EQUIV`.

Reproduce the frontend boundary from the project root:

```sh
source benchmarks/env.sh
cd history-eq/java/RoaringBitmap/7d3eec51/key
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -XX:-UsePerfData -jar "$KEY_JAR" --auto --timeout=60000 AppendRelation.java
```
