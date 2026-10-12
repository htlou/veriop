#include <stddef.h>
#include <stdint.h>
typedef struct ZSTD_CCtx_s ZSTD_CCtx;
static size_t requested;
static void* audit_calloc(size_t count, size_t bytes) {
    requested = count * bytes;
    return NULL;
}
#define calloc audit_calloc
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

size_t target_buffer_request(unsigned n) {
    __builtin_assume(n >= 1 && n <= 128);
    requested = 0;
    ZSTDMT_createBufferPool(n);
    return requested;
}
size_t target_cctx_request(unsigned n) {
    __builtin_assume(n >= 1 && n <= 128);
    requested = 0;
    ZSTDMT_createCCtxPool(n);
    return requested;
}
