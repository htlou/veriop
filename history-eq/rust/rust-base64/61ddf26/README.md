# rust-base64 `61ddf26`: indexed loops to byte iterators

The exact historical commit changes only `src/lib.rs`: `decode_ws` filters whitespace via `input.bytes()` instead of indexed `input.as_bytes()`, and `decode_mode` uses `input.bytes().enumerate()` instead of an indexed loop. [`check_source.py`](check_source.py) verifies both Git blobs, the complete changed-file set, and that the rest of the file and `decode_mode`'s byte-processing body are unchanged after the index-to-iterator substitution. It checks that both whitespace spellings contain exactly space, tab, line feed, form feed, and carriage return.

[The Lean theorem](IteratorRelation.lean) proves for every byte list that indexed traversal returns the same ordered bytes as iteration, that filtering those bytes with any predicate agrees, and that indexed versus enumerated traversal produces the same result for **any** state update that may return an error early. [`verify.py`](verify.py) rechecks the source and theorem; [the log](lean.log) shows no `sorryAx`. This is a source-level proof of the two iterator rewrites, including the first error index and unchanged successful updates. It uses the Rust standard meaning of `str::bytes()` and slice indexing as the source-to-list mapping.

**Selected Aeneas verdict remains `UNSUPPORTED`.** The historical new `decode_mode` translation stops with “Could not match the contexts,” and the new `decode_ws` translation emits an iterator `filter` operation absent from its Lean standard-library model. The independent Lean relation does not make those generated functions typecheck or prove allocation failure, panic payloads, and every public observation. No official before/after benchmark score was measured.

Recheck from the project root:

```sh
python3 -B history-eq/rust/rust-base64/61ddf26/verify.py
```
