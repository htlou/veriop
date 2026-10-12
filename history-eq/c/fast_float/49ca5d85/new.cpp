#if __BYTE_ORDER__ != __ORDER_BIG_ENDIAN__
#error target must be big endian
#endif
using uint64_t = unsigned long long;
using uint32_t = unsigned int;
using uint8_t = unsigned char;
#define FASTFLOAT_IS_BIG_ENDIAN 1
#define fastfloat_really_inline inline __attribute__((always_inline))
inline void *memcpy(void *d, const void *s, unsigned long n) { return __builtin_memcpy(d, s, n); }
namespace fast_float {
fastfloat_really_inline bool is_integer(char c)  noexcept  { return c >= '0' && c <= '9'; }
static bool valid_eight(const char *p) {
  for (int j = 0; j < 8; j++) if (!is_integer(p[j])) return false;
  return true;
}
fastfloat_really_inline uint64_t byteswap(uint64_t val) {
  return (val & 0xFF00000000000000) >> 56
    | (val & 0x00FF000000000000) >> 40
    | (val & 0x0000FF0000000000) >> 24
    | (val & 0x000000FF00000000) >> 8
    | (val & 0x00000000FF000000) << 8
    | (val & 0x0000000000FF0000) << 24
    | (val & 0x000000000000FF00) << 40
    | (val & 0x00000000000000FF) << 56;
}
fastfloat_really_inline uint64_t read_u64(const char *chars) {
  uint64_t val;
  ::memcpy(&val, chars, sizeof(uint64_t));
#if FASTFLOAT_IS_BIG_ENDIAN == 1
  // Need to read as-if the number was in little-endian order.
  val = byteswap(val);
#endif
  return val;
}
fastfloat_really_inline void write_u64(uint8_t *chars, uint64_t val) {
#if FASTFLOAT_IS_BIG_ENDIAN == 1
  // Need to read as-if the number was in little-endian order.
  val = byteswap(val);
#endif
  ::memcpy(chars, &val, sizeof(uint64_t));
}
fastfloat_really_inline uint32_t  parse_eight_digits_unrolled(uint64_t val) {
  const uint64_t mask = 0x000000FF000000FF;
  const uint64_t mul1 = 0x000F424000000064; // 100 + (1000000ULL << 32)
  const uint64_t mul2 = 0x0000271000000001; // 1 + (10000ULL << 32)
  val -= 0x3030303030303030;
  val = (val * 10) + (val >> 8); // val = (val * 2561) >> 8;
  val = (((val & mask) * mul1) + (((val >> 16) & mask) * mul2)) >> 32;
  return uint32_t(val);
}
fastfloat_really_inline uint32_t parse_eight_digits_unrolled(const char *chars)  noexcept  {
  return parse_eight_digits_unrolled(read_u64(chars));
}
fastfloat_really_inline bool is_made_of_eight_digits_fast(uint64_t val)  noexcept  {
  return !((((val + 0x4646464646464646) | (val - 0x3030303030303030)) &
     0x8080808080808080));
}
fastfloat_really_inline bool is_made_of_eight_digits_fast(const char *chars)  noexcept  {
  return is_made_of_eight_digits_fast(read_u64(chars));
}
static bool digits(const char *p) { return is_made_of_eight_digits_fast(p); }
static uint32_t parse(const char *p) { return parse_eight_digits_unrolled(p); }
static void store_digits(uint8_t *out, const char *p) {
  uint64_t val = read_u64(p);
  val -= 0x3030303030303030;
  write_u64(out, val);
}
} // namespace fast_float
extern "C" unsigned long long target_is_digits(unsigned long long raw) {
  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);
  return fast_float::digits(bytes);
}
extern "C" unsigned long long target_parse(unsigned long long raw) {
  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);
  if (!fast_float::digits(bytes)) return ~0ULL;
  return fast_float::parse(bytes);
}
extern "C" unsigned long long target_parse_valid(unsigned long long raw) {
  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);
  if (!fast_float::valid_eight(bytes)) return ~0ULL;
  return fast_float::parse(bytes);
}
extern "C" unsigned long long target_digits_buffer(unsigned long long raw) {
  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);
  if (!fast_float::valid_eight(bytes)) return ~0ULL;
  uint8_t out[8]; fast_float::store_digits(out, bytes);
  unsigned long long packed; __builtin_memcpy(&packed, out, 8);
  return packed;
}
