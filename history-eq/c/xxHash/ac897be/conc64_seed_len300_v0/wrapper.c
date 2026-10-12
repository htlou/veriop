/* XXH3 / XXH128 (2019 experimental API). xxh3.h pulls in xxhash.h + xxhash.c with
 * XXH_INLINE_ALL, so every internal function is visible. Same file for old and new.
 * Macros (set via -D, identical on both sides):
 *   LEN=n fixed length | SYMLEN=max [MINLEN=min] symbolic length
 *   H128 -> XXH3_128bits*, else XXH3_64bits*;  SEED0 -> default-secret entry (no seed)
 *   OLDNAMES -> XXH3_64b/XXH3_128b names used Feb-Mar 2019 (both sides of such commits) */
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <assert.h>
/* neutralise XXH_NO_INLINE (__attribute__((noinline)) / __declspec(noinline) -> empty attribute):
 * otherwise the hashLong helpers stay out-of-line and Alive2 would treat them as uninterpreted calls */
#define noinline
#include "xxh3.h"
#ifdef OLDNAMES
#  define F64 XXH3_64b
#  define F64S XXH3_64b_withSeed
#  define F128 XXH3_128b
#  define F128S XXH3_128b_withSeed
#else
#  define F64 XXH3_64bits
#  define F64S XXH3_64bits_withSeed
#  define F128 XXH3_128bits
#  define F128S XXH3_128bits_withSeed
#endif
#ifdef SEED0
#  define CALL64(p,l,s) F64(p,l)
#  define CALL128(p,l,s) F128(p,l)
#else
#  define CALL64(p,l,s) F64S(p,l,s)
#  define CALL128(p,l,s) F128S(p,l,s)
#endif
#ifdef SYMLEN
#  define LENARG , size_t len
#  define L len
#  ifndef MINLEN
#    define MINLEN 0
#  endif
#  define GUARD if (len < MINLEN || len > SYMLEN) return
#else
#  define LENARG
#  define L LEN
#  define GUARD if (0) return
#endif
#ifdef CONCRETE
/* concrete-input witness: fixed buffer (byte i = i*31+7) and fixed seed; both sides constant-fold,
 * so Alive2 reports a concrete counterexample iff the hash values differ for this input. */
static const unsigned char kbuf[2048] = {
#define B1(i) (unsigned char)((i)*31+7),
#define B8(i) B1(i) B1(i+1) B1(i+2) B1(i+3) B1(i+4) B1(i+5) B1(i+6) B1(i+7)
#define B64(i) B8(i) B8(i+8) B8(i+16) B8(i+24) B8(i+32) B8(i+40) B8(i+48) B8(i+56)
#define B512(i) B64(i) B64(i+64) B64(i+128) B64(i+192) B64(i+256) B64(i+320) B64(i+384) B64(i+448)
B512(0) B512(512) B512(1024) B512(1536) };
#ifdef H128
void target_xxh128(XXH128_hash_t* out) { *out = CALL128(kbuf, LEN, 0x0123456789abcdefULL); }
#else
unsigned long long target_xxh3_64(void) { return CALL64(kbuf, LEN, 0x0123456789abcdefULL); }
#endif
#elif defined(H128)
void target_xxh128(const void* p LENARG, unsigned long long seed, XXH128_hash_t* out) {
  GUARD; *out = CALL128(p, L, seed); }
#else
unsigned long long target_xxh3_64(const void* p LENARG, unsigned long long seed) {
  GUARD 0; return CALL64(p, L, seed); }
#endif
