#include <stdio.h>
#include "xxhash.h"

int main(void) {
    printf("%u\n", XXH_versionNumber());
    return 0;
}
