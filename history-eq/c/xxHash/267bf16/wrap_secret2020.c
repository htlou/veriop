#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
void target_initsecret(unsigned char* out, uint64_t seed) {
  _Alignas(64) unsigned char sec[XXH_SECRET_DEFAULT_SIZE];
  XXH3_initCustomSecret(sec, seed);
  memcpy(out, sec, XXH_SECRET_DEFAULT_SIZE);
}
uint64_t target_api_seed_len256(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 256, seed); }
