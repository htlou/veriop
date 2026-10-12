# xxHash `d14b2934`: XXH32 streaming state layout

**Verdict: `EQUIV_PARTIAL`.** The historical change replaces four named XXH32 accumulator fields with `v[4]` and updates reset, update, and digest. The [exact old/new header diff](source.diff) comes from Git blobs `86fe5a1f7aedefa52bd899dc61de5972daa464d4` and `2cf82a03a552423f3d29b8bdeead9f64aaf84c0d`.

The identical [wrapper](wrapper.c) calls the complete historical `XXH32_reset`, `XXH32_update`, and `XXH32_digest` sequence with symbolic seed and input bytes at fixed lengths 16, 32, and 64. Clang 20 `-O1` produces distinct old/new LLVM functions with all xxHash callees inlined. Alive2 proves each of the three functions in both directions with a loop-unroll bound of six, above the maximum four 16-byte stripe iterations in these fixed cases: [16-byte forward](hash16-forward.log), [16-byte backward](hash16-backward.log), [32-byte forward](hash32-forward.log), [32-byte backward](hash32-backward.log), [64-byte forward](hash64-forward.log), and [64-byte backward](hash64-backward.log). `--fail-src-ub` reports no vacuous-source failure. [Result metadata](result.json) and [`reproduce.py`](reproduce.py) record and rerun the checks.

This proves equal returned hashes only for the three fixed input lengths under Alive2's defined-input LLVM model. Arbitrary lengths, intermediate state/ABI observations, other XXH32 calls, and the whole commit remain unproved. No official historical before/after benchmark score was measured.

The earlier [multi-segment study](../d14b293/r_s32_val/result.json) proved seven selected call sequences and timed out on four others. These one-update checks add fixed 32- and 64-byte coverage. The optimization-only table records `EQUIV_PARTIAL`; the earlier timeouts leave whole-commit equivalence unknown.
