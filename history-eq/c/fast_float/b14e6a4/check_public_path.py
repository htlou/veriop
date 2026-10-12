#!/usr/bin/env python3
"""Check the unchanged historical path from integer from_chars to parse_int_string."""

from pathlib import Path
import os
import subprocess

root = Path(__file__).resolve().parents[4]
repo = root / "benchmarks/repos/fast_float"
commit = "b14e6a466aba8813a9e8da2defb0671fa2db3410"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> str:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env).decode()


changed = git("diff", "--name-only", commit + "^", commit, "--", "include/fast_float").splitlines()
assert changed == ["include/fast_float/ascii_number.h"], changed
for name in ("fast_float.h", "float_common.h", "parse_number.h"):
    path = f"include/fast_float/{name}"
    old = git("rev-parse", f"{commit}^:{path}").strip()
    new = git("rev-parse", f"{commit}:{path}").strip()
    assert old == new, (name, old, new)
    print(name, old)

parser = git("show", f"{commit}:include/fast_float/parse_number.h")
common = git("show", f"{commit}:include/fast_float/float_common.h")
assert "options.base = base;\n  return from_chars_advanced(first, last, value, options);" in parser
assert "2 * size_t(is_supported_integer_type<T>::value)" in parser
assert "return from_chars_int_advanced(first, last, value, options);" in parser
assert "if (first == last || base < 2 || base > 36)" in parser
assert "return parse_int_string(first, last, value, options);" in parser
assert "UC dot = UC('.'), int b = 10" in common
assert "constexpr explicit parse_options_t(chars_format fmt = chars_format::general," in common
print("Unchanged integer API path reaches parse_int_string for nonempty base-10 input")
