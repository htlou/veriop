#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* supplement to wrap.c, compiled WITH the default inline hints (always_inline) so that the 0..16 length
   classes are fully inlined; XXH32 / XXH3 len200 inputs by value (U8ARGS) */
uint32_t target_xxh32_len20_val(U8ARGS(a), uint32_t seed) { uint8_t buf[64]; U8FILL(buf, 0, a); return XXH32(buf, 20, seed); }
uint64_t target_xxh3_len200_val(U8ARGS(a), U8ARGS(b), U8ARGS(c), U8ARGS(d)) {
  uint8_t buf[256]; U8FILL(buf, 0, a); U8FILL(buf, 64, b); U8FILL(buf, 128, c); U8FILL(buf, 192, d);
  return XXH3_64bits(buf, 200); }
uint64_t target_xxh3_64_le16(const uint8_t* p, size_t len) { if (len > 16) return 0; return XXH3_64bits(p, len); }
uint64_t target_xxh3_64_seed_le16(const uint8_t* p, size_t len, uint64_t seed) { if (len > 16) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_xxh3_64_secret_le16(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) {
  if (len > 16 || secSize < XXH3_SECRET_SIZE_MIN) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
