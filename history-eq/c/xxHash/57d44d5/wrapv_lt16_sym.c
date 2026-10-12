#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH32 for symbolic len < 16 (only XXH32_finalize runs); input bytes passed by value (U8ARGS, 64 bytes).
   New finalizer loops: while(len>=4) <= 3 iterations, while(len>0) <= 3 iterations -> --unroll 4 covers every len < 16. */
uint32_t target_xxh32_lt16(U8ARGS(a), size_t len, uint32_t seed) {
  uint8_t buf[64]; U8FILL(buf, 0, a);
  if (len >= 16) return 0;
  return XXH32(buf, len, seed);
}
