#include <stdint.h>
typedef uint8_t BYTE;
typedef uint32_t U32;
typedef struct {
    U32 log2litLengthSum;
    U32 litLengthFreq[64];
    const BYTE* cachedLiterals;
    U32 cachedLitLength;
    U32 cachedPrice;
    U32 log2litSum;
    U32 litFreq[256];
} seqStore_t;
#define FORCE_INLINE static inline
extern U32 ZSTD_highbit(U32);
extern const BYTE LL_bits[64];
FORCE_INLINE U32 ZSTD_getLiteralPrice(seqStore_t* ssPtr, U32 litLength, const BYTE* literals)
{
    U32 price, u;

    if (litLength == 0)
        return ssPtr->log2litLengthSum - ZSTD_highbit(ssPtr->litLengthFreq[0]+1);

    /* literals */
#define ZSTD_CACHE_LITPRICES
#ifdef ZSTD_CACHE_LITPRICES
    if (ssPtr->cachedLiterals == literals) {
     //   if (ssPtr->cachedLitLength > litLength) printf("ERROR: ssPtr->cachedLitLength > litLength\n"); 
        U32 additional = litLength - ssPtr->cachedLitLength;
        const BYTE* literals2 = ssPtr->cachedLiterals + ssPtr->cachedLitLength;
        price = ssPtr->cachedPrice + additional * ssPtr->log2litSum;
        for (u=0; u < additional; u++)
            price -= ZSTD_highbit(ssPtr->litFreq[literals2[u]]+1);
        ssPtr->cachedPrice = price;
        ssPtr->cachedLitLength = litLength;
    } else {
        price = litLength * ssPtr->log2litSum;
        for (u=0; u < litLength; u++)
            price -= ZSTD_highbit(ssPtr->litFreq[literals[u]]+1);

        if (litLength >= 12) {
            ssPtr->cachedLiterals = literals;
            ssPtr->cachedPrice = price;
            ssPtr->cachedLitLength = litLength;
        }
    }
#else
    price = litLength * ssPtr->log2litSum;
    for (u=0; u < litLength; u++)
        price -= ZSTD_highbit(ssPtr->litFreq[literals[u]]+1);
#endif

    /* literal Length */
    {   static const BYTE LL_Code[64] = {  0,  1,  2,  3,  4,  5,  6,  7,
                                           8,  9, 10, 11, 12, 13, 14, 15,
                                          16, 16, 17, 17, 18, 18, 19, 19,
                                          20, 20, 20, 20, 21, 21, 21, 21,
                                          22, 22, 22, 22, 22, 22, 22, 22,
                                          23, 23, 23, 23, 23, 23, 23, 23,
                                          24, 24, 24, 24, 24, 24, 24, 24,
                                          24, 24, 24, 24, 24, 24, 24, 24 };
        const BYTE LL_deltaCode = 19;
        const BYTE llCode = (litLength>63) ? (BYTE)ZSTD_highbit(litLength) + LL_deltaCode : LL_Code[litLength];
        price += LL_bits[llCode] + ssPtr->log2litLengthSum - ZSTD_highbit(ssPtr->litLengthFreq[llCode]+1);
    }

    return price;
}

U32 target(seqStore_t* ssPtr, U32 litLength, const BYTE* literals) {
    return ZSTD_getLiteralPrice(ssPtr, litLength, literals);
}
