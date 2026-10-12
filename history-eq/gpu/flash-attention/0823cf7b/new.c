#include <stdint.h>

typedef struct {
  int64_t block_table_batch_stride;
  int page_block_size;
  int32_t *block_table;
} PagedCopyArgs;
extern void tma_load_3d(const void *, uint64_t *, void *, int32_t, int32_t, int32_t);
extern void tma_load_4d(const void *, uint64_t *, void *, int32_t, int32_t, int32_t, int32_t);

void target_copy3(const void *desc, uint64_t *barrier, const PagedCopyArgs *args,
                  void *smem, int32_t c0, int32_t c1, int32_t c2) {
  __builtin_assume(args != 0 && args->block_table == 0);
  tma_load_3d(desc, barrier, smem, c0, c1, c2);
}

void target_copy4(const void *desc, uint64_t *barrier, const PagedCopyArgs *args,
                  void *smem, int32_t k, int32_t m, int32_t h, int32_t b) {
  __builtin_assume(args != 0);
  const PagedCopyArgs *pca = args->block_table == 0 ? 0 : args;
  if (pca == 0) {
    tma_load_4d(desc, barrier, smem, k, m, h, b);
    return;
  }
  int page_block_size = pca->page_block_size;
  int32_t page = m / page_block_size;
  int32_t offset = m - page * page_block_size;
  int32_t page_index = pca->block_table[page + b * pca->block_table_batch_stride];
  tma_load_4d(desc, barrier, smem, k, offset, h, page_index);
}
