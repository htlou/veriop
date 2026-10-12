#include <stdint.h>
#include <stddef.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH32 at each fixed length 0..15 (only XXH32_finalize runs) */
uint32_t target_xxh32_len0(const uint8_t* p, uint32_t seed) { return XXH32(p, 0, seed); }
uint32_t target_xxh32_len1(const uint8_t* p, uint32_t seed) { return XXH32(p, 1, seed); }
uint32_t target_xxh32_len2(const uint8_t* p, uint32_t seed) { return XXH32(p, 2, seed); }
uint32_t target_xxh32_len3(const uint8_t* p, uint32_t seed) { return XXH32(p, 3, seed); }
uint32_t target_xxh32_len4(const uint8_t* p, uint32_t seed) { return XXH32(p, 4, seed); }
uint32_t target_xxh32_len5(const uint8_t* p, uint32_t seed) { return XXH32(p, 5, seed); }
uint32_t target_xxh32_len6(const uint8_t* p, uint32_t seed) { return XXH32(p, 6, seed); }
uint32_t target_xxh32_len7(const uint8_t* p, uint32_t seed) { return XXH32(p, 7, seed); }
uint32_t target_xxh32_len8(const uint8_t* p, uint32_t seed) { return XXH32(p, 8, seed); }
uint32_t target_xxh32_len9(const uint8_t* p, uint32_t seed) { return XXH32(p, 9, seed); }
uint32_t target_xxh32_len10(const uint8_t* p, uint32_t seed) { return XXH32(p, 10, seed); }
uint32_t target_xxh32_len11(const uint8_t* p, uint32_t seed) { return XXH32(p, 11, seed); }
uint32_t target_xxh32_len12(const uint8_t* p, uint32_t seed) { return XXH32(p, 12, seed); }
uint32_t target_xxh32_len13(const uint8_t* p, uint32_t seed) { return XXH32(p, 13, seed); }
uint32_t target_xxh32_len14(const uint8_t* p, uint32_t seed) { return XXH32(p, 14, seed); }
uint32_t target_xxh32_len15(const uint8_t* p, uint32_t seed) { return XXH32(p, 15, seed); }
