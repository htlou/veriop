/* api-level harness, "post-reset observable state" variant (identical for old/new).
   Rationale: this commit changes ONLY the reset functions (XXH3_64bits_reset_withSeed /
   XXH3_128bits_reset_withSeed / reset_internal); XXH3_update and the digests are textually unchanged
   and (i) never write seed / extSecret / customSecret, (ii) read only: the effective secret
   (extSecret ? extSecret : customSecret, secretLimit+64 <= 192 bytes), acc[8], buffer[0..bufferedSize)
   plus (after >256 bytes) its last 64 bytes, bufferedSize, totalLen, seed, secretLimit,
   nbStripesPerBlock, nbStripesSoFar.  Every reset sets bufferedSize=0, so buffer contents written
   before a reset are never read afterwards.  Hence equal post-reset observations (below) for every
   reset sequence imply equal digests for every subsequent update/digest sequence.
   Observation per reset: effective secret bytes (192), acc[8], bufferedSize, totalLen, seed,
   secretLimit, nbStripesPerBlock, nbStripesSoFar.  The default XXH3_kSecret is read with constant
   offsets (Alive2 does not model the contents of this 192-byte constant: "Large constant initializer
   removed"); pointer comparisons against that global crash this Alive2 pin (Z3 sort error), so the
   observation identifies it as "neither NULL nor the caller's secret").  INIT(s) = memset (documented by the new code); -DNOINIT drops it.
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
#define USEC NULL
#define OBS_WORDS (24 + 8 + 6)
/* usec = the caller-provided secret of the target (NULL if none): extSecret is NULL, usec, or the
   library default XXH3_kSecret (the only other value any reset stores). */
static void observe(const XXH3_state_t* s, const uint8_t* usec, uint64_t* out) {
    if (s->extSecret == NULL) memcpy(out, s->customSecret, 192);
    else if (usec != NULL && s->extSecret == usec) memcpy(out, usec, 192);
    else { for (int i = 0; i < 24; i++) out[i] = XXH_readLE64(XXH3_kSecret + 8*i); }
    memcpy(out + 24, s->acc, 64);
    out[32] = s->bufferedSize; out[33] = s->totalLen; out[34] = s->seed;
    out[35] = s->secretLimit; out[36] = s->nbStripesPerBlock; out[37] = s->nbStripesSoFar;
}
/* 1: single seeded reset (fresh initialised state) */
#if SEL(1)
void target_rst_seed(uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed);
    observe(&s, USEC, out);
}
#endif
/* 2: seed1 then seed2 on the same state (seed2 == seed1 -> secret not regenerated in new) */
#if SEL(2)
void target_rst_seed_seed(uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed1); observe(&s, USEC, out);
    XXH3_64bits_reset_withSeed(&s, seed2); observe(&s, USEC, out + OBS_WORDS);
}
#endif
/* 3: default reset, then seeded reset */
#if SEL(3)
void target_rst_default_seed(uint64_t seed, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset(&s);                observe(&s, USEC, out);
    XXH3_64bits_reset_withSeed(&s, seed); observe(&s, USEC, out + OBS_WORDS);
}
#endif
/* 4: secret reset (caller secret, 192 bytes), then seeded reset, then default reset */
#if SEL(4)
void target_rst_secret_seed_default(const uint8_t* sec, uint64_t seed, uint64_t* out) {
#undef USEC
#define USEC sec
    XXH3_state_t s; INIT(s);
    if (sec == NULL) return;
    XXH3_64bits_reset_withSecret(&s, sec, 192); observe(&s, USEC, out);
    XXH3_64bits_reset_withSeed(&s, seed);       observe(&s, USEC, out + OBS_WORDS);
    XXH3_64bits_reset(&s);                      observe(&s, USEC, out + 2*OBS_WORDS);
}
#undef USEC
#define USEC NULL
#endif
/* 5: 128-bit resets: seed1, seed2 */
#if SEL(5)
void target_rst128_seed_seed(uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_128bits_reset_withSeed(&s, seed1); observe(&s, USEC, out);
    XXH3_128bits_reset_withSeed(&s, seed2); observe(&s, USEC, out + OBS_WORDS);
}
#endif
/* 6: seed1, seed2, seed1 */
#if SEL(6)
void target_rst_seed_aba(uint64_t seed1, uint64_t seed2, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset_withSeed(&s, seed1); observe(&s, USEC, out);
    XXH3_64bits_reset_withSeed(&s, seed2); observe(&s, USEC, out + OBS_WORDS);
    XXH3_64bits_reset_withSeed(&s, seed1); observe(&s, USEC, out + 2*OBS_WORDS);
}
#endif
/* 7: seeded reset after a secret reset with a caller secret, 128-bit variant of the secret reset */
#if SEL(7)
void target_rst_secret128_seed(const uint8_t* sec, uint64_t seed, uint64_t* out) {
#undef USEC
#define USEC sec
    XXH3_state_t s; INIT(s);
    if (sec == NULL) return;
    XXH3_128bits_reset_withSecret(&s, sec, 192); observe(&s, USEC, out);
    XXH3_128bits_reset_withSeed(&s, seed);       observe(&s, USEC, out + OBS_WORDS);
}
#undef USEC
#define USEC NULL
#endif
