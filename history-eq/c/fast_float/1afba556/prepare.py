#!/usr/bin/env python3
"""Audit the historical recovery branch and materialize an exact-source slice."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/fast_float"
commit = "1afba556e344360c403ea060b041fa27032fa4b4"
path = "include/fast_float/decimal_to_binary.h"
table_path = "include/fast_float/fast_table.h"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


changed = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert changed == [path, "tests/CMakeLists.txt", "tests/powersoffive_hardround.cpp"]
diff = git("diff", commit + "^", commit, "--", path)
saved_diff = here / "source.diff"
if saved_diff.exists():
    assert saved_diff.read_bytes() == diff
else:
    saved_diff.write_bytes(diff)

old_data = git("show", f"{commit}^:{path}")
new_data = git("show", f"{commit}:{path}")
table_data = git("show", f"{commit}^:{table_path}")
assert table_data == git("show", f"{commit}:{table_path}")
for name, data in (("decimal_to_binary.old.txt", old_data),
                   ("decimal_to_binary.new.txt", new_data),
                   ("fast_table.txt", table_data)):
    target = here / name
    if target.exists():
        assert target.read_bytes() == data
    else:
        target.write_bytes(data)

old, new, table = old_data.decode(), new_data.decode(), table_data.decode()
start = "template <int bit_precision>\nfastfloat_really_inline\nvalue128 compute_product_approximation"
old_approx = old[old.index(start):old.index("\n}\n\nnamespace {", old.index(start)) + 2]
new_approx = new[new.index(start):new.index("\n}\n\nnamespace {", new.index(start)) + 2]
assert old_approx == new_approx
div_start = new.index("  inline bool is_divisible(int64_t q, uint64_t w)")
div_end = new.index("\n  }\n} // namespace", div_start) + 4
div_source = new[div_start:div_end]
assert "uint64_t product = w * inverse;" in div_source

table_text = table.split("power_of_five_128[]= {", 1)[1].split("};", 1)[0]
words = [int(x, 16) for x in re.findall(r"0x[0-9a-fA-F]+", table_text)]
assert len(words) == 1302
new_pairs = [tuple(int(v, 16) for v in pair) for pair in re.findall(
    r"\{(0x[0-9a-fA-F]+),(0x[0-9a-fA-F]+)\}", div_source)]
assert len(new_pairs) == 10

q = -27
original = 5 ** 27
lz = 64 - original.bit_length()
w = original << lz
index = 2 * (q + 342)
mask = (1 << 64) - 1
first = w * words[index]
low = first & mask
high = first >> 64
second_high = None
if (high & (mask >> 55)) == (mask >> 55):
    second_high = (w * words[index + 1]) >> 64
    low = (low + second_high) & mask
    if second_high > low:
        high += 1
inverse, threshold = new_pairs[-q - 18]
div_product = (w * inverse) & mask
assert low == mask and div_product <= threshold
witness = {
    "decimal_input": f"{original}e{q}", "q": q, "original_mantissa": original,
    "leading_zeroes": lz, "normalized_w": w, "table_index": index,
    "approximation_low_hex": hex(low), "approximation_high_hex": hex(high),
    "second_product_high_hex": hex(second_high) if second_high is not None else None,
    "inverse_product_hex": hex(div_product), "divisibility_threshold_hex": hex(threshold),
    "old_recompute_flag": 1, "new_recompute_flag": 0,
}
(here / "witness.json").write_text(json.dumps(witness, indent=2) + "\n")

prelude = (
    "using uint64_t = unsigned long long;\nusing int64_t = long long;\n"
    "#define fastfloat_really_inline inline __attribute__((always_inline))\n"
    "namespace fast_float {\n"
    "struct value128 { uint64_t low; uint64_t high; };\n"
    "fastfloat_really_inline value128 full_multiplication(uint64_t a, uint64_t b) {\n"
    "  unsigned __int128 p = (unsigned __int128)a * b;\n"
    "  return {uint64_t(p), uint64_t(p >> 64)};\n}\n"
    "constexpr int smallest_power_of_five = -342;\n"
    "const uint64_t power_of_five_128[] = {" + table_text + "};\n"
    + old_approx + "\n"
)
flag_old = (
    "  if (product.low == 0xFFFFFFFFFFFFFFFF) {\n"
    "    return 1; // old answer.power2 = -1; caller uses slow path\n"
    "  }\n"
)
flag_new = (
    "  if (product.low == 0xFFFFFFFFFFFFFFFF) {\n"
    "    if (!is_divisible(q, w)) return 1;\n"
    "    product.low += 1; product.high += 1;\n"
    "  }\n"
)
common_tail = (
    'extern "C" uint64_t target_recompute_flag() {\n'
    f"  const int64_t q = {q};\n"
    f"  uint64_t w = {original}ULL;\n"
    f"  w <<= {lz};\n"
    "  value128 product = compute_product_approximation<55>(q, w);\n"
)
for side, local in (("old", flag_old), ("new", flag_new)):
    body = prelude
    if side == "new":
        body += "namespace {\n" + div_source + "\n}\n"
    body += common_tail + local + "  return 0;\n}\n} // namespace fast_float\n"
    (here / f"{side}.cpp").write_text(body)

manifest = {
    "commit": commit, "parent": git("rev-parse", commit + "^").decode().strip(),
    "changed_sha256": {"old": hashlib.sha256(old_data).hexdigest(), "new": hashlib.sha256(new_data).hexdigest()},
    "unchanged_table_sha256": hashlib.sha256(table_data).hexdigest(),
    "scope": "exact unchanged product approximation and new divisibility test; source-audited recompute-flag branch with exact 128-bit multiplication model",
}
(here / "source-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Exact-source rare-branch witness:", witness["decimal_input"], "old=slow new=fast")
