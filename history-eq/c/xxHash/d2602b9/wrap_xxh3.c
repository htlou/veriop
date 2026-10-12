#ifdef _MSC_VER
/* MSVC-environment declarations normally provided by <stdlib.h>/<intrin.h> (clang builtins under MS compat) */
unsigned long _byteswap_ulong(unsigned long);
unsigned long long _byteswap_uint64(unsigned long long);
unsigned int _rotl(unsigned int, int);
unsigned long long _rotl64(unsigned long long, int);
#endif
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH3 withSeed, len 300 > 240: hashLong with XXH3_initCustomSecret_avx2 (XXH_COMPILER_GUARD(dest) becomes active on clang-msvc) */
uint64_t target_xxh3_seed_len300(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 300, seed); }
