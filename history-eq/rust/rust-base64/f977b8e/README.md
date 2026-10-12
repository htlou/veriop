# rust-base64 `f977b8e`: observable return capacity

The historical optimization changes the private `encoded_size(0)` from 4 to 0. The [Aeneas-generated Lean proof](../lean/Cf977b8e/Proof.lean) establishes this difference without extra axioms; its [current recheck](lean-current.log) passes. It does not model `String::with_capacity` or prove a whole public API relation.

Run `python3 -B history-eq/rust/rust-base64/f977b8e/reproduce.py` from the project root. It checks the exact parent/child `src/lib.rs` Git blobs, builds both complete historical crates with Rust 1.99 and the locally cached semver-compatible `byteorder` 1.5.0, then calls public `encode_mode(b"", Standard)`. Both return the empty string, but the old return has capacity **4** and the new return has capacity **0** on this toolchain. Because callers can call `String::capacity()`, this is a public-API counterexample for that observable property. The changed function does not use `byteorder`.

The result does **not** show different encoded text, nor does it turn the opaque Aeneas `String` model into a public-method proof. It establishes concrete inequivalence under the recorded native build. No official historical benchmark before/after score was measured; Kuiper was not used.
