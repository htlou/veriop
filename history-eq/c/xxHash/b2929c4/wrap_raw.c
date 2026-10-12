#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: AVX512 scrambleAcc (changed) + accumulate_512 (unchanged control); buffers passed by value */
void target_scramble_avx512(uint64_t* out, U8ARGS(a), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(sec,0,s);
  XXH3_scrambleAcc_avx512(acc, sec);
  memcpy(out, acc, 64);
}
