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
static bool all_digits(const char *p) {
  for (int j = 0; j < 8; j++) if (!is_integer(p[j])) return false;
  return true;
}
static uint32_t scalar_parse(const char *bytes) {
  const char *p = bytes; const char *pend = bytes + 8;
  uint64_t i = 0;
    while ((p != pend) && is_integer(*p)) {
      uint8_t digit = uint8_t(*p - '0');
      ++p;
      i = i * 10 + digit; // in rare cases, this will overflow, but that's ok
    }
  return uint32_t(i);
}
static bool digits(const char *p) { return all_digits(p); }
static uint32_t parse(const char *p) { return scalar_parse(p); }
static void store_digits(uint8_t *out, const char *p) {
  for (int j = 0; j < 8; j++) out[j] = uint8_t(p[j] - '0');
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
