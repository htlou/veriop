#!/usr/bin/env python3
"""Make experimental split variants from src/new (fast path at entry).
v2: fast path in from_chars_int_advanced, general path moved to a separate never-inline function (tail call).
v3: same but the new from_chars_int_advanced is really_inline (fast path inlined into callers)."""
import shutil, sys, re
from pathlib import Path
root = Path(__file__).resolve().parent.parent
for name, attr in [('v2', 'FASTFLOAT_CONSTEXPR20'), ('v3', 'fastfloat_really_inline FASTFLOAT_CONSTEXPR20')]:
    dst = root / 'src' / name
    shutil.rmtree(dst, ignore_errors=True)
    shutil.copytree(root / 'src/stock', dst)
    shutil.copy(root / 'src/new/include/fast_float/ascii_number.h', dst / 'include/fast_float/ascii_number.h')
    p = dst / 'include/fast_float/parse_number.h'
    s = p.read_text()
    old_head = ('template <typename T, typename UC>\nFASTFLOAT_CONSTEXPR20 from_chars_result_t<UC>\n'
                'from_chars_int_advanced(UC const *first, UC const *last, T &value,\n'
                '                        parse_options_t<UC> options) noexcept {\n')
    assert s.count(old_head) == 1
    new_fn = f'''template <typename T, typename UC>
fastfloat_never_inline FASTFLOAT_CONSTEXPR20 from_chars_result_t<UC>
from_chars_int_advanced_general(UC const *first, UC const *last, T &value,
                        parse_options_t<UC> options) noexcept;

template <typename T, typename UC>
{attr} from_chars_result_t<UC>
from_chars_int_advanced(UC const *first, UC const *last, T &value,
                        parse_options_t<UC> options) noexcept {{
  FASTFLOAT_IF_CONSTEXPR17((std::is_same<T, std::uint16_t>::value &&
                            std::is_same<UC, char>::value)) {{
    from_chars_result_t<UC> answer;
    if (!cpp20_and_in_constexpr() && options.base == 10 &&
        try_parse_u16_fast(
            reinterpret_cast<char const *>(first),
            reinterpret_cast<char const *>(last),
            reinterpret_cast<uint16_t &>(value),
            reinterpret_cast<from_chars_result_t<char> &>(answer))) {{
      return answer;
    }}
  }}
  return from_chars_int_advanced_general(first, last, value, options);
}}

template <typename T, typename UC>
fastfloat_never_inline FASTFLOAT_CONSTEXPR20 from_chars_result_t<UC>
from_chars_int_advanced_general(UC const *first, UC const *last, T &value,
                        parse_options_t<UC> options) noexcept {{
'''
    s = s.replace(old_head, new_fn)
    p.write_text(s)
