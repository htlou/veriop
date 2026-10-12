# RoaringBitmap `9ecff9e8`: ART branch/leaf split

The exact parent and child ART packages (17 and 18 classes), plus three exact helper classes, compile separately. `run_check.py` audits the archived historical diff and each compiled source blob against Git, then runs the same `ArtProbe.java` against both revisions. A pinned newer RoaringBitmap JAR supplies needed classes outside the ART package; 17 unchanged historical production source blobs are missing from the local object store. The probe does not call the support classes directly.

The probe covers ten sizes from 1 to 512 keys, crossing ART node-size thresholds. Insert, lookup, forward/reverse traversal, DataOutput and ByteBuffer serialization/deserialization, and removal pass on both sides. Both produce the same serialization SHA-256, `677f6961751fe2d63ca6284bb3550b571c0ad0cc9b2859ebefa5111cc23c50a4` (`result.json`).

**Verdict: `UNKNOWN` (unverified).** These are concrete differential tests, not a KeY proof or an all-input equivalence check. The changed `HighLowContainer` caller, iterator removal, and untested ART states remain unproved; the support JAR also means this is not a complete historical library build.
