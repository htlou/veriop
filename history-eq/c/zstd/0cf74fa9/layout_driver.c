#include <stdio.h>
#if defined(OLD)
#include "old.c"
#else
#include "new.c"
#endif

int main(void) {
    printf("buffer_pool=%zu buffer_slot=%zu cctx_pool=%zu cctx_slot=%zu\n",
           sizeof(ZSTDMT_bufferPool), sizeof(buffer_t),
           sizeof(ZSTDMT_CCtxPool), sizeof(ZSTD_CCtx *));
    for (unsigned n = 1; n <= 128; ++n)
        printf("n=%u buffer=%zu cctx=%zu\n", n,
               target_buffer_request(n), target_cctx_request(n));
}
