#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw per-stripe XXH3_accumulate_512 (accWidth=128), one target per output lane (the whole-vector target
   timed out: 8 lane-wise 64-bit 'mul nuw' overflow side-conditions in one query). Buffers passed by value.
   Under -mavx512f: old = AVX2 path, new = new AVX512 path (XXH_VECTOR auto-selection). */
#define T(K) uint64_t target_acc512_128_lane##K(U8ARGS(a), U8ARGS(i), U8ARGS(s)) { \
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64]; \
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s); \
  XXH3_accumulate_512(acc, in, sec, XXH3_acc_128bits); return acc[K]; }
T(0)
T(1)
T(2)
T(3)
T(4)
T(5)
T(6)
T(7)
