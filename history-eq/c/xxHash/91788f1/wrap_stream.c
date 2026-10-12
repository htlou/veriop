#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: streaming XXH3_64bits reset/update/digest on a stack state, one update of 300 bytes
   (exercises XXH3_update's buffer path -> XXH3_consumeStripes -> f_acc). */
uint64_t target_stream64_len300(const uint8_t* p) {
  XXH3_state_t st; XXH3_64bits_reset(&st); XXH3_64bits_update(&st, p, 300); return XXH3_64bits_digest(&st); }
