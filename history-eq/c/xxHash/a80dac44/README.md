# xxHash `a80dac44`: SSE2 target attributes

The change adds SSE2 target attributes to the dispatcher's SSE2 functions and removes a conflicting `no-sse3` attribute from its scalar wrappers. Run `python3 -B history-eq/c/xxHash/a80dac44/reproduce.py` from the project root to audit the exact historical Git blobs and compile both `xxh_x86dispatch.c` revisions with the same x86-64-v3 flags.

On x86-64-v3, the parent fails with an `always_inline` target-feature conflict, while the child compiles under both Clang 20 and GCC 11. This configuration remains unsupported for an old/new IR comparison.

**Commit verdict: `EQUIV_PARTIAL`.** With baseline `-march=x86-64`, both exact historical translation units compile. [`verify_x86_baseline.py`](verify_x86_baseline.py) checks each source blob against its Git object ID, compiles both with Clang 20 `-O2`, and runs bidirectional Alive2 on all 15 matched functions. [The log](alive2-x86-baseline.log) reports 15 correct transformations, zero incorrect, zero failed to prove, and zero Alive2 errors. The normalization removes the same alias attributes and non-value metadata from both IR modules, plus alias-scope declaration calls; it leaves computed values and memory operations in place. Two comparisons require validation; the other 13 are syntactically equal after normalization. The [result record](x86-baseline-result.json) lists the exact scope and source blobs.

This proves the selected translation unit under baseline x86-64 LLVM semantics, not all x86 variants, compiler settings, public library use cases, or timing behavior. No official historical xxHash benchmark delta was measured. Reproduce the supported check with:

```sh
python3 -B history-eq/c/xxHash/a80dac44/verify_x86_baseline.py
```
