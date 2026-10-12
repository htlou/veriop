# SCION runtime optimizations awaiting historical source

The fixed random sample includes the runtime performance commits below. Their linked upstream commit diffs establish optimization intent, and local Git metadata identifies their changed files. The exact old/new blobs listed in `history-eq/results/pinned-changed-blob-availability.json` are not available locally, so a faithful Gobra run on the complete historical changes has not started. These cases are `UNKNOWN` (unverified), not proved equal, unequal, or unsupported by Gobra.

| Commit | Changed behavior and intent | Missing changed blobs |
|---|---|---:|
| [`3c8e30fb`](https://github.com/scionproto/scion/commit/3c8e30fbdb64f27f8d166a3a116c12ca353aa601) | Serializes router headers directly into packet buffers to avoid a copy. | 5 |
| [`38e79c43`](https://github.com/scionproto/scion/commit/38e79c43faf38ebec719ac71fb65e1f814050e3b) | Improves SQLite read/write concurrency using separate pools, WAL, and immediate transactions. | 33 |
| [`60bc4e73`](https://github.com/scionproto/scion/commit/60bc4e7363fa2d851775bb980ef89407807a7cec) | Adds packet-buffer headroom to avoid payload moves when underlays need prepend space; also changes packet-auth length handling. | 12 |
| [`90de96d6`](https://github.com/scionproto/scion/commit/90de96d6404a5e4fa56ea020187bff8ab5b501bc) | Refactors router links to reduce address copies and map lookups. | 25 |
| [`a9beead8`](https://github.com/scionproto/scion/commit/a9beead824dddb904b91fe5e74ba83d2679a765f) | Switches production random-number calls to `math/rand/v2`, with explicit upstream performance motivation. | 27 |
| [`ab37c7af`](https://github.com/scionproto/scion/commit/ab37c7af9060b949ba35de8f24f510af9b0817c6) | Splits border-router packet processing into receiver, processing, and forwarder goroutines. | 11 |
| [`b4a20118`](https://github.com/scionproto/scion/commit/b4a20118b05e5bb9e385f8ba13e0a7aad8d8dc36) | Moves special-packet slow-path work out of the asynchronous fast path. | 8 |
| [`b878f8f6`](https://github.com/scionproto/scion/commit/b878f8f61d3773fd2a605b109a343b9f473e6eda) | Tunes router processor count to available cores; includes benchmark setup changes. | 2 |
| [`be9b1593`](https://github.com/scionproto/scion/commit/be9b15933cfb5ecbe1a1d7f66e70de967b76d80e) | Reduces router allocation, copying, and garbage collection with pooled packet state. | 23 |
| [`cf714402`](https://github.com/scionproto/scion/commit/cf7144020526cdfce6f92f77fa41b0d80c1c8fd0) | Moves work into specialized router links to avoid repeated lookups and address copies. | 20 |
| [`f51e6dab`](https://github.com/scionproto/scion/commit/f51e6dab7a36efbccbd2a08aea4a2b4ca1cedc68) | Switches the revocation cache to typed keys and single-key lookups to avoid conversion and map allocation. | 16 |

The upstream SQLite commit reports an internal stress test, but this workspace has no reproduced official before/after benchmark score for any of these historical pairs. No whole-program equivalence verdict is established.
