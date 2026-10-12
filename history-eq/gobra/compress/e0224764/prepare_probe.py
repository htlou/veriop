#!/usr/bin/env python3
"""Compile the exact historical helper bodies side by side in Go."""

from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
subprocess.run(["python3", str(here / "recover.py")], check=True)
probe = here / "probe"
probe.mkdir(exist_ok=True)
for side in ("old", "new"):
    source = (here / f"matchlen.{side}.go").read_text()
    assert source.count("package flate") == 1
    assert source.count("func matchLen(") == 1
    source = source.replace("package flate", "package probe", 1)
    source = source.replace("func matchLen(", f"func matchLen{side.title()}(", 1)
    (probe / f"matchlen_{side}.go").write_text(source)
