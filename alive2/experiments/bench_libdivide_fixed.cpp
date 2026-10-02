/* Finite divisor sweep using the upstream benchmark and numerator generator. */
#include "benchmark.h"
#include <cassert>
#include <chrono>

template <typename T> void bench() {
    random_numerators<T> data;
    for (T d : {T(1), T(2), T(3), T(7), T(10), T(31), T(63), T(255), T(65535), T(-1)}) {
        divider<T> div(d);
        uint64_t expected = sum_quotients(data, d);
        double best = 1e30;
        for (int trial = 0; trial < TEST_COUNT; ++trial) {
            // Upstream POSIX timer.hpp scales microseconds by 1e6 instead of 1e3.
            auto start = std::chrono::steady_clock::now();
            asm volatile("" ::: "memory");
            uint64_t result = sum_quotients(data, div);
            auto stop = std::chrono::steady_clock::now();
            assert(result == expected);
            best = std::min(best, std::chrono::duration<double, std::nano>(stop-start).count());
        }
        printf("%zu,%llu,%.6f\n", sizeof(T)*8, (unsigned long long)d, best/data.length());
    }
}

int main() {
    puts("bits,divisor,ns_per_divide");
    bench<uint32_t>();
    bench<uint64_t>();
}
