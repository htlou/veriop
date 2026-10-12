#include <cstdio>
#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

int main() {
  for (char c : {':', ';', '<', '=', '>', '?'}) {
    double value = -1.0;
    auto result = fast_float::from_chars(&c, &c + 1, value);
    uint64_t bits;
    std::memcpy(&bits, &value, sizeof(bits));
    std::printf("input=%c error=%d consumed=%td value_bits=%016llx\n",
                c, int(result.ec), result.ptr - &c,
                static_cast<unsigned long long>(bits));
  }
}
