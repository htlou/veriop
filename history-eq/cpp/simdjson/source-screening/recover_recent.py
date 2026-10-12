#!/usr/bin/env python3
"""Recover two missing historical numberparsing.h versions from pinned HEAD."""

import hashlib
from pathlib import Path
import re

root = Path(__file__).resolve().parents[4]
current = (root / "benchmarks/repos/simdjson/include/simdjson/generic/numberparsing.h").read_bytes()


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


def replace(source, old, new, count=1):
    assert source.count(old) == count, (old[:80], source.count(old))
    return source.replace(old, new)


def remove_function(source, signature):
    pattern = r"SIMDJSON_NO_SANITIZE_UNDEFINED\nsimdjson_inline void " + signature + r"\(.*?\n}\n\n"
    result, count = re.subn(pattern, "", source, count=1, flags=re.S)
    assert count == 1, signature
    return result


assert oid(current) == "0092a87a0e6637b2dc17669181f7a37db58e0cf4"
source = current.decode()

# Undo ed60f061's four comment lines.
source = replace(source, "  // Prior related work: jsonifier parses integers as eight-digit SWAR words\n"
                 "  // (str_to_i.hpp, https://github.com/nihilai-collective/Jsonifier). This\n"
                 "  // takes one such word with parse_eight_digits_unrolled, the routine\n"
                 "  // simdjson uses for long fractions.\n", "")
assert oid(source.encode()) == "6765e11ef7e552e92c4265517c45778142c2a833"

# Undo c9030726's eight-digit-first scan.
source = replace(source,
    "  // Identifiers, timestamps and counters often have eight digits or more.\n"
    "  if (is_made_of_eight_digits_fast(p)) {\n"
    "    i = i * 100000000 + parse_eight_digits_unrolled(p);\n"
    "    p += 8;\n"
    "  }\n"
    "  const uint8_t *const swar_end = p + 8;",
    "  const uint8_t *const swar_end = p + 16;")
assert oid(source.encode()) == "14f62a66b3c2f9839614f8caa5c0a64bad0304b3"
new_float = source.encode()

# Undo 96462aec's first-digit helper and its four call sites.
source = remove_function(source, "parse_float_integer_digits")
source = replace(source, "  bool leading_zero;\n  parse_float_integer_digits(p, i, leading_zero);",
                 "  p += parse_digit(*p, i);\n  bool leading_zero = (i == 0);\n"
                 "  while (parse_digit(*p, i)) { p++; }", 4)
assert oid(source.encode()) == "e8d195edfc4251cdd5bd1ae6fb44ba3950633912"
new_integer = source.encode()

# Undo 3b2870d8's batch helper and its four integer accessor calls.
source = remove_function(source, "parse_integer_digits")
source = replace(source, "  parse_integer_digits(p, i);",
                 "  while (parse_digit(*p, i)) { p++; }", 3)
source = replace(source, "  parse_integer_digits(src, i);",
                 "  while (parse_digit(*src, i)) { src++; }")
assert oid(source.encode()) == "cdbabc1cedb5aae59fc19852b18409ed9e9b572b"

here = Path(__file__).resolve().parents[1]
(here / "3b2870d8/historical-old.h").write_bytes(source.encode())
(here / "3b2870d8/historical-new.h").write_bytes(new_integer)
(here / "96462aec/historical-new.h").write_bytes(new_float)
print("recovered three exact historical blobs; all Git object IDs match")
