#!/usr/bin/env python3
"""Build table-cell lookup modules for an Alive2 cross-check of the audit."""

import json
from pathlib import Path
import re

here = Path(__file__).resolve().parent
audit = json.loads((here / "table-audit.json").read_text())
source = (here / "new-zstd_decompress.c").read_text()

old = ["#include <stdint.h>", "typedef uint32_t U32;"]
new = ["""#include <stdint.h>
typedef uint32_t U32;
typedef uint16_t U16;
typedef uint8_t BYTE;
typedef struct { U16 newState; BYTE symbol; BYTE nbBits; } FSE_decode_t;
typedef union { FSE_decode_t realData; U32 alignedBy4; } FSE_decode_t4;
#define LL_DEFAULTNORMLOG 6
#define ML_DEFAULTNORMLOG 6
#define OF_DEFAULTNORMLOG 5
"""]
for prefix in ("LL", "ML", "OF"):
    cells = audit["tables"][prefix]["reference_cells"]
    packed = [state | (symbol << 16) | (bits << 24) for state, symbol, bits in cells]
    old.append(f"static const U32 {prefix}_reference[] = {{")
    old.append("    " + ", ".join(f"0x{x:08x}U" for x in packed) + "\n};")
    static = re.search(rf"static const FSE_decode_t4 {prefix}_defaultDTable\[[^\]]+\] = \{{.*?\}};",
                       source, re.S)
    assert static
    new.append(static.group(0))
    size = len(cells)
    old.append(f"U32 lookup_{prefix}(U32 i) {{ return i < {size} ? {prefix}_reference[i] : 0xffffffffU; }}")
    new.append(f"""U32 lookup_{prefix}(U32 i) {{
    if (i >= {size}) return 0xffffffffU;
    FSE_decode_t cell = {prefix}_defaultDTable[i + 1].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}}""")
(here / "old-table.c").write_text("\n".join(old) + "\n")
(here / "new-table.c").write_text("\n".join(new) + "\n")
