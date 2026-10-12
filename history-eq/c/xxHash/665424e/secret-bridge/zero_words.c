#include <stdint.h>
#include <string.h>
#define XXH_STATIC_LINKING_ONLY
#define XXH_INLINE_ALL
#include "xxhash.h"
static uint64_t word(unsigned i) {
    uint64_t v;
#ifdef GRPC_NEW
    unsigned char buf[192];
    XXH3_generateSecret_fromSeed(buf, 0);
    memcpy(&v, buf + i * 8, 8);
#else
    memcpy(&v, XXH3_kSecret + i * 8, 8);
#endif
    return v;
}
#define TARGET(I) uint64_t target_zero_word_##I(void) { return word(I); }
TARGET(0) TARGET(1) TARGET(2) TARGET(3) TARGET(4) TARGET(5)
TARGET(6) TARGET(7) TARGET(8) TARGET(9) TARGET(10) TARGET(11)
TARGET(12) TARGET(13) TARGET(14) TARGET(15) TARGET(16) TARGET(17)
TARGET(18) TARGET(19) TARGET(20) TARGET(21) TARGET(22) TARGET(23)
