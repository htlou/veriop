#include <stdint.h>
#include <stddef.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: symbolic length in 129..240 */
uint64_t target_xxh3_64_seed_129to240(const uint8_t* p, size_t len, uint64_t seed) { if (len < 129 || len > 240) return 0; return XXH3_64bits_withSeed(p, len, seed); }
