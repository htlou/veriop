#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw per-stripe: XXH3_accumulate_512 (both accWidth) and XXH3_scrambleAcc, buffers passed by value.
   Under -mavx512f: old selects the AVX2 path, new selects the new AVX512 path (XXH_VECTOR auto). */
void target_acc512_64(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512(acc, in, sec, XXH3_acc_64bits);
  memcpy(out, acc, 64);
}
void target_acc512_128(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512(acc, in, sec, XXH3_acc_128bits);
  memcpy(out, acc, 64);
}
void target_scramble(uint64_t* out, U8ARGS(a), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(sec,0,s);
  XXH3_scrambleAcc(acc, sec);
  memcpy(out, acc, 64);
}
