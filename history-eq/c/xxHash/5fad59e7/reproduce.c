#include <inttypes.h>
#include <stdio.h>
#include "xxh3.h"

int main(void) {
    const unsigned char input[8] = {0, 1, 2, 3, 4, 5, 6, 7};
    printf("%016" PRIx64 "\n", (uint64_t)XXH3_64bits(input, sizeof(input)));
    return 0;
}
