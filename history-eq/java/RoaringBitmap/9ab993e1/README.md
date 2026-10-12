# RoaringBitmap `9ab993e1`: short scratch buffer corrupts bitmap deserialization

Commit `9ab993e11480c6a461f0eeb38e3984995c1ffc8a` adds `RoaringArray.deserialize(DataInput, byte[])` as an optimized way to read container payloads. Its documented contract permits a non-null scratch buffer whose length is a multiple of eight, including eight bytes.

**Scoped result: `NOT_EQUIV` for the bitmap-container payload path with an eight-byte scratch buffer.** [`check_bitmap_payload.py`](check_bitmap_payload.py) extracts the exact parent `deserialize(DataInput)` and child `deserialize(DataInput, byte[])` bitmap-payload blocks from the historical Git blobs. It compiles those blocks unchanged into a small Java harness. The 8,192-byte payload has 4,104 set bits, so a serialized container with cardinality 4,104 takes this bitmap path. [Recorded run](result.json):

```text
parent first=-1 remaining=0
child first=0 remaining=8073
```

The child calculates `end - start` as seven for each eight-byte segment. It calls `readFully` for seven bytes, then copies `(end - start) / 8`, or zero, words into the bitmap array. It therefore leaves the bitmap empty and stops after consuming only 119 of 8,192 payload bytes. The parent reads all 1,024 words. This changes both the decoded bitmap and the position of the input stream.

This is an exact-source **branch-level** counterexample. The full historical classes were not compiled because required unchanged dependencies are missing locally; no whole-commit KeY proof or official before/after benchmark score is claimed.

Reproduce from the project root: `python3 history-eq/java/RoaringBitmap/9ab993e1/check_bitmap_payload.py`.
