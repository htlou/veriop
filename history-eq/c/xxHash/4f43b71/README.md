# xxHash `4f43b717`: streaming small-input fast path

**Fixed-sample verdict: `EQUIV_PARTIAL`.** This commit moves the `totalLen` update and the small-input buffered return above the local `bEnd`, secret-pointer, and optional accumulator-copy setup in `XXH3_update`. It does not change the remaining large-input body. The historical `xxhash.h` blobs in `old/` and `new/` have Git object IDs `5a5732faa71bb7b6edb7854c6ba277c7e140e1fd` and `f0ea8d654e69857fdda666d96aa59db6db49f04a`, respectively, matching `4f43b717^:xxhash.h` and `4f43b717:xxhash.h` in `history-eq/repos/xxHash`.

The same [raw wrapper](wrap_raw.c) and [public API wrapper](wrap_api.c) were compiled against both historical versions. The recorded Alive2 results are bidirectional and unbounded (`bounded: false`):

| Scope | `XXH3_STREAM_USE_STACK=0` | `XXH3_STREAM_USE_STACK=1` |
|---|---|---|
| Internal small path, symbolic `len`, guarded buffer size/nonoverlap | [equal](r_raw_st0_t1/result.json) | [equal](r_raw_st1_t1/result.json) |
| Internal large path, fixed 200-byte input and guarded state geometry/nonoverlap | [equal](r_raw_st0_t2/result.json) | [equal](r_raw_st1_t2/result.json) |
| Public 64-bit digest, 100-byte update | [equal](r_api_st0_t1/result.json) | [equal](r_api_st1_t1/result.json) |
| Public seeded 64-bit digest, 200+50-byte updates | [equal](r_api_st0_t2/result.json) | [unknown](r_api_st1_t2/result.json): reverse direction times out |
| Public 64-bit digest, 100+200-byte updates | [equal](r_api_st0_t3/result.json) | [equal](r_api_st1_t3/result.json) |
| Public seeded 128-bit digest, 100+200-byte updates | [equal](r_api_st0_t5/result.json) | [unknown](r_api_st1_t5/result.json): both directions time out |

The source-level movement is consistent with equivalence for well-formed streaming state and readable, nonoverlapping input: the crossed calculations only create locals or copy `state->acc` to a local array; the moved writes touch `state->totalLen`, `state->buffer`, and `state->bufferedSize`. This is an explanation of the transformation, not a machine-checked whole-function proof. In particular, the public API tests use fixed update lengths, and the two stack-accumulator timeout cases remain unproved. The `-O1`/`-O2` retry artifacts (`r_api_st1_o1_t2`, `r_api_st1_o2_t2`) hit unsupported LLVM noalias-scope instructions and contribute no positive verdict.
