#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: len 1100 = 1 full block (16 stripes) + scramble + 1 stripe + last (unaligned) stripe */
uint64_t target_64_len1100(const uint8_t* p) { return XXH3_64bits(p, 1100); }
