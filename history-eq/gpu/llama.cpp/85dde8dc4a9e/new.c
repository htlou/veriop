#include <stddef.h>
#include <stdint.h>
#define ASSUME(x) __builtin_assume(x)
size_t src_index(int r, int c, int n_cols) {
    ASSUME(r >= 0 && r < 8192 && r % 2 == 0);
    ASSUME(n_cols >= 32 && n_cols <= 8192 && n_cols % 32 == 0);
    ASSUME(c >= 0 && c < n_cols && c % 32 == 0);
    const size_t tile_row_stride = (n_cols / 32) * 1024;
    const size_t r0 = (size_t)r / 32;
    const size_t r1 = ((size_t)r % 32) / 2;
    const size_t c0 = (size_t)c / 32;
    const size_t row_base = r0 * tile_row_stride;
    const size_t tile = row_base + c0 * 1024;
    return tile + r1 * 64;
}
size_t dst0_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    const size_t output_row_base = (size_t)r * n;
    return output_row_base + c;
}
size_t dst1_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    const size_t output_row_base = (size_t)r * n;
    return output_row_base + c + n;
}
