#include "xxh_harness.h"
/* scenario targeted by the commit: xxhash.h already included (e.g. by another header) without
   XXH_INLINE_ALL, then included again with XXH_INLINE_ALL to get inlined implementations */
#include "xxhash.h"
#define XXH_INLINE_ALL
#include "xxhash.h"
uint32_t target_xxh32_len20(const uint8_t* p, uint32_t seed) { return XXH32(p, 20, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
uint64_t target_xxh3_len20(const uint8_t* p) { return XXH3_64bits(p, 20); }
uint64_t target_xxh3_len200(const uint8_t* p) { return XXH3_64bits(p, 200); }
