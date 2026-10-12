#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH3 paths whose asm guard was only re-spelled as XXH_COMPILER_GUARD (x86: initCustomSecret_avx2 via withSeed + long input) */
uint64_t target_xxh3_len17(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 17, seed); }
uint64_t target_xxh3_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
