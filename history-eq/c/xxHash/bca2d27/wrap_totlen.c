#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH64_update's effect on the (publicly declared, XXH_STATIC_LINKING_ONLY) state field total_len,
   after reset + one update of symbolic length len (field name/offset identical on both sides). */
uint64_t target_s64_total_len(const uint8_t* p, size_t len, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, len);
  return s.total_len;
}
/* same for XXH32 (total_len_32 is documented as modulo 2^32 on both sides) */
uint32_t target_s32_total_len(const uint8_t* p, size_t len, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, len);
  return s.total_len_32;
}
