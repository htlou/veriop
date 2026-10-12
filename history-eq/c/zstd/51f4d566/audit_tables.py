#!/usr/bin/env python3
"""Compare exact new static tables to the standard FSE DTable recurrence.

This is an independent table-entry audit. It does not use the missing exact
historical FSE_buildDTable source and cannot prove full decompressor behavior.
"""

import json
from pathlib import Path
import re

here = Path(__file__).resolve().parent
norm_source = (here / "old-zstd_internal.h").read_text()
new_norm_source = (here / "new-zstd_internal.h").read_text()
table_source = (here / "new-zstd_decompress.c").read_text()
summary = {"basis": "standard FSE DTable spread/next-state recurrence, independently reconstructed",
           "exact_historical_builder_available": False,
           "tables": {}}


def values(pattern: str, source: str) -> list[int]:
    match = re.search(pattern, source, re.S)
    assert match, pattern
    return [int(x) for x in re.findall(r"-?\d+", match.group(1))]


for prefix, maximum, log in (("LL", 35, 6), ("ML", 52, 6), ("OF", 28, 5)):
    norm = values(rf"static const S16 {prefix}_defaultNorm\[[^\]]+\] = \{{(.*?)\}};", norm_source)
    assert len(norm) == maximum + 1
    table_match = re.search(rf"static const FSE_decode_t4 {prefix}_defaultDTable\[[^\]]+\] = \{{(.*?)\}};",
                            table_source, re.S)
    assert table_match
    assert re.search(rf"#define {prefix}_DEFAULTNORMLOG\s+{log}\b", new_norm_source)
    assert re.search(rf"\{{ \{{\s*{prefix}_DEFAULTNORMLOG,\s*1,\s*1\s*\}} \}}",
                     table_match.group(1))
    triples = [tuple(int(x) for x in re.findall(r"-?\d+", entry))
               for entry in re.findall(r"\{ \{([^{{}}]+)\} \}", table_match.group(1))]
    assert len(triples) == (1 << log) + 1
    header = triples[0]
    assert header == (1, 1)  # The checked macro in the first field is not numeric text.

    size = 1 << log
    mask = size - 1
    step = (size >> 1) + (size >> 3) + 3
    high = size - 1
    symbols = [None] * size
    next_state = [0] * len(norm)
    fast_mode = 1
    for symbol, count in enumerate(norm):
        if count == -1:
            symbols[high] = symbol
            high -= 1
            next_state[symbol] = 1
        else:
            assert count >= 0
            if count >= size // 2:
                fast_mode = 0
            next_state[symbol] = count

    position = 0
    for symbol, count in enumerate(norm):
        for _ in range(max(count, 0)):
            assert symbols[position] is None
            symbols[position] = symbol
            position = (position + step) & mask
            while position > high:
                position = (position + step) & mask
    assert position == 0 and all(symbol is not None for symbol in symbols)

    expected = []
    for symbol in symbols:
        state = next_state[symbol]
        assert state > 0
        next_state[symbol] += 1
        bits = log - (state.bit_length() - 1)
        expected.append(((state << bits) - size, symbol, bits))
    mismatches = [{"index": i, "expected": want, "static": got}
                  for i, (want, got) in enumerate(zip(expected, triples[1:])) if want != got]
    assert not mismatches, (prefix, mismatches[:5])
    assert fast_mode == 1
    summary["tables"][prefix] = {"normalized_symbol_count": len(norm),
                                  "decode_cells": size,
                                  "fast_mode": fast_mode,
                                  "matching_cells": size,
                                  "reference_cells": expected,
                                  "mismatches": mismatches}

(here / "table-audit.json").write_text(json.dumps(summary, indent=2) + "\n")
print(json.dumps({name: item["matching_cells"] for name, item in summary["tables"].items()}))
