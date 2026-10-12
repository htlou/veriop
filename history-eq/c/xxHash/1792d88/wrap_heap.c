#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* createState (XXH_MALLOCF) / freeState round trip; input bytes by value */
uint64_t target_heap_state_len40(U8ARGS(a), uint64_t seed) {
  uint8_t buf[64]; U8FILL(buf, 0, a);
  XXH64_state_t* s = XXH64_createState(); if (!s) return 0;
  XXH64_reset(s, seed); XXH64_update(s, buf, 40); uint64_t h = XXH64_digest(s); XXH64_freeState(s); return h;
}
uint64_t target_heap_state_len0(uint64_t seed) {
  XXH64_state_t* s = XXH64_createState(); if (!s) return 0;
  XXH64_reset(s, seed); uint64_t h = XXH64_digest(s); XXH64_freeState(s); return h;
}
