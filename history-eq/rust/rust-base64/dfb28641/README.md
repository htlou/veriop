# rust-base64 `dfb28641`: concrete API inequivalence

The parent and child differ at the seventh byte of an eight-byte fast decode chunk: the child decodes the sixth input byte twice (`>>16`) instead of decoding the seventh (`>>8`). The changed code is in the historical `src/lib.rs` blobs recorded in `result.json`.

Run `python3 history-eq/rust/rust-base64/dfb28641/reproduce.py` from the project root. It builds both exact historical crate revisions offline and calls the same public `base64::decode` API on each. On valid input `aGVsbG8gd29ybGQh`, the parent returns `hello world!` and the child returns `hella\xa0world!`. An invalid seventh byte also changes `Err(InvalidByte(6, 63))` into `Ok(...)`. Either input disproves equivalence; the second demonstrates an error-handling difference too.

This is an executable historical counterexample, not an Aeneas proof. Aeneas stops while translating `decode_mode_buf` because it does not support early returns inside loops; see `../work/dfb2864/DbufOld-aeneas.log` and `DbufNew-aeneas.log`. No official benchmark delta is established for this historical commit.
