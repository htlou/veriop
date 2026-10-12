# Netty `fc28cbbc`: Recycler claim fast path

**Verdict: partial, conditional equality.** The parent is `d3b789009f36feb41287c1e03bc26aa81a3349f4`; the child is `fc28cbbc8839feacfa1cb7cfbda209d9ab8bad3b`. The only changed production file is `common/src/main/java/io/netty/util/Recycler.java`. [`check_source.py`](check_source.py) validates its exact old/new Git blobs (`0c56b9a38a2b5a667ab4349a93042ed181f887a6`, `381c14bedde0721afa0ad35cb4aefd872dc5b1f7`) and the archived [diff](../source-screening/fc28cbbc.java.diff) ([log](source-check.log)).

The old `LocalPool.claim()` repeatedly polls until `DefaultHandle.availableToClaim()` succeeds, using `AtomicIntegerFieldUpdater.compareAndSet(AVAILABLE, CLAIMED)`. The new code polls once and calls `toClaimed()`, which asserts `AVAILABLE` and writes `CLAIMED`. The [source-mapped KeY relation](ClaimRelation.java) checks the one-polled-handle transition under the explicit assumptions that a non-null polled handle is `AVAILABLE` and that no concurrent write intervenes during the old CAS. It proves equal returned-handle decisions and equal final states with **zero open goals** ([KeY log](key.log), [CSV](ClaimRelation(ClaimRelation__sameOnePoll(boolean,int)).JML normal_behavior operation contract.0.csv)). The null-poll case is also covered.

This does **not** establish the queue invariant, the success of a real atomic CAS under concurrent interference, the behavior of repeated polls when a non-available handle appears, memory-order effects, assertion behavior outside the precondition, or full `Recycler.get()` equivalence. If a polled handle is not `AVAILABLE`, the old and new local paths can differ; the proof deliberately excludes that state. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/netty/fc28cbbc/check_source.py
cd history-eq/java/netty/fc28cbbc
printf '0\n' | /srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home=/tmp -Xmx2g -jar /srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar --auto --timeout=60000 ClaimRelation.java
```
