#include <cstdint>
#include "fast_float/ascii_number.h"

template <int Field> uint64_t parse_selected_path() {
  char text[2] = {'.', '5'};
  fast_float::parse_options_t<char> options(fast_float::chars_format(565));
#ifdef OLD_REVISION
  // Parent from_chars_float_advanced selects JSON when both format bits are set.
  auto parsed = fast_float::parse_number_string<true, char>(
      text, text + 2, options, false);
#else
  // The child cold helper forwards exactly to this parser specialization.
  auto parsed = fast_float::parse_number_string_impl<false, true, char>(
      text, text + 2, options, true);
#endif
  if constexpr (Field == 0) return parsed.valid;
  if constexpr (Field == 1) return uint64_t(parsed.error);
  return parsed.lastmatch ? uint64_t(parsed.lastmatch - text) : UINT64_MAX;
}

extern "C" uint64_t target_valid() { return parse_selected_path<0>(); }
extern "C" uint64_t target_error() { return parse_selected_path<1>(); }
extern "C" uint64_t target_consumed() { return parse_selected_path<2>(); }
