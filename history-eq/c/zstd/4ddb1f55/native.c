#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>

uint64_t target_zero_count(void);

int main(void) {
    uint64_t result = target_zero_count();
    printf("FSE_count(srcSize=0,maxSymbolValue=255): count[64]=0x%08" PRIx32 "\n",
           (uint32_t)result);
    return 0;
}
