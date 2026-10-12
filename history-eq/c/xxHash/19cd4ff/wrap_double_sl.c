#include "xxh_harness.h"
/* scenario targeted by the commit: xxhash.h already included (e.g. by another header) without
   XXH_INLINE_ALL (here with XXH_STATIC_LINKING_ONLY, so that the old header compiles),
   then included again with XXH_INLINE_ALL to get inlined implementations */
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#define XXH_INLINE_ALL
#include "xxhash.h"
/* XXH32 targets take input bytes by value (U8ARGS): the SSE4.1 XXH32_round asm guard becomes freeze, and
   freeze of possibly-poison loaded bytes makes Alive2 time out even on identical IR */
uint32_t target_xxh32_len20(U8ARGS(a), uint32_t seed) { uint8_t buf[64]; U8FILL(buf, 0, a); return XXH32(buf, 20, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
uint64_t target_xxh3_len20(const uint8_t* p) { return XXH3_64bits(p, 20); }
uint64_t target_xxh3_len200(const uint8_t* p) { return XXH3_64bits(p, 200); }
