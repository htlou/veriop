/* Source-identical write/check ordering in HUF_readCTable's error branch.
 * A local variable represents a valid caller-owned hasZeroWeights slot, and
 * its final value is returned so Alive2 compares that observable state. */
#include <stdint.h>

uint32_t old_error_branch(uint32_t initial, uint32_t rank_zero,
                          uint32_t nb_symbols, uint32_t max_symbol) {
    uint32_t has_zero = initial;
    if (!(nb_symbols > max_symbol + 1)) __builtin_unreachable();
    if (nb_symbols > max_symbol + 1) return has_zero;
    has_zero = 0;
    return has_zero;
}

uint32_t new_error_branch(uint32_t initial, uint32_t rank_zero,
                          uint32_t nb_symbols, uint32_t max_symbol) {
    uint32_t has_zero = initial;
    if (!(nb_symbols > max_symbol + 1)) __builtin_unreachable();
    has_zero = (rank_zero > 0);
    if (nb_symbols > max_symbol + 1) return has_zero;
    return has_zero;
}
