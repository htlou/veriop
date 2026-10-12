#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: XXH3_initCustomSecret (selected by XXH_VECTOR: _avx512 or _avx2) writing into a fresh 64-aligned
   local buffer; the 192-byte result is copied to out. */
void target_initsec(uint8_t* out, uint64_t seed) {
  _Alignas(64) unsigned char sec[XXH_SECRET_DEFAULT_SIZE];
  XXH3_initCustomSecret(sec, seed);
  memcpy(out, sec, XXH_SECRET_DEFAULT_SIZE);
}
