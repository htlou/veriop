#include <stdint.h>
#include <stddef.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH3 64/128 at fixed lengths in the 129..240 class (changed XXH3_len_129to240_{64b,128b}) */
uint64_t target_xxh3_64_seed_len129(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 129, seed); }
uint64_t target_xxh3_64_seed_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
uint64_t target_xxh3_64_seed_len240(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 240, seed); }
void target_xxh128_seed_len129(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 129, seed); }
void target_xxh128_seed_len192(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 192, seed); }
void target_xxh128_seed_len240(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 240, seed); }
