# rust-base64 `b681bb6`: lookup-table decoder

The exact historical optimization replaces per-byte decoding with lookup
tables. In the parent, the public decoder skips `=` wherever it occurs. In
the child, `=` within a quartet is rejected. This changes a public result:
`base64::decode("Y=Q=")` returns `Ok([97])` before the commit and
`Err(InvalidByte(1, 61))` after it. The valid controls `YQ==` and `YQ`
return `Ok([97])` on both sides.

Run `python3 -B history-eq/rust/rust-base64/b681bb6/reproduce.py` from the
project root. It archives both exact Git revisions, verifies every `src/`
and `Cargo.toml` blob ID, compiles each crate with Rust 1.99 in its historical
Rust 2015 edition, and runs the same public witness. The
[machine-readable result](result.json) is a scoped `NOT_EQUIV` result for
strict return-value equivalence.

Aeneas did **not** prove or refute this pair: its parent translation stops at
`Could not match the contexts`, and its child translation rejects returns
inside nested loops. The public counterexample comes from exact historical
native execution. The commit message reports a speed objective, but no
official before/after benchmark score was measured here.
