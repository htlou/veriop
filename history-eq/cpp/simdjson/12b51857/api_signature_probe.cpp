#include <cstdint>
#include <cstdio>
#include <cstdlib>

using u8 = std::uint8_t;
using u32 = std::uint32_t;
using u64 = std::uint64_t;
using s64 = std::int64_t;
#define really_inline inline
#include HISTORICAL_HEADER

using OldPrintJson = void (ParsedJson::*)();
OldPrintJson old_client_call = &ParsedJson::printjson;
