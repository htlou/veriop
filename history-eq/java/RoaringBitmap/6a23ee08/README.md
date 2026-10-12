# RoaringBitmap `6a23ee08`: fixed-index decrement

The exact parent/child [source diff](source.diff) changes only one call in `MappeableRunContainer.add`: `decrementValue(0)` becomes `decrementValue()`. The helper changes its absolute `CharBuffer` access from index `2 * index` to index `0`. [`check_source.py`](check_source.py) verifies that these two replacements produce the complete child file and records the historical Git blob IDs in [`source-audit.json`](source-audit.json). The sole old call passes zero, within the branch extending the first run.

[KeY 3.0.0](DecrementValueRelation.java) first proved equality of the changed first cell. The stronger [full-buffer relation](FullBufferRelation.java) now proves that **every** cell is equal after the old/new decrement on distinct equal starting arrays of any positive length; its [log](full-buffer-key.log) reports zero open goals and `Proved`, with the saved [proof](FullBufferRelation.java.auto.proof). [`verify_full_buffer.py`](verify_full_buffer.py) reruns the exact-source audit and KeY, then records source, model, log, and proof hashes in the [result](full-buffer-result.json).

**Scoped verdict: `EQUIV` for single-threaded normal functional state.** The helper is private, and the complete historical file contains exactly one call, passing literal zero. Substituting that argument turns the old helper's `2 * index` reads and writes into the child's index-zero reads and writes in the same order; every other source statement is identical. The KeY proof covers the entire modeled buffer, not just its first cell. This source-level composition covers normal `MappeableRunContainer` behavior under valid absolute `CharBuffer.get/put` access. It does not establish reflective method-shape observations, exception stack traces or resource failures, concurrent observations, timing, or a full historical dependency build. No official before/after benchmark score was measured.

Reproduce from the project root with `python3 -B history-eq/java/RoaringBitmap/6a23ee08/verify_full_buffer.py`. The earlier first-cell proof can be rerun separately from this directory:

```sh
mkdir -p /tmp/veriop-key-6a23ee08
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp/veriop-key-6a23ee08 -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 DecrementValueRelation.java
```
