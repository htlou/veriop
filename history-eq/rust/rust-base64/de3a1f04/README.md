# rust-base64 `de3a1f04`: public API counterexample

This historical optimization skips appending padding when `config.pad` is false, instead of appending it and popping all trailing `=` bytes. The old pop loop also removed `=` already present in the caller's output buffer when the encoded input was empty.

Run `python3 history-eq/rust/rust-base64/de3a1f04/reproduce.py` from the project root. It archives and builds the exact parent and child revisions offline, then runs the same public `encode_config_buf` call from `probe.rs`. For `input=b""`, `URL_SAFE_NO_PAD`, and an initial output buffer of `"prefix="`, the parent returns `"prefix"` and the child returns `"prefix="`. This valid input disproves equivalence of the public API behavior.

Aeneas was also attempted on both exact revisions. It stops before translation of this function at the pre-existing `let ref charset` match, reporting `Nested borrows are not supported yet` in `../work/de3a1f0/EbufOld-aeneas.log` and `EbufNew-aeneas.log`. The counterexample is from native execution, not an Aeneas proof. No official historical before/after benchmark score has been measured.
