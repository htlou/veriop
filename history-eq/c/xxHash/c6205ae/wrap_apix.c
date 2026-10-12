#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_xxh3_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
uint64_t target_xxh3_len1024(const uint8_t* p) { return XXH3_64bits(p, 1024); }
uint32_t target_xxh32_len64(const uint8_t* p, uint32_t seed) { return XXH32(p, 64, seed); }
uint64_t target_xxh64_len64(const uint8_t* p, uint64_t seed) { return XXH64(p, 64, seed); }
