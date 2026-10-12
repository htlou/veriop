# regex `930770bb`: RegexSet capture storage

**Whole-commit/public matching verdict: `UNKNOWN`.** The historical change replaces `WhichCaptures::Implicit` with `WhichCaptures::None` in both string and byte `RegexSet` builders. `recover.py` reverses precisely those two occurrences in the available child file and matches the parent and child Git blob IDs (`a0f9b28b...` and `46c4824c...`). The exact source files are archived as `builders.old.rs` and `builders.new.rs`.

`prepare.py` extracts the four exact configuration expressions into `contract.rs`, with abstract support types for the unchanged builder API. Charon and Aeneas generate `lean/Contract.lean`; Lean checks `Equivalence.lean` without `sorry` or `admit`. It proves, for both string and byte sets and any incoming configuration, that the `MatchKind::All` and `utf8_empty` settings agree while capture mode changes from `Implicit` to `None`.

This is a **local configuration relation**. It does not prove that the historical Thompson NFA and meta-searcher return identical public match sets, nor that memory use improves by a particular amount. The historical `Cargo.toml` blob is absent locally, so the full crate cannot be rebuilt from this tree. No official before/after benchmark score is available here. Recheck with `bash history-eq/rust/regex/930770bb8b/verify.sh` from the project root.
