#!/usr/bin/env python3
"""Remove only the nocapture hint unsupported by this Alive2 build."""

from pathlib import Path

here = Path(__file__).resolve().parent
for variant, expected in (("o3", 4), ("aligned", 3)):
    for side in ("old", "new"):
        source = (here / f"{side}-{variant}.ll").read_text()
        assert source.count(" nocapture") == expected
        (here / f"{side}-{variant}-alive.ll").write_text(source.replace(" nocapture", ""))
