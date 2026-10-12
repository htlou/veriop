#!/usr/bin/env python3
"""Generate one fixed-index Alive2 lookup for each default DTable cell."""

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
    static = re.search(rf"static const FSE_decode_t4 {prefix}_defaultDTable\[[^\]]+\] = \{{.*?\}};",
                       source, re.S)
    assert static
    new.append(static.group(0))
    for index, (state, symbol, bits) in enumerate(audit["tables"][prefix]["reference_cells"]):
        packed = state | (symbol << 16) | (bits << 24)
        name = f"cell_{prefix}_{index}"
        old.append(f"U32 {name}(void) {{ return 0x{packed:08x}U; }}")
        new.append(f"""U32 {name}(void) {{
    FSE_decode_t cell = {prefix}_defaultDTable[{index + 1}].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}}""")
(here / "old-cells.c").write_text("\n".join(old) + "\n")
(here / "new-cells.c").write_text("\n".join(new) + "\n")
