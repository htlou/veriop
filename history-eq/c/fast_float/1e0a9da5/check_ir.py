#!/usr/bin/env python3
"""Strip only nonsemantic LLVM annotations rejected by this Alive2 front end."""

from pathlib import Path
import re

here = Path(__file__).resolve().parent
raw = (here / "neon_read8.ll").read_text()
assert " nocapture" in raw and "!llvm.module.flags" in raw
checked = raw.replace(" nocapture", "")
checked = checked.split("!llvm.module.flags =")[0]
checked = re.sub(r", !(?:tbaa|llvm\.loop) !\d+", "", checked)
assert "!tbaa" not in checked and "!llvm.loop" not in checked
(here / "neon_read8.checked.ll").write_text(checked)
print("Removed nocapture and nonsemantic TBAA, loop, and module metadata only")
