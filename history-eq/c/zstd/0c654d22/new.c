#include <stddef.h>
#include <stdint.h>
typedef unsigned char BYTE;
typedef uint32_t U32;
typedef struct { const BYTE* base; } ZSTD_window_t;
typedef struct { ZSTD_window_t window; U32 nextToUpdate; } ZSTD_matchState_t;
typedef struct { U32 unused; } ZSTD_compressionParameters;
typedef enum { ZSTD_noDict, ZSTD_dictMatchState, ZSTD_extDict } ZSTD_dictMode_e;
#define FORCE_INLINE_TEMPLATE static inline __attribute__((always_inline))
#define DEBUGLOG(...) ((void)0)
extern void ZSTD_updateDUBT(ZSTD_matchState_t*, const ZSTD_compressionParameters*, const BYTE*, const BYTE*, U32);
extern size_t ZSTD_DUBT_findBestMatch(ZSTD_matchState_t*, const ZSTD_compressionParameters*, const BYTE*, const BYTE*, size_t*, U32, ZSTD_dictMode_e);
FORCE_INLINE_TEMPLATE size_t ZSTD_BtFindBestMatch (
                        ZSTD_matchState_t* ms, ZSTD_compressionParameters const* cParams,
                        const BYTE* const ip, const BYTE* const iLimit,
                        size_t* offsetPtr,
                        const U32 mls /* template */,
                        const ZSTD_dictMode_e dictMode)
{
    DEBUGLOG(7, "ZSTD_BtFindBestMatch");
    if (ip < ms->window.base + ms->nextToUpdate) return 0;   /* skipped area */
    ZSTD_updateDUBT(ms, cParams, ip, iLimit, mls);
    return ZSTD_DUBT_findBestMatch(ms, cParams, ip, iLimit, offsetPtr, mls, dictMode);
}
size_t target(ZSTD_matchState_t* ms, const ZSTD_compressionParameters* params,
              const BYTE* ip, const BYTE* limit, size_t* off, U32 mls,
              ZSTD_dictMode_e dictMode) {
    return ZSTD_BtFindBestMatch(ms, params, ip, limit, off, mls, dictMode);
}
