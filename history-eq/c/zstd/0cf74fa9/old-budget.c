#include <stddef.h>
#include <stdint.h>
typedef struct ZSTD_CCtx_s ZSTD_CCtx;
static size_t budget;
static union { max_align_t align; unsigned char bytes[5000]; } region;
static void* budget_calloc(size_t count, size_t bytes) {
    size_t total = count * bytes;
    return (total <= budget && total <= sizeof(region.bytes)) ? region.bytes : NULL;
}
#define calloc budget_calloc
typedef struct buffer_s {
    void* start;
    size_t size;
} buffer_t;

static const buffer_t g_nullBuffer = { NULL, 0 };

typedef struct ZSTDMT_bufferPool_s {
    unsigned totalBuffers;
    unsigned nbBuffers;
    buffer_t bTable[1];   /* variable size */
} ZSTDMT_bufferPool;

static ZSTDMT_bufferPool* ZSTDMT_createBufferPool(unsigned nbThreads)
{
    unsigned const maxNbBuffers = 2*nbThreads + 2;
    ZSTDMT_bufferPool* const bufPool = (ZSTDMT_bufferPool*)calloc(1, sizeof(ZSTDMT_bufferPool) + maxNbBuffers * sizeof(buffer_t));
    if (bufPool==NULL) return NULL;
    bufPool->totalBuffers = maxNbBuffers;
    return bufPool;
}

typedef struct {
    unsigned totalCCtx;
    unsigned availCCtx;
    ZSTD_CCtx* cctx[1];   /* variable size */
} ZSTDMT_CCtxPool;

static ZSTDMT_CCtxPool* ZSTDMT_createCCtxPool(unsigned nbThreads)
{
    ZSTDMT_CCtxPool* const cctxPool = (ZSTDMT_CCtxPool*) calloc(1, sizeof(ZSTDMT_CCtxPool) + nbThreads*sizeof(ZSTD_CCtx*));
    if (!cctxPool) return NULL;
    cctxPool->totalCCtx = nbThreads;
    cctxPool->availCCtx = 0;
    return cctxPool;
}


_Static_assert(sizeof(ZSTDMT_bufferPool) ==
               offsetof(ZSTDMT_bufferPool, bTable) + sizeof(buffer_t),
               "buffer pool has exactly one declared slot");
_Static_assert(sizeof(ZSTDMT_CCtxPool) ==
               offsetof(ZSTDMT_CCtxPool, cctx) + sizeof(ZSTD_CCtx*),
               "context pool has exactly one declared slot");

int target_buffer_success(unsigned n, size_t cap) {
    __builtin_assume(n >= 1 && n <= 128);
    budget = cap;
    return ZSTDMT_createBufferPool(n) != NULL;
}
int target_cctx_success(unsigned n, size_t cap) {
    __builtin_assume(n >= 1 && n <= 128);
    budget = cap;
    return ZSTDMT_createCCtxPool(n) != NULL;
}
