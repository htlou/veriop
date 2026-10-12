#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
void target_acc512_scalar(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512_scalar(acc, in, sec);
  memcpy(out, acc, 64);
}
void target_initsecret_scalar(unsigned char* out, uint64_t seed) {
  _Alignas(64) unsigned char sec[XXH_SECRET_DEFAULT_SIZE];
  XXH3_initCustomSecret_scalar(sec, seed);
  memcpy(out, sec, XXH_SECRET_DEFAULT_SIZE);
}
