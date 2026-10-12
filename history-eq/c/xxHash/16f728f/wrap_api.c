/* api-level harness for the xxh3.h refactor of 16f728f (identical for old/new; non-dispatch build):
   one-shot long-input hashes and streaming with FIXED lengths, content symbolic.
   Select a target with -DT=<n>. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#if SEL(1)
uint64_t target_xxh3_300(const uint8_t* p) { return XXH3_64bits(p, 300); }
#endif
#if SEL(2)
uint64_t target_xxh3_seed_300(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 300, seed); }
#endif
#if SEL(3)
uint64_t target_xxh3_sec136_700(const uint8_t* p, const uint8_t* sec) {
    if (sec == NULL) return 0;
    return XXH3_64bits_withSecret(p, 700, sec, 136);
}
#endif
#if SEL(4)
void target_xxh128_seed_300(const uint8_t* p, uint64_t seed, uint64_t* out) {
    XXH128_hash_t h = XXH128(p, 300, seed); out[0] = h.low64; out[1] = h.high64;
}
#endif
#if SEL(5)
uint64_t target_stream_100_200(const uint8_t* p) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 100);
    XXH3_64bits_update(&s, p + 100, 200);
    return XXH3_64bits_digest(&s);
}
#endif
#if SEL(6)
void target_stream128_seed_100_200(const uint8_t* p, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_128bits_reset_withSeed(&s, seed);
    XXH3_128bits_update(&s, p, 100);
    XXH3_128bits_update(&s, p + 100, 200);
    XXH128_hash_t h = XXH3_128bits_digest(&s); out[0] = h.low64; out[1] = h.high64;
}
#endif
