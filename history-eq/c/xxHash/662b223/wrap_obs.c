/* api-level harness, "digest-observable state" variant (identical for old/new).
   Same call sequences as wrap_api.c (stack state, reset / reset_withSeed / reset_withSecret, update
   with fixed lengths), but instead of returning XXH3_64bits_digest() it outputs exactly the state
   fields that XXH3_64bits_digest()/XXH3_128bits_digest() read:
     effective secret bytes (extSecret ? extSecret : customSecret, 192 bytes), acc[8],
     buffer[0..256), bufferedSize, totalLen, seed, secretLimit, nbStripesPerBlock, nbStripesSoFar.
   The digest functions are textually unchanged by this commit, deterministic, and read only these
   fields, so equality of this output for every input implies equality of the digests (sound
   reduction; it avoids the 32x32->64 / 64x64->128 multiplications that time out in the SMT solver).
   (old/new differ in the raw *pointer* extSecret for seed==0: kSecret vs customSecret holding
   kSecret+0; only the bytes it points to are observable, which is what is output.)
   INIT(s) = memset (the initialisation the new code documents); -DNOINIT drops it.
   Select a target with -DT=<n>. */
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
#define OBS_WORDS (24 + 8 + 32 + 6)
static void observe(const XXH3_state_t* s, uint64_t* out) {
    /* effective secret bytes; when the state points at the library's default XXH3_kSecret the bytes are
       read with constant offsets (clang folds them to constants), because Alive2 does not model the
       contents of this 192-byte constant global ("Large constant initializer removed" approximation). */
    if (s->extSecret == NULL) memcpy(out, s->customSecret, 192);
    else if (s->extSecret == XXH3_kSecret) { for (int i = 0; i < 24; i++) out[i] = XXH_readLE64(XXH3_kSecret + 8*i); }
    else memcpy(out, s->extSecret, 192);
    memcpy(out + 24, s->acc, 64);
    memcpy(out + 32, s->buffer, 256);
    out[64] = s->bufferedSize; out[65] = s->totalLen; out[66] = s->seed;
    out[67] = s->secretLimit; out[68] = s->nbStripesPerBlock; out[69] = s->nbStripesSoFar;
}
/* 1: seeded session, 250 bytes */
#if SEL(1)
void target_obs_seed_250(const uint8_t* p, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 250);
    observe(&s, out);
}
#endif
/* 2: state reused: reset_withSeed(seed1)+update, observe; reset_withSeed(seed2)+update, observe
      (seed2 symbolic: covers "same seed -> secret not regenerated" and "different seed") */
#if SEL(2)
void target_obs_reuse_seed(const uint8_t* p, uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed1);
    XXH3_64bits_update(&s, p, 250);
    observe(&s, out);
    XXH3_64bits_reset_withSeed(&s, seed2);
    XXH3_64bits_update(&s, p + 3, 250);
    observe(&s, out + OBS_WORDS);
}
#endif
/* 3: default reset, then seeded reset on the same state */
#if SEL(3)
void target_obs_default_then_seed(const uint8_t* p, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 250);
    observe(&s, out);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 250);
    observe(&s, out + OBS_WORDS);
}
#endif
/* 4: secret reset (caller secret of 192 bytes), then seeded reset, then default reset */
#if SEL(4)
void target_obs_secret_seed_default(const uint8_t* p, const uint8_t* sec, uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSecret(&s, sec, 192);
    XXH3_64bits_update(&s, p, 250);
    observe(&s, out);
    XXH3_64bits_reset_withSeed(&s, seed);
    XXH3_64bits_update(&s, p, 250);
    observe(&s, out + OBS_WORDS);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 100);
    observe(&s, out + 2*OBS_WORDS);
}
#endif
/* 5: 128-bit API: reset_withSeed(seed1), reset_withSeed(seed2), 100 + 150 bytes */
#if SEL(5)
void target_obs128_reuse_seed_250(const uint8_t* p, uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_128bits_reset_withSeed(&s, seed1);
    XXH3_128bits_update(&s, p, 100);
    observe(&s, out);
    XXH3_128bits_reset_withSeed(&s, seed2);
    XXH3_128bits_update(&s, p, 100);
    XXH3_128bits_update(&s, p + 100, 150);
    observe(&s, out + OBS_WORDS);
}
#endif
/* 6: three seeded resets seed1, seed2, seed1 */
#if SEL(6)
void target_obs_seed_aba(const uint8_t* p, uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed1);
    XXH3_64bits_update(&s, p, 10);
    observe(&s, out);
    XXH3_64bits_reset_withSeed(&s, seed2);
    XXH3_64bits_update(&s, p, 10);
    observe(&s, out + OBS_WORDS);
    XXH3_64bits_reset_withSeed(&s, seed1);
    XXH3_64bits_update(&s, p, 10);
    observe(&s, out + 2*OBS_WORDS);
}
#endif
