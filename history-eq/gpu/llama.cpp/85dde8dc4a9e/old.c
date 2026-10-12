#include <stddef.h>
#include <stdint.h>
#define ASSUME(x) __builtin_assume(x)
size_t src_index(int r, int c, int n_cols) {
    ASSUME(r >= 0 && r < 8192 && r % 2 == 0);
    ASSUME(n_cols >= 32 && n_cols <= 8192 && n_cols % 32 == 0);
    ASSUME(c >= 0 && c < n_cols && c % 32 == 0);
    const int n_col_tiles = n_cols / 32;
    int r0 = r / 32;
    int r1 = r % 32;
    int c0 = c / 32;
    size_t tile = (size_t)((r0 * n_col_tiles + c0) * 1024);
    return tile + (size_t)(r1 / 2) * 64;
}
size_t dst0_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    return (size_t)(r * n + c);
}
size_t dst1_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    return (size_t)(r * n + c + n);
}
