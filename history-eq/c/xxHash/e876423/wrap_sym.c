#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH64 with symbolic length (default inlining hints, default inline threshold): the body in which
   XXH64_finalize is (force-)inlined. Bounded by --unroll. */
uint64_t target_xxh64_sym(const uint8_t* p, size_t len, uint64_t seed) { return XXH64(p, len, seed); }
