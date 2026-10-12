#include <stdint.h>

#define HUF_STATIC_LINKING_ONLY
#include "huf.h"

unsigned target(void) {
    const unsigned char header[] = {130, 0x01, 0x10};
    uint64_t table_storage[512] = {0};
    unsigned max_symbol = 0;
    unsigned has_zero = 7;
    (void)HUF_readCTable((HUF_CElt *)table_storage, &max_symbol, header, sizeof header, &has_zero);
    return has_zero;
}
