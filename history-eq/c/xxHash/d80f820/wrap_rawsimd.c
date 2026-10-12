#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw per-stripe kernels of the arch selected by XXH_VECTOR (XXH3_accumulate_512 / XXH3_scrambleAcc /
   XXH3_initCustomSecret macros -> _scalar/_sse2/_avx2/_avx512); acc, input, secret passed by value and copied
   into fresh local buffers (acc 64-byte aligned); results copied to out. */
void target_acc512(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512(acc, in, sec);
  memcpy(out, acc, 64);
}
void target_scramble(uint64_t* out, U8ARGS(a), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(sec,0,s);
  XXH3_scrambleAcc(acc, sec);
  memcpy(out, acc, 64);
}
void target_initsec(uint8_t* out, uint64_t seed) {
  _Alignas(64) unsigned char sec[XXH_SECRET_DEFAULT_SIZE];
  XXH3_initCustomSecret(sec, seed);
  memcpy(out, sec, XXH_SECRET_DEFAULT_SIZE);
}
