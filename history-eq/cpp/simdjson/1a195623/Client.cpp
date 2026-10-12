using size_t = unsigned long;
using uint8_t = unsigned char;
namespace std { class string_view; class ostream; }

#define SIMDJSON_IMPLEMENTATION generic
#define simdjson_really_inline inline
#define simdjson_warn_unused
#define simdjson_unused

namespace simdjson {
enum error_code { SUCCESS, STRING_ERROR };
template<class T> struct simdjson_result {};
namespace generic { template<class T> struct implementation_simdjson_result_base {}; }
}

#include "simdjson/generic/ondemand/raw_json_string.h"

using raw = simdjson::generic::ondemand::raw_json_string;
using result = simdjson::simdjson_result<raw>;
using old_call = decltype(((result*)0)->unescape(*(uint8_t**)0));
