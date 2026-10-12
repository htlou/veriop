/* raw-level harness: XXH3_64bits_update() (public, body = XXH3_update) on a SYMBOLIC state pointer
   (layout unchanged by 44bb94e). Invariants of a state reset with a 136-byte caller secret are encoded
   as guards: secretLimit = 72, nbStripesPerBlock = 9, nbStripesSoFar < 9, bufferedSize <= 256,
   extSecret = sec (non-NULL), state / input / secret pairwise non-overlapping (XXH_RESTRICT contract).
   acc[], buffer[], customSecret[], totalLen, seed stay symbolic.  Select a target with -DT=<n>. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#include <stdint.h>
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
static int disjoint(const void* a, size_t na, const void* b, size_t nb) {
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    return x + na <= y || y + nb <= x;
}
static int guard(XXH3_state_t* s, const uint8_t* p, size_t len, const uint8_t* sec, unsigned buffered, unsigned soFar) {
    return s->bufferedSize == buffered && s->nbStripesSoFar == soFar && s->nbStripesPerBlock == 9
        && s->secretLimit == 72 && sec != NULL && s->extSecret == sec
        && disjoint(s, sizeof *s, p, len) && disjoint(s, sizeof *s, sec, 136) && disjoint(p, len, sec, 136);
}
/* 1: empty buffer, 8 stripes already in the current block, update of 641 bytes = 10 stripes + 1 byte:
      1 stripe completes the block (scramble), then exactly 9 stripes = one full block (scramble expected) */
#if SEL(1)
int target_raw_sofar8_641(XXH3_state_t* s, const uint8_t* p, const uint8_t* sec) {
    if (!guard(s, p, 641, sec, 0, 8)) return -1;
    return (int)XXH3_64bits_update(s, p, 641);
}
#endif
/* 2: same geometry, 600 bytes = 9 stripes + 24 bytes (no exact second block): control */
#if SEL(2)
int target_raw_sofar8_600(XXH3_state_t* s, const uint8_t* p, const uint8_t* sec) {
    if (!guard(s, p, 600, sec, 0, 8)) return -1;
    return (int)XXH3_64bits_update(s, p, 600);
}
#endif
