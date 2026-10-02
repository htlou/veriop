/* Drive the upstream short-input throughput/latency benchmark with checked IR. */
#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"
#include "benchHash.h"
#include <stdio.h>
#include <stdlib.h>

extern uint64_t target_0to16(const unsigned char *, size_t, const unsigned char *, uint64_t);

static size_t hash(const void *src, size_t len, void *dst, size_t cap, void *payload) {
    (void)dst; (void)cap; (void)payload;
#ifdef STOCK
    __builtin_assume(len <= 16);
    return XXH3_64bits(src, len);
#else
    return target_0to16(src, len, XXH3_kSecret, 0);
#endif
}

int main(void) {
    puts("mode,length,distribution,ns_per_hash");
    for (unsigned mode = 0; mode < 2; ++mode) {
        for (size_t len = 1; len <= 16; ++len) {
            double rate = bench_hash(hash, mode, len, BMK_fixedSize, 100, 50);
            printf("%s,%zu,fixed,%.6f\n", mode ? "latency" : "throughput", len, 1e9/rate);
        }
        srand(1);
        double rate = bench_hash(hash, mode, 16, BMK_randomSize, 100, 50);
        printf("%s,16,random,%.6f\n", mode ? "latency" : "throughput", 1e9/rate);
    }
}
