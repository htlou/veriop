# xxHash `4b12376`: AVX-512 stripe accumulation

**Selected result: `EQUIV_PARTIAL`; whole-commit result: `UNKNOWN`.** This historical change adds an AVX-512 `XXH3_accumulate_512` path. The archived parent and child `xxh3.h`, `xxhash.h`, and `xxhash.c` files match their exact Git blob IDs. With the recorded Clang 20 `-O3 -mavx512f -DXXH_NO_INLINE_HINTS=1` build, the parent selects AVX2 and the child selects AVX-512.

The [64-bit](wrap_raw_lanes64.c) and [128-bit](wrap_raw_lanes128.c) stripe wrappers pass arbitrary 64-byte accumulators, input, and secret by value. Each returns one of the eight output lanes. Their compiled LLVM functions have no unresolved calls. [`revalidate_lanes.py`](revalidate_lanes.py) rebuilt all 16 functions from the historical sources, matched the archived LLVM hashes, verified the modules, and reran Alive2 in both directions. All eight lanes in each mode passed old→new and new→old: [64-bit forward](r_raw_lanes64/recheck-fwd.log), [64-bit reverse](r_raw_lanes64/recheck-bwd.log), [128-bit forward](r_raw_lanes128/recheck-fwd.log), and [128-bit reverse](r_raw_lanes128/recheck-bwd.log). Each run reports eight correct transformations, zero incorrect, zero unresolved, and zero checker errors. The [machine-readable result](revalidated-lanes.json) records the exact scope and source IDs.

This proves one-stripe accumulation for the specified build, not complete XXH3 hashes, long-input loops, other AVX-512 helpers, or the entire commit. The earlier full public-hash Alive2 attempts timed out. No official before/after performance score is claimed.

Reproduce from the project root:

```sh
python3 -B history-eq/c/xxHash/4b12376/revalidate_lanes.py
```
