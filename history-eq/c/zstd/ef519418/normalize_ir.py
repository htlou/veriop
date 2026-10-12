#!/usr/bin/env python3
"""Drop a symmetric unsupported Alive2 hint and normalize source filenames."""

from pathlib import Path

here = Path(__file__).resolve().parent
normalized = {}
for side in ("old", "new"):
    source = (here / f"{side}.ll").read_text()
    assert source.count(" nocapture ") == 1
    source = source.replace(" nocapture ", " ")
    source = source.replace(f"{side}.c", "model.c")
    normalized[side] = source
    (here / f"{side}-alive.ll").write_text(source)
assert normalized["old"] == normalized["new"], "compiled helper bodies differ"
print("normalized old/new LLVM modules are byte-identical")
