/* A valid HUF weight header with four symbols, including one zero weight.
 * maxSymbolValuePtr=0 makes HUF_readCTable return before table construction. */
#include <stdio.h>
#include <stdint.h>
#define HUF_STATIC_LINKING_ONLY
#include "huf.h"

int main(void) {
    const unsigned char src[] = {130, 0x01, 0x10};
    unsigned char weights[256] = {0};
    unsigned ranks[16] = {0};
    unsigned symbols = 0, table_log = 0;
    uint64_t table_storage[512] = {0};
    unsigned max_symbol = 0;
    unsigned has_zero = 7;
    size_t const stats = HUF_readStats(weights, 256, ranks, &symbols, &table_log, src, sizeof src);
    size_t const result = HUF_readCTable((HUF_CElt *)table_storage, &max_symbol, src, sizeof src, &has_zero);
    printf("stats=%zu symbols=%u table_log=%u rank_zero=%u\n", stats, symbols, table_log, ranks[0]);
    printf("result=%zu max_symbol=%u has_zero=%u\n", result, max_symbol, has_zero);
    return 0;
}
