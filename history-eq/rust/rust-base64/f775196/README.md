# rust-base64 `f775196`: linear-time line wrapping

The exact historical optimization replaces repeated insertion of line
endings with one in-place pass. With 112 deterministic input bytes and the
public `MIME` configuration (76 columns, CRLF), both revisions return the
same 154-byte encoded text with one CRLF. The returned `String` has an
observable `capacity()` of **156 before** and **154 after** under Rust 1.99.
The old size calculation budgets two CRLF endings at this exact wrap
boundary; the new calculation budgets only the one that appears.

Run `python3 -B history-eq/rust/rust-base64/f775196/reproduce.py` from the
project root. It archives both historical source trees, checks every `src/`
and `Cargo.toml` blob ID, builds offline, and runs the same public witness.
The [result](result.json) is a **scoped `NOT_EQUIV` for `String::capacity()`**,
not a difference in encoded bytes. The offline build uses cached
semver-compatible byteorder 1.5.0 on both sides and num 0.1.43 on the child;
their lockfile hashes are recorded. This is not a recreation of the 2017
dependency resolution.

Aeneas remains `UNSUPPORTED` for the full old and new encoding paths because
of nested borrows. No official before/after benchmark score was measured.
