#include <stdint.h>
uint32_t target(uint32_t n) {
    const uint32_t mp = UINT32_C(1431655766), L = 2;
    uint32_t msbs = (uint32_t)(((uint64_t)n * mp) >> 32);
    return (uint32_t)(msbs + n) >> L;
}
