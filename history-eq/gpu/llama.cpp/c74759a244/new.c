#include <stdint.h>
uint32_t index_b(uint16_t row_x, uint16_t row_y, uint32_t batch_stride_b, uint32_t stride_b, uint32_t block_k) {
uint32_t k = block_k;
return row_y * batch_stride_b + row_x * stride_b + k;
}
