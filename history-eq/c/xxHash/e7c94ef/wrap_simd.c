#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH3_accumulate_512 / XXH3_scrambleAcc / XXH3_initCustomSecret are the library's own dispatch macros,
   resolving to the variant selected by XXH_VECTOR for the compilation target (scalar or rvv). */
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
void target_initsecret(unsigned char* out, uint64_t seed) {
  _Alignas(64) unsigned char s[XXH_SECRET_DEFAULT_SIZE];
  XXH3_initCustomSecret(s, seed);
  memcpy(out, s, XXH_SECRET_DEFAULT_SIZE);
}
uint64_t target_api_len1024(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 1024, seed); }
