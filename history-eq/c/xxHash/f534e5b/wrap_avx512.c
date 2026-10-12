#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: one stripe of AVX512 accumulation / one scramble; acc, 64B input, 64B secret = scalar args */
void target_acc512_avx512(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512_avx512(acc, in, sec);
  memcpy(out, acc, 64);
}
void target_scramble_avx512(uint64_t* out, U8ARGS(a), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(sec,0,s);
  XXH3_scrambleAcc_avx512(acc, sec);
  memcpy(out, acc, 64);
}
