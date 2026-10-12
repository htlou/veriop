# RoaringBitmap `50904527`: partial `ByteBuffer` write

Commit `5090452712d0e91f2888eb7dddda2192c1dccf36` replaces `LeafNode`'s stored 64-bit key with `int keyHigh` and `char keyLow`, avoiding temporary byte arrays during serialization. [`materialize.py`](materialize.py) archives the exact parent and child production sources and diff with hashes in [`source_manifest.json`](source_manifest.json).

**Verdict: unequal for the public `Node.serialize(ByteBuffer)` call when the buffer has room for its 4-byte header and 4, but fewer than 6, bytes of the key.** With an 8-byte buffer and key `0x0102030405060000`, both historical versions throw `BufferOverflowException`. The parent first calls `ByteBuffer.put(byte[6])`, which rejects the entire key write: position 4, remaining bytes unchanged. The child calls `putInt(keyHigh)` then `putChar(keyLow)`; the first call writes four bytes before the second throws: position 8, bytes `01 02 03 04` written. Position and backing-array contents are observable after the exception. This is a capacity-boundary difference, not evidence that full-capacity serialization produces different bytes.

[`reproduce.py`](reproduce.py) checks each archived `LeafNode` and `LongUtils` byte-for-byte against its exact historical Git blob, then compiles those unmodified classes independently with the same small [`Node` stub](NodeStub.java.txt), exact historical `NodeType`, and [`witness`](Witness.java.txt). It checks that the stub's public `serialize(ByteBuffer)` method is byte-for-byte present in the unchanged historical `Node` on both sides. The run asserts and records [both results](witness.log). Other `Node` methods are omitted from the stub because the witness does not call them; this is a source-audited historical-class witness, not a full project build.

KeY 3.0.0 was separately attempted on the exact constructor/getKey arithmetic in [`LeafKeyRelation.java`](key/LeafKeyRelation.java); [one goal remained open](key/key.log). That attempt neither proves key equality nor establishes the buffer-state counterexample. The `NOT_EQUIV` classification rests on the exact-source executable witness. No official historical performance benchmark was measured.

Reproduce from the project root:

```sh
python3 history-eq/java/RoaringBitmap/50904527/materialize.py
python3 history-eq/java/RoaringBitmap/50904527/reproduce.py
```
