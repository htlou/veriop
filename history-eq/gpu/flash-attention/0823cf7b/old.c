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
  if (args->block_table == 0) {
    tma_load_3d(desc, barrier, smem, c0, c1, c2);
    return;
  }
  __builtin_trap();
}

void target_copy4(const void *desc, uint64_t *barrier, const PagedCopyArgs *args,
                  void *smem, int32_t k, int32_t m, int32_t h, int32_t b) {
  __builtin_assume(args != 0);
  if (args->block_table == 0) {
    tma_load_4d(desc, barrier, smem, k, m, h, b);
    return;
  }
  int32_t page = m / args->page_block_size;
  int32_t offset = m - page * args->page_block_size;
  int32_t page_index = args->block_table[page + b * args->block_table_batch_stride];
  tma_load_4d(desc, barrier, smem, k, offset, h, page_index);
}
