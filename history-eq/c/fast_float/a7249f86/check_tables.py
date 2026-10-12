import re
import sys
from pathlib import Path


def numbers(source, name):
    body = re.search(rf"static constexpr (?:size_t|uint64_t) {name}\[\] = \{{([^}}]*)\}}", source, re.S)
    assert body, name
    return [int(n) for n in re.findall(r"\d+", body.group(1))]


for filename in sys.argv[1:]:
    source = Path(filename).read_text()
    lengths = numbers(source, "maxdigits_u64")
    minimums = numbers(source, "min_safe_u64")
    assert len(lengths) == len(minimums) == 35
    assert all(base ** (lengths[base - 2] - 1) == minimums[base - 2]
               for base in range(2, 37))
    print(f"{filename}: 35/35 table power relations verified")
