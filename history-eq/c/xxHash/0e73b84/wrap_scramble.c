#include "xxh_harness.h"
#include "neon_model.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
void target_scramble_neon(uint64_t* out, U8ARGS(a), U8ARGS(s)) {
  _Alignas(64) uint64_t acc[8]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(sec,0,s);
  XXH3_scrambleAcc_neon(acc, sec);
  memcpy(out, acc, 64);
}
