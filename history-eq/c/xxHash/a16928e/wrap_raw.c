#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: XXH3_mergeAccs(acc, secret, start); acc (8 x u64) and 64 secret bytes passed by value, start symbolic */
uint64_t target_mergeAccs(U8ARGS(a), U8ARGS(s), uint64_t start) {
  _Alignas(64) uint64_t acc[8]; unsigned char sec[64];
  U8FILL(acc,0,a); U8FILL(sec,0,s);
  return XXH3_mergeAccs(acc, sec, start);
}
