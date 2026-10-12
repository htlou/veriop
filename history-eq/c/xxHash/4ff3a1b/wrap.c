#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api-level targets reaching XXH_ASSERT (= XXH_ASSUME in non-debug builds) sites, under the
   documented preconditions (valid buffer for len bytes; secretSize >= XXH3_SECRET_SIZE_MIN) */
uint64_t target_xxh3_64_le16(const uint8_t* p, size_t len) { if (len > 16) return 0; return XXH3_64bits(p, len); }
uint64_t target_xxh3_64_17to128(const uint8_t* p, size_t len) { if (len < 17 || len > 128) return 0; return XXH3_64bits(p, len); }
uint64_t target_xxh3_64_seed_le16(const uint8_t* p, size_t len, uint64_t seed) { if (len > 16) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_xxh3_64_secret_le16(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) {
  if (len > 16 || secSize < XXH3_SECRET_SIZE_MIN) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
uint64_t target_xxh128_lo_le16(const uint8_t* p, size_t len) { if (len > 16) return 0; return XXH3_128bits(p, len).low64; }
uint64_t target_xxh128_hi_le16(const uint8_t* p, size_t len) { if (len > 16) return 0; return XXH3_128bits(p, len).high64; }
uint64_t target_xxh3_64_len200(const uint8_t* p) { return XXH3_64bits(p, 200); }
uint32_t target_xxh32_len7(const uint8_t* p, uint32_t seed) { return XXH32(p, 7, seed); }
uint32_t target_xxh32_len20(const uint8_t* p, uint32_t seed) { return XXH32(p, 20, seed); }
uint64_t target_xxh64_len13(const uint8_t* p, uint64_t seed) { return XXH64(p, 13, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
