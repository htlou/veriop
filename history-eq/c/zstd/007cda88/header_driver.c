#define XXH_INLINE_ALL
#include HISTORICAL_HEADER

unsigned long long target_round(unsigned long long acc, unsigned long long input) {
    return XXH64_round(acc, input);
}
