#!/usr/bin/env python3
"""Recheck the historical radix-sort rewrite and run both public methods."""

import json
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
jar = root / "benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
witness = here.parent / "c9dc48eb/Witness.java"

subprocess.run(["python3", str(here / "check_source.py")], check=True)
old = (here / "Util.old.txt").read_text()
new = (here / "Util.new.txt").read_text()
assert old.count("(primary[i] & mask) >>> shift") == 2
assert new.count("(primary[i] >>> shift) & 0xFF") == 2
assert all("final int radix = 8;" in source and "while (shift < 32)" in source
           for source in (old, new))
assert "int shift = 16;" in old and "int mask = 0xFF0000;" in old
assert "shift += radix;" in old and "mask <<= radix;" in old
assert "int shift = 16;" in new and "shift += radix;" in new
query = subprocess.check_output([str(z3), str(here / "radix-digit.smt2")], text=True).strip()
assert query == "unsat", query

hashes = {}
with tempfile.TemporaryDirectory(prefix="veriop-radix-digit-") as temp:
    for side in ("old", "new"):
        classes = Path(temp) / side
        classes.mkdir()
        source = classes / "Util.java"
        source.write_bytes((here / f"Util.{side}.txt").read_bytes())
        build = subprocess.run(
            [str(java / "javac"), "-cp", str(jar), "-d", str(classes), str(source), str(witness)],
            capture_output=True, text=True,
        )
        assert build.returncode == 0, build.stderr
        hashes[side] = subprocess.check_output(
            [str(java / "java"), "-cp", f"{classes}:{jar}", "Witness"], text=True,
        ).strip()
assert hashes["old"] == hashes["new"], hashes

result = {"universal_digit_formula_counterexample": query,
          "native_method_test": {"array_count": 65 * 128, "sha256": hashes}}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result))
