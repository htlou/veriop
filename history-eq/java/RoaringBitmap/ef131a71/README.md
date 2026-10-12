# RoaringBitmap `ef131a71`: bulk in-place merges

**Verdict: EQUIV_BOUNDED.** Parent `e140aee9358b1e33be6e5b0cd8f043daef05299a`; child `ef131a71e0aa6cd67b4ea649c957b1cd4c52b141`. The commit replaces per-key insert/remove work in ordinary and buffer in-place OR, XOR, and lazy OR with `mergeBulk`. It also adds the library's official `InPlaceMergeBenchmark` JMH class.

[run.py](run.py) extracts the four exact changed production Java files from each historical Git revision. The [manifest](source-manifest.json) records their object IDs and the SHA-256 of the newer `roaringbitmap-1.6.24.jar` used for eight unavailable unchanged historical helper classes. Both historical versions compile with Java 21 against that pinned support JAR. Runtime logs confirm that the historical class directories, rather than the support JAR, supplied the ordinary and buffer bitmap classes.

The [ordinary](MergeDomainCheck.java) and [buffer](BufferMergeDomainCheck.java) checks enumerate every pair of 64 canonical bitmaps formed from three high keys and two low bits per key. They repeat this for adjacent keys `{0,1,2}` and unsigned-boundary keys `{0,32768,65535}`. For each pair, they run in-place OR, XOR, and lazy OR followed by repair: **24,576 cases per API per version**. Each result's full array and cardinality are compared with an independent set-operation oracle; the source bitmap is checked for mutation. The [ordinary parent](ordinary-old.log), [ordinary child](ordinary-new.log), [buffer parent](buffer-old.log), and [buffer child](buffer-new.log) all pass. The domain includes source-only interior keys and XOR cancellation, which trigger the changed bulk-merge branches.

This is exhaustive only for that finite input domain and its array-container representations. Other key counts, low-bit patterns, container types, aliases, and exception/side-effect behavior remain unproved. The unchanged historical helper blobs are unavailable, so the runs use the pinned newer JAR and do not establish whole-commit equivalence under exact historical dependencies. KeY was not run for this case.

The official `InPlaceMergeBenchmark` source has the same Git object ID at the optimization commit and the current build (`78d1d0b125e95396c64752c8e24810061d57645b`). The built JMH JAR has SHA-256 `907bfcb96f057eb8ff6c4d367868ea8e179c4eef097d81177f9893f7082dd307`. With `containers=1024`, one thread, two 1-second warmups and five 1-second measurements, its **official `AverageTime` metric** yielded these diagnostic scores (µs/op, lower is better):

| Method | Input pattern | Parent score ± JMH 99.9% error | Child score ± JMH 99.9% error | Child delta |
|---|---|---:|---:|---:|
| lazy OR | interleaved | 127.576 ± 63.175 | 63.636 ± 72.773 | −50.12% |
| OR | interleaved | 99.619 ± 68.726 | 38.114 ± 5.667 | −61.74% |
| XOR | interleaved | 89.475 ± 14.254 | 50.917 ± 48.223 | −43.09% |
| lazy OR | append | 48.220 ± 14.511 | 50.039 ± 27.173 | +3.77% |
| OR | append | 36.270 ± 9.548 | 49.361 ± 75.344 | +36.09% |
| XOR | append | 39.075 ± 4.179 | 46.581 ± 43.377 | +19.21% |

The [parent](jmh-old.json) and [child](jmh-new.json) JSON files and their [parent](jmh-old.log) / [child](jmh-new.log) logs preserve the JMH results. The [default-fork attempt](jmh-fork-denied.log) failed because the sandbox denied JMH's communication socket (`SocketException: Operation not permitted`), so both sides used `-f 0`; JMH explicitly warns that non-forked runs are for debugging, and these scores are **not an accepted performance claim**. The wide errors also preclude a reliable claim about the append controls or the magnitude of the interleaved improvement. No custom performance metric was substituted.

Reproduce from the project root with `python3 -B history-eq/java/RoaringBitmap/ef131a71/run.py`.
