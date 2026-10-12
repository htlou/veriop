#!/usr/bin/env python3
"""Extract the exact old scalar and new eight-digit steps for big endian."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/fast_float"
commit = "49ca5d855ea958a55e86c8084f9fd9c0fd6f7707"
path = "include/fast_float/ascii_number.h"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [path]
diff = git("diff", commit + "^", commit, "--", path)
saved = here / "source.diff"
if saved.exists():
    assert saved.read_bytes() == diff
else:
    saved.write_bytes(diff)


def function(source: str, beginning: str) -> str:
    start = source.index(beginning)
    end = source.index("\n}", start) + 2
    return source[start:end]


def source_at(revision: str, side: str) -> str:
    data = git("show", f"{revision}:{path}")
    saved_source = here / f"ascii_number.{side}.txt"
    if saved_source.exists():
        assert saved_source.read_bytes() == data
    else:
        saved_source.write_bytes(data)
    return data.decode()


old = source_at(commit + "^", "old")
new = source_at(commit, "new")
assert "answer.digits[answer.num_digits] = uint8_t(*p - '0');" in old
assert "write_u64(answer.digits + answer.num_digits, val);" in new
is_integer = next(line for line in old.splitlines()
                  if line.startswith("fastfloat_really_inline bool is_integer(char c)"))
scalar_start = old.index("    while ((p != pend) && is_integer(*p)) {", old.index("#if FASTFLOAT_IS_BIG_ENDIAN == 0"))
scalar_end = old.index("\n    }", scalar_start) + len("\n    }")
scalar = old[scalar_start:scalar_end]
assert "uint8_t digit = uint8_t(*p - '0');" in scalar
assert "i = i * 10 + digit;" in scalar

swaps = function(new, "fastfloat_really_inline uint64_t byteswap(uint64_t val)")
read = function(new, "fastfloat_really_inline uint64_t read_u64(const char *chars)")
write = function(new, "fastfloat_really_inline void write_u64(uint8_t *chars, uint64_t val)")
parse_num = function(new, "fastfloat_really_inline uint32_t  parse_eight_digits_unrolled(uint64_t val)")
parse_ptr = function(new, "fastfloat_really_inline uint32_t parse_eight_digits_unrolled(const char *chars)")
digits_num = function(new, "fastfloat_really_inline bool is_made_of_eight_digits_fast(uint64_t val)")
digits_ptr = function(new, "fastfloat_really_inline bool is_made_of_eight_digits_fast(const char *chars)")

common = (
    "#if __BYTE_ORDER__ != __ORDER_BIG_ENDIAN__\n#error target must be big endian\n#endif\n"
    "using uint64_t = unsigned long long;\nusing uint32_t = unsigned int;\n"
    "using uint8_t = unsigned char;\n"
    "#define FASTFLOAT_IS_BIG_ENDIAN 1\n"
    "#define fastfloat_really_inline inline __attribute__((always_inline))\n"
    'inline void *memcpy(void *d, const void *s, unsigned long n) { return __builtin_memcpy(d, s, n); }\n'
    "namespace fast_float {\n" + is_integer + "\n"
    "static bool valid_eight(const char *p) {\n"
    "  for (int j = 0; j < 8; j++) if (!is_integer(p[j])) return false;\n"
    "  return true;\n}\n"
)

old_body = (
    "static bool all_digits(const char *p) {\n"
    "  for (int j = 0; j < 8; j++) if (!is_integer(p[j])) return false;\n"
    "  return true;\n}\n"
    "static uint32_t scalar_parse(const char *bytes) {\n"
    "  const char *p = bytes; const char *pend = bytes + 8;\n"
    "  uint64_t i = 0;\n" + scalar + "\n"
    "  return uint32_t(i);\n}\n"
    "static bool digits(const char *p) { return all_digits(p); }\n"
    "static uint32_t parse(const char *p) { return scalar_parse(p); }\n"
    "static void store_digits(uint8_t *out, const char *p) {\n"
    "  for (int j = 0; j < 8; j++) out[j] = uint8_t(p[j] - '0');\n"
    "}\n"
)
new_body = (
    swaps + "\n" + read + "\n" + write + "\n" + parse_num + "\n" + parse_ptr + "\n"
    + digits_num + "\n" + digits_ptr + "\n"
    "static bool digits(const char *p) { return is_made_of_eight_digits_fast(p); }\n"
    "static uint32_t parse(const char *p) { return parse_eight_digits_unrolled(p); }\n"
    "static void store_digits(uint8_t *out, const char *p) {\n"
    "  uint64_t val = read_u64(p);\n"
    "  val -= 0x3030303030303030;\n"
    "  write_u64(out, val);\n"
    "}\n"
)

suffix = (
    "} // namespace fast_float\n"
    'extern "C" unsigned long long target_is_digits(unsigned long long raw) {\n'
    "  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);\n"
    "  return fast_float::digits(bytes);\n}\n"
    'extern "C" unsigned long long target_parse(unsigned long long raw) {\n'
    "  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);\n"
    "  if (!fast_float::digits(bytes)) return ~0ULL;\n"
    "  return fast_float::parse(bytes);\n}\n"
    'extern "C" unsigned long long target_parse_valid(unsigned long long raw) {\n'
    "  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);\n"
    "  if (!fast_float::valid_eight(bytes)) return ~0ULL;\n"
    "  return fast_float::parse(bytes);\n}\n"
    'extern "C" unsigned long long target_digits_buffer(unsigned long long raw) {\n'
    "  char bytes[8]; __builtin_memcpy(bytes, &raw, 8);\n"
    "  if (!fast_float::valid_eight(bytes)) return ~0ULL;\n"
    "  uint8_t out[8]; fast_float::store_digits(out, bytes);\n"
    "  unsigned long long packed; __builtin_memcpy(&packed, out, 8);\n"
    "  return packed;\n}\n"
)
(here / "old.cpp").write_text(common + old_body + suffix)
(here / "new.cpp").write_text(common + new_body + suffix)
manifest = {
    "commit": commit,
    "parent": git("rev-parse", commit + "^").decode().strip(),
    "old_sha256": hashlib.sha256(old.encode()).hexdigest(),
    "new_sha256": hashlib.sha256(new.encode()).hexdigest(),
    "scope": "exact old fractional scalar loop versus exact new endian-aware eight-digit helpers; explicit big-endian target",
}
(here / "source-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Materialized exact scalar and fast-path source fragments for big endian")
