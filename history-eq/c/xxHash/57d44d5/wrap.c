#include <stdint.h>
#include <stddef.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH32 for len < 16: only XXH32_finalize runs (no stripe loop) */
uint32_t target_xxh32_lt16(const uint8_t* p, size_t len, uint32_t seed) {
  if (len >= 16) return 0;
  return XXH32(p, len, seed);
}
