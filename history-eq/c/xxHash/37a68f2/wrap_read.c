#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* symbolic content + symbolic (possibly unaligned) pointer, fixed lengths (fully unrolled by clang) */
#define T32(n) uint32_t target_xxh32_len##n(const uint8_t* p, uint32_t seed) { return XXH32(p, n, seed); }
#define T64(n) uint64_t target_xxh64_len##n(const uint8_t* p, uint64_t seed) { return XXH64(p, n, seed); }
#define T3(n)  uint64_t target_xxh3_len##n(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, n, seed); }
T32(0) T32(1) T32(4) T32(7) T32(15) T32(16) T32(19) T32(32) T32(37)
T64(0) T64(1) T64(4) T64(8) T64(15) T64(31) T64(32) T64(45)
T3(3) T3(8) T3(16) T3(100) T3(200)
