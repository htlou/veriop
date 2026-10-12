#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include "fast_float/fast_float.h"

int main() {
  char line[256];
  while (std::fgets(line, sizeof(line), stdin)) {
    const size_t n = std::strcspn(line, "\n");
    std::u16string input;
    for (size_t i = 0; i < n; ++i) input.push_back(char16_t(line[i]));
    double value = -1.0;
    auto r = fast_float::from_chars(input.data(), input.data() + input.size(), value);
    uint64_t bits;
    std::memcpy(&bits, &value, sizeof(bits));
    std::printf("%d %td %016llx\n", int(r.ec), r.ptr - input.data(),
                static_cast<unsigned long long>(bits));
  }
}
