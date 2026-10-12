#include <stdint.h>
#include <stddef.h>
typedef uint8_t BYTE;
typedef uint16_t U16;
typedef uint32_t U32;
#define MaxLL 35
#define MaxML 52
typedef struct {
    U16 *litLengthStart, *matchLengthStart;
    U32 *offsetStart;
    BYTE *llCodeStart, *offCodeStart, *mlCodeStart;
    U32 longLength;
} seqStore_t;
static unsigned ZSTD_highbit(U32 val) { return 31 - __builtin_clz(val); }
static void ZSTD_seqToCodes(const seqStore_t* seqStorePtr, size_t const nbSeq)
{
    /* LL codes */
    {   static const BYTE LL_Code[64] = {  0,  1,  2,  3,  4,  5,  6,  7,
                                           8,  9, 10, 11, 12, 13, 14, 15,
                                          16, 16, 17, 17, 18, 18, 19, 19,
                                          20, 20, 20, 20, 21, 21, 21, 21,
                                          22, 22, 22, 22, 22, 22, 22, 22,
                                          23, 23, 23, 23, 23, 23, 23, 23,
                                          24, 24, 24, 24, 24, 24, 24, 24,
                                          24, 24, 24, 24, 24, 24, 24, 24 };
        const BYTE LL_deltaCode = 19;
        U16*  const llTable = seqStorePtr->litLengthStart;
        BYTE* const llCodeTable = seqStorePtr->llCodeStart;
        size_t u;
        for (u=0; u<nbSeq; u++) {
            U32 ll = llTable[u];
            if (llTable[u] == 65535) { ll = seqStorePtr->longLength; llTable[u] = (U16)ll; }
            llCodeTable[u] = (ll>63) ? (BYTE)ZSTD_highbit(ll) + LL_deltaCode : LL_Code[ll];
    }   }

    /* Offset codes */
    {   const U32* const offsetTable = seqStorePtr->offsetStart;
        BYTE* const ofCodeTable = seqStorePtr->offCodeStart;
        size_t u;
        for (u=0; u<nbSeq; u++) ofCodeTable[u] = (BYTE)ZSTD_highbit(offsetTable[u]);
    }

    /* ML codes */
    {   static const BYTE ML_Code[128] = { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15,
                                          16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
                                          32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 36, 36, 37, 37, 37, 37,
                                          38, 38, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39,
                                          40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40,
                                          41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
                                          42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42,
                                          42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42 };
        const BYTE ML_deltaCode = 36;
        U16*  const mlTable = seqStorePtr->matchLengthStart;
        BYTE* const mlCodeTable = seqStorePtr->mlCodeStart;
        size_t u;
        for (u=0; u<nbSeq; u++) {
            U32 ml = mlTable[u];
            if (mlTable[u] == 65535) { ml = seqStorePtr->longLength; mlTable[u] = (U16)ml; }
            mlCodeTable[u] = (ml>127) ? (BYTE)ZSTD_highbit(ml) + ML_deltaCode : ML_Code[ml];
    }   }
}


/* Store branches above ZSTD_seqToCodes are transcribed from historical
 * ZSTD_storeSeq; only literal copying, stats, and pointer increments are omitted.
 * One valid sequence consumes litLength + matchCode + MINMATCH bytes. */
uint64_t target_one_sequence(U32 litLength, U32 matchCode) {
    if ((uint64_t)litLength + matchCode + 3 > 131072)
        __builtin_unreachable();
    U16 ll[1], ml[1];
    U32 offset[1] = {1};
    BYTE llCode[1], mlCode[1], offCode[1];
    seqStore_t ss = {0};
    ss.litLengthStart = ll;
    ss.matchLengthStart = ml;
    ss.offsetStart = offset;
    ss.llCodeStart = llCode;
    ss.mlCodeStart = mlCode;
    ss.offCodeStart = offCode;
    if (litLength >= 65535) { ll[0] = 65535; ss.longLength = litLength; }
    else ll[0] = (U16)litLength;
    if (matchCode >= 65535) { ml[0] = 65535; ss.longLength = matchCode; }
    else ml[0] = (U16)matchCode;
    ZSTD_seqToCodes(&ss, 1);
    return ((uint64_t)llCode[0] << 40) |
           ((uint64_t)mlCode[0] << 32) |
           ((uint64_t)ll[0] << 16) | ml[0];
}
