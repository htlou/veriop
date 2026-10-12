#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>

uint64_t old_target(uint32_t litLength, uint32_t matchCode);
uint64_t new_target(uint32_t litLength, uint32_t matchCode);

int main(void) {
    const uint32_t litLength = 64, matchCode = 65538;
    const uint64_t old = old_target(litLength, matchCode);
    const uint64_t new = new_target(litLength, matchCode);
    printf("lit=%u match=%u old=%" PRIu64 " new=%" PRIu64 " equal=%d\n",
           litLength, matchCode, old, new, old == new);
    return old != new;
}
