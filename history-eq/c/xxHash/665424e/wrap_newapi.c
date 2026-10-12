#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#include "grpc_side.h"   /* side_old/ or side_new/ include dir: defines GRPC_NEW only on the new side */
/* api, cross-version usage equivalence for the NEW fast path (wrapper bodies differ by design, selected by
   GRPC_NEW because the new API has no old counterpart):
     old = XXH3_64bits_withSeed(p, len, seed)
     new = XXH3_generateSecret_fromSeed(buf, seed); XXH3_64bits_withSecretandSeed(p, len, buf, 192, seed)
   The commit message claims these produce exactly the same results. */
static uint64_t h(const uint8_t* p, size_t len, uint64_t seed) {
#ifdef GRPC_NEW
  _Alignas(64) unsigned char buf[192];
  XXH3_generateSecret_fromSeed(buf, seed);
  return XXH3_64bits_withSecretandSeed(p, len, buf, 192, seed);
#else
  return XXH3_64bits_withSeed(p, len, seed);
#endif
}
uint64_t target_x_len256(const uint8_t* p, uint64_t seed) { return h(p, 256, seed); }
uint64_t target_x_len200(const uint8_t* p, uint64_t seed) { return h(p, 200, seed); }
uint64_t target_x_len64(const uint8_t* p, uint64_t seed) { return h(p, 64, seed); }
