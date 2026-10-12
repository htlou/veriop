#include <stddef.h>
#include <stdint.h>
#define NDEBUG
#include <assert.h>
typedef unsigned char BYTE;
typedef uint32_t U32;
typedef uint16_t U16;
typedef struct { U16 litLength; U32 offset; U16 matchLength; } seqDef;
typedef struct {
    seqDef* sequences;
    seqDef* sequencesStart;
    size_t maxNbSeq;
    BYTE* lit;
    BYTE* litStart;
    size_t maxNbLit;
    U32 longLengthID;
    U32 longLengthPos;
} seqStore_t;
typedef enum { ZSTD_no_overlap } ZSTD_overlap_e;
#define MEM_STATIC static inline
#define HINT_INLINE static inline __attribute__((always_inline))
#define WILDCOPY_OVERLENGTH 32
extern void ZSTD_copy16(void*, const void*);
extern void ZSTD_wildcopy(void*, const void*, ptrdiff_t, ZSTD_overlap_e);
extern void ZSTD_safecopyLiterals(BYTE*, const BYTE*, const BYTE*, const BYTE*);
MEM_STATIC void ZSTD_storeSeq(seqStore_t* seqStorePtr, size_t litLength, const BYTE* literals, const BYTE* litLimit, U32 offCode, size_t mlBase)
{
    BYTE const* const litLimit_w = litLimit - WILDCOPY_OVERLENGTH;
    BYTE const* const litEnd = literals + litLength;
#if defined(DEBUGLEVEL) && (DEBUGLEVEL >= 6)
    static const BYTE* g_start = NULL;
    if (g_start==NULL) g_start = (const BYTE*)literals;  /* note : index only works for compression within a single segment */
    {   U32 const pos = (U32)((const BYTE*)literals - g_start);
        DEBUGLOG(6, "Cpos%7u :%3u literals, match%4u bytes at offCode%7u",
               pos, (U32)litLength, (U32)mlBase+MINMATCH, (U32)offCode);
    }
#endif
    assert((size_t)(seqStorePtr->sequences - seqStorePtr->sequencesStart) < seqStorePtr->maxNbSeq);
    /* copy Literals */
    assert(seqStorePtr->maxNbLit <= 128 KB);
    assert(seqStorePtr->lit + litLength <= seqStorePtr->litStart + seqStorePtr->maxNbLit);
    assert(literals + litLength <= litLimit);
    if (litEnd <= litLimit_w) {
        /* Common case we can use wildcopy.
	 * First copy 16 bytes, because literals are likely short.
	 */
        assert(WILDCOPY_OVERLENGTH >= 16);
        ZSTD_copy16(seqStorePtr->lit, literals);
        if (litLength > 16) {
            ZSTD_wildcopy(seqStorePtr->lit+16, literals+16, (ptrdiff_t)litLength-16, ZSTD_no_overlap);
        }
    } else {
        ZSTD_safecopyLiterals(seqStorePtr->lit, literals, litEnd, litLimit_w);
    }
    seqStorePtr->lit += litLength;

    /* literal Length */
    if (litLength>0xFFFF) {
        assert(seqStorePtr->longLengthID == 0); /* there can only be a single long length */
        seqStorePtr->longLengthID = 1;
        seqStorePtr->longLengthPos = (U32)(seqStorePtr->sequences - seqStorePtr->sequencesStart);
    }
    seqStorePtr->sequences[0].litLength = (U16)litLength;

    /* match offset */
    seqStorePtr->sequences[0].offset = offCode + 1;

    /* match Length */
    if (mlBase>0xFFFF) {
        assert(seqStorePtr->longLengthID == 0); /* there can only be a single long length */
        seqStorePtr->longLengthID = 2;
        seqStorePtr->longLengthPos = (U32)(seqStorePtr->sequences - seqStorePtr->sequencesStart);
    }
    seqStorePtr->sequences[0].matchLength = (U16)mlBase;

    seqStorePtr->sequences++;
}
void target(seqStore_t* store, size_t litLength, const BYTE* literals,
            const BYTE* litLimit, U32 offCode, size_t mlBase) {
    ZSTD_storeSeq(store, litLength, literals, litLimit, offCode, mlBase);
}
