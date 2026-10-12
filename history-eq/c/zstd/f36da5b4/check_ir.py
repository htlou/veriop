#!/usr/bin/env python3
"""Remove only LLVM annotations unsupported by this Alive2 front end."""

from pathlib import Path
import re

here = Path(__file__).resolve().parent
raw = (here / "reduce_model.ll").read_text()
assert " nocapture" in raw
assert "!llvm.module.flags" in raw
checked = raw.replace(" nocapture", "")
checked = checked.split("!llvm.module.flags =")[0]
checked = re.sub(r", !(?:tbaa|llvm\.loop) !\d+", "", checked)
assert "!tbaa" not in checked and "!llvm.loop" not in checked
(here / "reduce_model.checked.ll").write_text(checked)
print("Removed only nocapture and nonsemantic TBAA, loop, and module metadata")
