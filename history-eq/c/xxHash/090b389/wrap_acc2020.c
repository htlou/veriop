#include "xxh_harness.h"
#include "neon_model.h"   /* NEON umull/umlal semantic model; no-op on non-ARM */
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
void target_acc512_w64(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512(acc, in, sec, XXH3_acc_64bits);
  memcpy(out, acc, 64);
}
void target_acc512_w128(uint64_t* out, U8ARGS(a), U8ARGS(i), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char in[64]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(in,0,i); U8FILL(sec,0,s);
  XXH3_accumulate_512(acc, in, sec, XXH3_acc_128bits);
  memcpy(out, acc, 64);
}
