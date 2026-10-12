/* api-level streaming harness for XXH3 (identical for old/new).
   The XXH3_state_t lives on the wrapper's stack (layout invisible to the caller),
   zero-initialised with memset (documented init: XXH3_INITSTATE or memset).
   Select one target with -DT=<n> (each target is a separate Alive2 run). */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))

/* 1: stays in internal buffer, short digest (<=240) */
#if SEL(1)
uint64_t target_s100(const uint8_t* p) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 100);
    return XXH3_64bits_digest(&s);
}
#endif
/* 2: seeded, two updates, total 250 <= 256 stays buffered, digest_long */
#if SEL(2)
uint64_t target_seed_200_50(const uint8_t* p, uint64_t seed) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 200);
    XXH3_64bits_update(&s, p + 200, 50);
    return XXH3_64bits_digest(&s);
}
#endif
/* 3: two updates, 100 + 200 = 300 crosses the 256-byte internal buffer (stripes consumed) */
#if SEL(3)
uint64_t target_100_200(const uint8_t* p) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 100);
    XXH3_64bits_update(&s, p + 100, 200);
    return XXH3_64bits_digest(&s);
}
#endif
/* 4: (removed: 10x30 target not loop-free under clang; dropped) */
/* 5: 128-bit streaming, 100 + 200 */
#if SEL(5)
void target_128_100_200(const uint8_t* p, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_128bits_reset_withSeed(&s, seed);
    XXH3_128bits_update(&s, p, 100);
    XXH3_128bits_update(&s, p + 100, 200);
    XXH128_hash_t h = XXH3_128bits_digest(&s);
    out[0] = h.low64; out[1] = h.high64;
}
#endif
