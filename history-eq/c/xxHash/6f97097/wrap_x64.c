#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH64 single shot (XXH_SIZE_OPT==2 -> implemented via the streaming API reset/update/digest). Fixed lengths. */
#define T(N) uint64_t target_xxh64_len##N(const uint8_t* p, uint64_t s) { return XXH64(p, N, s); }
T(0) T(7) T(31) T(32) T(50)
