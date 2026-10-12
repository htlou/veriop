#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api level, len 1088 with default 192B secret: 1 full block (16 stripes) + scrambleAcc + last stripe. */
uint64_t target_64_len1088(const uint8_t* p) { return XXH3_64bits(p, 1088); }
