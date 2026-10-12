# xxHash `f7280a3`: smaller state allocations

The historical change replaces the shared 64-byte-aligning allocator with plain `malloc/free` for XXH32/XXH64 state, while XXH3 retains an aligned allocator. The complete data-bearing streaming API comparison remains `UNKNOWN` because its previous Alive2 attempts timed out.

**Commit sample verdict: `REFINES_PARTIAL`.** The [rerun record](revalidated-partial.json) checks exact parent and child source blobs against Git and the saved LLVM IR against the original run hashes. Current Alive2 reproduces six results: old→new refinement holds for the empty-input XXH32 and XXH64 `create/reset/digest/free` paths, while the reverse direction has counterexamples involving allocator failure; XXH3 `create/free` is equal in both directions. The [wrapper](wrap_api.c) defines these selected public API paths and returns a digest or failure value. This is a one-way relation for those observations, not a proof for inputs with streamed data or caller observations of allocation addresses.

Reproduce from the project root:

```sh
python3 -B history-eq/c/xxHash/f7280a3/revalidate_partial.py
```

No official historical before/after benchmark score is established here.
