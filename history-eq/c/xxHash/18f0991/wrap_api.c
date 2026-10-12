/* api-level streaming harness for XXH3 reset/update/digest (identical for old/new).
   The XXH3_state_t lives on the wrapper's stack, so the state layout is invisible.
   INIT(s): memset(&s,0,sizeof s), i.e. the initialisation documented by the new code
   ("initialized with XXH3_INITSTATE() or a memset()"); -DNOINIT drops it (old contract: none needed).
   Lengths 250 (>240 -> long digest path that reads the seed-derived customSecret, stays in the
   256-byte buffer) and 100 (short path). Select a target with -DT=<n>. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#ifdef NOINIT
#define INIT(s) ((void)0)
#else
#define INIT(s) memset(&(s), 0, sizeof(s))
#endif
/* 1: one seeded session, 250 bytes */
#if SEL(1)
uint64_t target_seed_250(const uint8_t* p, uint64_t seed) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 250);
    return XXH3_64bits_digest(&s);
}
#endif
/* 2: state reused: reset_withSeed(seed1) ... digest, then reset_withSeed(seed2) ... digest
      (seed2 symbolic: covers both "same seed -> secret not regenerated" and "different seed") */
#if SEL(2)
void target_reuse_seed(const uint8_t* p, uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed1);
    XXH3_64bits_update(&s, p, 250);
    out[0] = XXH3_64bits_digest(&s);
    XXH3_64bits_reset_withSeed(&s, seed2);
    XXH3_64bits_update(&s, p + 3, 250);
    out[1] = XXH3_64bits_digest(&s);
}
#endif
/* 3: default reset first, then seeded reset on the same state */
#if SEL(3)
void target_default_then_seed(const uint8_t* p, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 250);
    out[0] = XXH3_64bits_digest(&s);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 250);
    out[1] = XXH3_64bits_digest(&s);
}
#endif
/* 4: seeded session with short input (100 bytes, short digest path) */
#if SEL(4)
uint64_t target_seed_100(const uint8_t* p, uint64_t seed) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 100);
    return XXH3_64bits_digest(&s);
}
#endif
/* 5: 128-bit seeded, state reused with two seeds */
#if SEL(5)
void target_128_reuse_seed(const uint8_t* p, uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_128bits_reset_withSeed(&s, seed1);
    XXH3_128bits_update(&s, p, 250);
    XXH128_hash_t h = XXH3_128bits_digest(&s);
    XXH3_128bits_reset_withSeed(&s, seed2);
    XXH3_128bits_update(&s, p, 250);
    XXH128_hash_t g = XXH3_128bits_digest(&s);
    out[0] = h.low64; out[1] = h.high64; out[2] = g.low64; out[3] = g.high64;
}
#endif
/* 6: withSecret reset then seeded reset on the same state (secret = caller buffer of 192 bytes) */
#if SEL(6)
void target_secret_then_seed(const uint8_t* p, const uint8_t* sec, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSecret(&s, sec, 192);
    XXH3_64bits_update(&s, p, 250);
    out[0] = XXH3_64bits_digest(&s);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 250);
    out[1] = XXH3_64bits_digest(&s);
}
#endif
