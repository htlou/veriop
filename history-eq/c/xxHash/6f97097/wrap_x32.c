#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH32 single shot (XXH_SIZE_OPT==2 -> implemented via the streaming API reset/update/digest). Fixed lengths. */
#define T(N) uint32_t target_xxh32_len##N(const uint8_t* p, uint32_t s) { return XXH32(p, N, s); }
T(0) T(3) T(15) T(16) T(31) T(40)
