// Differential test of the exact linked objects: old (stock u16_impl.o, symbol
// renamed with objcopy) vs new (cand u16_impl.o) from_chars_int_advanced<uint16_t,char>.
// Every input is placed so that [first,last) ends exactly at an inaccessible page
// (guard page), so any read past `last` faults.
#include "fast_float/fast_float.h"
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <random>
#include <sys/mman.h>
#include <unistd.h>
using namespace fast_float;
using R = from_chars_result_t<char>;
R f_new(char const *, char const *, uint16_t &, parse_options_t<char>) noexcept __asm__(
    "_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE");
R f_old(char const *, char const *, uint16_t &, parse_options_t<char>) noexcept __asm__("u16_old_ref");

static char *page_end;
static unsigned long long n_cases = 0, n_fast_shape = 0;
static void check(const unsigned char *s, size_t len, parse_options_t<char> o) {
  char *first = page_end - len;
  memcpy(first, s, len);
  uint16_t vo = 0xBEEF, vn = 0xBEEF;
  R ro = f_old(first, page_end, vo, o);
  R rn = f_new(first, page_end, vn, o);
  ++n_cases;
  if (ro.ptr != rn.ptr || ro.ec != rn.ec || vo != vn) {
    printf("MISMATCH len=%zu base=%d fmt=%llu bytes=", len, o.base, (unsigned long long)o.format);
    for (size_t i = 0; i < len; i++) printf("%02x", s[i]);
    printf(" old(ptr+%td ec=%d v=%u) new(ptr+%td ec=%d v=%u)\n", ro.ptr - first, int(ro.ec), vo,
           rn.ptr - first, int(rn.ec), vn);
    exit(1);
  }
}
int main() {
  long ps = sysconf(_SC_PAGESIZE);
  char *m = (char *)mmap(nullptr, 2 * ps, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  mprotect(m + ps, ps, PROT_NONE);
  page_end = m + ps;
  const chars_format fmts[] = {chars_format::general, chars_format::general | chars_format::skip_white_space,
                               chars_format::general | chars_format::allow_leading_plus,
                               chars_format::general | chars_format::skip_white_space | chars_format::allow_leading_plus};
  parse_options_t<char> o10(chars_format::general, '.', 10);
  unsigned char buf[64];
  // A: exhaustive over a small alphabet, lengths 0..8, then same strings with every
  //    tail length 0..4 of mixed bytes (so len >= 8 is exercised with all shapes).
  const unsigned char alpha[] = {'0', '1', '5', '6', '9', ',', '/', ':', 0xBA};
  const int A = sizeof alpha;
  for (int L = 0; L <= 8; L++) {
    long total = 1; for (int i = 0; i < L; i++) total *= A;
    for (long idx = 0; idx < total; idx++) {
      long t = idx;
      for (int i = 0; i < L; i++) { buf[i] = alpha[t % A]; t /= A; }
      for (int tail = 0; tail <= (L == 8 ? 2 : 8 - L + 2); tail++) {
        for (int i = 0; i < tail; i++) buf[L + i] = "7,\xff 3"[(idx + i) % 5];
        check(buf, L + tail, o10);
      }
    }
  }
  printf("A done: %llu cases\n", n_cases);
  // B: every value 0..99999 (and 100000..999999 sampled), 0-3 leading zeros, every
  //    possible following byte, tail padded to a total length of 5..12 bytes.
  for (int v = 0; v < 1000000; v += (v < 100000 ? 1 : 7)) {
    for (int lz = 0; lz <= 3; lz++) {
      int n = snprintf((char *)buf, sizeof buf, "%0*d", lz + (v ? 0 : 0) + (int)snprintf(nullptr, 0, "%d", v), v);
      for (int d = 0; d < 256; d += (lz ? 17 : 1)) {
        buf[n] = (unsigned char)d;
        int total = n + 1 + (d % 4) * 2;
        for (int i = n + 1; i < total; i++) buf[i] = '0' + (i * 7 + d) % 10;
        check(buf, total, o10);
        if (d % 37 == 0) check(buf, n, o10);
      }
    }
  }
  printf("A+B done: %llu cases\n", n_cases);
  // C: random buffers, random options (base 10 mostly, else 2..36; all format flags).
  std::mt19937_64 rng(42);
  for (long it = 0; it < 30000000; it++) {
    uint64_t r = rng();
    size_t len = r % 21;
    for (size_t i = 0; i < len; i++) {
      uint64_t q = rng();
      buf[i] = (q % 10 < 7) ? (unsigned char)('0' + (q >> 8) % 10) : (unsigned char)(q >> 16);
    }
    int base = ((r >> 8) % 4) ? 10 : int(2 + (r >> 16) % 35);
    parse_options_t<char> o(fmts[(r >> 24) % 4], '.', base);
    check(buf, len, o);
  }
  printf("ALL PASS: %llu cases\n", n_cases);
}
