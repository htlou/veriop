#!/usr/bin/env python3
"""Drop only LLVM's nocapture hint, unsupported by this Alive2 build."""

from pathlib import Path

here = Path(__file__).resolve().parent
for side in ("old", "new"):
    source = (here / f"{side}.ll").read_text()
    assert source.count(" nocapture ") == 1
    (here / f"{side}-alive.ll").write_text(source.replace(" nocapture ", " "))
