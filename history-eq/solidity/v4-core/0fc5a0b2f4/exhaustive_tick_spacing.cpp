#include <cstdint>
#include <cstdio>

// EVM SDIV returns zero for a zero divisor; C++ integer division truncates toward zero.
static std::int64_t sdiv(std::int64_t a, std::int64_t b) {
    return b == 0 ? 0 : a / b;
}

int main() {
    constexpr std::int64_t min_tick = -887272;
    constexpr std::int64_t max_tick =  887272;
    std::uint64_t checked = 0;
    std::uint64_t checksum = 0;
    for (std::int64_t spacing = -(1LL << 23); spacing < (1LL << 23); ++spacing) {
        const std::int64_t old_min = sdiv(min_tick, spacing) * spacing;
        const std::int64_t old_max = sdiv(max_tick, spacing) * spacing;
        const std::int64_t old_count = sdiv(old_max - old_min, spacing) + 1;
        const std::int64_t new_count = sdiv(max_tick, spacing) - sdiv(min_tick, spacing) + 1;
        if (old_count != new_count) {
            std::printf("counterexample spacing=%lld old=%lld new=%lld\n",
                        static_cast<long long>(spacing), static_cast<long long>(old_count),
                        static_cast<long long>(new_count));
            return 1;
        }
        checksum += static_cast<std::uint64_t>(old_count);
        ++checked;
    }
    std::printf("equal numTicks for all %llu int24 inputs; checksum=%llu\n",
                static_cast<unsigned long long>(checked),
                static_cast<unsigned long long>(checksum));
    return checked == (1ULL << 24) ? 0 : 2;
}
