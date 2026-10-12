#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "fast_float/fast_float.h"

static_assert(uint64_t(fast_float::chars_format::json |
                       fast_float::chars_format::javascript) == 565);

int main() {
  char line[256];
  while (std::fgets(line, sizeof(line), stdin)) {
    char *text = line;
    unsigned long long format = std::strtoull(text, &text, 0);
    if (*text == ' ') ++text;
    size_t n = std::strcspn(text, "\n");
    double value = 123.0;
    auto r = fast_float::from_chars_advanced(
        text, text + n, value,
        fast_float::parse_options_t<char>(fast_float::chars_format(format)));
    uint64_t bits;
    std::memcpy(&bits, &value, sizeof(bits));
    std::printf("%d %td %016llx\n", int(r.ec), r.ptr - text,
                static_cast<unsigned long long>(bits));
  }
}
