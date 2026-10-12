#include <stdint.h>

typedef uint16_t U16;
typedef uint32_t U32;

static unsigned highbit(U32 x) { return 31 - __builtin_clz(x); }

/* This projection retains the changed long-length storage and code paths.
 * A sequence has at least MINMATCH=3 match bytes within a 128 KiB block.
 * A zero code in the result means that the unchanged short-code table applies.
 * The exact historical seqToCodes bodies and store branches are in old/new.c.
 */
uint64_t target_long_length(U32 litLength, U32 matchCode) {
    if ((uint64_t)litLength + matchCode + 3 > 131072)
        __builtin_unreachable();
    U16 ll, ml;
    U32 llCode = 0, mlCode = 0;
#if CHILD
    U32 longLengthID = 0;
    if (litLength > 0xFFFF) longLengthID = 1;
    ll = (U16)litLength;
    if (matchCode > 0xFFFF) longLengthID = 2;
    ml = (U16)matchCode;
    if (ll == 65535) llCode = highbit(ll) + 19;
    if (ml == 65535) mlCode = highbit(ml) + 36;
    if (longLengthID == 1) llCode = 35;
    if (longLengthID == 2) mlCode = 52;
#else
    U32 longLength = 0;
    if (litLength >= 65535) { ll = 65535; longLength = litLength; }
    else ll = (U16)litLength;
    if (matchCode >= 65535) { ml = 65535; longLength = matchCode; }
    else ml = (U16)matchCode;
    if (ll == 65535) {
        ll = (U16)longLength;
        llCode = highbit(longLength) + 19;
    }
    if (ml == 65535) {
        ml = (U16)longLength;
        mlCode = highbit(longLength) + 36;
    }
#endif
    return ((uint64_t)llCode << 40) | ((uint64_t)mlCode << 32) |
           ((uint64_t)ll << 16) | ml;
}
