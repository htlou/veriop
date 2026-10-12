# EverParse seeded nonkeyword optimization screen

The pinned `src/` history has 4,192 source commits: 420 keyword candidates and 3,772 other commits. The latter were shuffled with seed `veriop-history-v1:everparse:nonkeyword` and checked for exact changed blobs in that fixed order. The [raw audit](everparse-nonkeyword-first3772-blob-audit.json) found 16 commits with complete changed blobs locally. None of those 16 matched the metadata work-reduction cues used in this screen; this does not rule out optimization intent elsewhere in their diffs.

Eight nonkeyword commits have explicit runtime or generated-code optimization intent. Every one lacks at least one exact historical changed blob locally, so no source-matched F* relation or generated-output check ran. They enter the [optimization sample](everparse-optimization-sample.json) as `UNKNOWN`; their messages are intent evidence, not measured speedups or semantic proofs.

| Seeded draw | Commit | Stated optimization | Missing changed blobs |
|---:|---|---|---:|
| 640 | `6746951e1a` | Direct U16 read avoids extracted-C widen/narrow casts | 1 |
| 951 | `e0465a6858` | Removes buffer-mode stack allocation | 10 |
| 1598 | `66bb173555` | Switches existing parsing to zero-copy | 7 |
| 2148 | `5a321fdd6a` | Less inlining yields more concise extracted code | 6 |
| 2701 | `8fab632496` | Replaces a runtime assertion with a proof | 14 |
| 2954 | `6a7e713328` | Removes casts from integer validators | 2 |
| 3586 | `c35ce388e4` | Eliminates an extra `memcpy` | 6 |
| 3711 | `704bf303ab` | Uses a custom allocator to avoid eager initialization | 2 |

The metadata screen inspected 90 messages containing reduction-related cues. It is not a complete semantic review of all 3,772 diffs, and the source audit only covers changed blobs, not unchanged dependencies.
