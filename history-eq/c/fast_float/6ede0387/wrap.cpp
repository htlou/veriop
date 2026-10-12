#include <cstddef>
#include <cstdint>
#include <cstdio>
#include "fast_float/ascii_number.h"

using Result = fast_float::parsed_number_string_t<char>;

extern "C" uint64_t target_size() { return sizeof(Result); }
extern "C" uint64_t target_lastmatch_offset() { return offsetof(Result, lastmatch); }
extern "C" uint64_t target_fraction_offset() { return offsetof(Result, fraction); }

#ifdef LAYOUT_MAIN
int main() {
  std::printf("size=%llu lastmatch=%llu fraction=%llu\n",
              (unsigned long long)target_size(),
              (unsigned long long)target_lastmatch_offset(),
              (unsigned long long)target_fraction_offset());
}
#endif
