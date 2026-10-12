#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#include <stdio.h>

int main(void) {
    unsigned char data[1024], a[192], b[192];
    for (int i = 0; i < 1024; i++) data[i] = (unsigned char)(i * 13 + 7);
    for (int i = 0; i < 192; i++) {
        a[i] = (unsigned char)(i * 3 + 11);
        b[i] = (unsigned char)(i * 5 + 19);
    }
    XXH128_hash_t x = XXH3_128bits_withSecret(data, 300, a, sizeof(a));
    XXH128_hash_t y = XXH3_128bits_withSecret(data, 300, b, sizeof(b));
    printf("a=%016llx%016llx b=%016llx%016llx\n",
           (unsigned long long)x.high64, (unsigned long long)x.low64,
           (unsigned long long)y.high64, (unsigned long long)y.low64);
    return 0;
}
