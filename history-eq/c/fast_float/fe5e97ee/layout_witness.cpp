#include <cstddef>
#include <cstdio>
#include "fast_float/ascii_number.h"

int main() {
  using parsed = fast_float::parsed_number_string_t<char>;
  std::printf("size=%zu error=%zu negative=%zu\n", sizeof(parsed),
              offsetof(parsed, error), offsetof(parsed, negative));
}
