#!/usr/bin/env python3
"""Check both HOL Light replay logs against their common arithmetic spec."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
assert len(sys.argv) <= 2
target = sys.argv[1] if len(sys.argv) == 2 else "bignum_mul_4_8"
stems = {"bignum_mul_4_8": "", "bignum_mul_6_12": "-mul6",
         "bignum_mul_8_16": "-mul8", "bignum_sqr_4_8": "-sqr4",
         "bignum_sqr_6_12": "-sqr6", "bignum_sqr_8_16": "-sqr8",
         "bignum_ksqr_16_32": "-ksqr16",
         "bignum_ksqr_32_64": "-ksqr32",
         "bignum_emontredc_8n": "-emontredc"}
assert target in stems
stem = stems[target]
audit = json.loads((here / f"source-audit{stem}.json").read_text())
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
names = ((f"{target.upper()}_SUBROUTINE_CORRECT",) if target == "bignum_ksqr_32_64"
         else (f"{target.upper()}_CORRECT", f"{target.upper()}_SUBROUTINE_CORRECT"))
sizes = {"bignum_mul_4_8": (("old", "344", "341"), ("new", "340", "337")),
         "bignum_mul_6_12": (("old", "740", "733"), ("new", "734", "727")),
         "bignum_mul_8_16": (("old", "1280", "1269"), ("new", "1272", "1261")),
         "bignum_sqr_4_8": (("old", "267", "261"), ("new", "265", "259")),
         "bignum_sqr_6_12": (("old", "547", "536"), ("new", "544", "533")),
         "bignum_sqr_8_16": (("old", "945", "934"), ("new", "916", "905")),
         "bignum_ksqr_16_32": (("old", "3560", "3549"), ("new", "3460", "3449")),
         "bignum_ksqr_32_64": (("old", "5804", None), ("new", "5702", None)),
         "bignum_emontredc_8n": (("old", "2883", "2872"), ("new", "2866", "2855"))}
theorems = {}
report = {"sides": {}, "common_result": None}

for side, code_size, exit_offset in sizes[target]:
    rev = audit["parent" if side == "old" else "child"]
    stage = Path(f"/tmp/veriop-s2n-7420{stem}-{side}")
    for path, source in audit["sides"][side]["blobs"].items():
        exact = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env)
        assert hashlib.sha256(exact).hexdigest() == source["sha256"]
        assert (stage / path).read_bytes() == exact
    obj = stage / f"x86/fastmul/{target}.o"
    assert hashlib.sha256(obj.read_bytes()).hexdigest() == audit["sides"][side]["object_sha256"]
    raw_bytes = (here / f"{side}{stem}-proof.log").read_bytes()
    raw = raw_bytes.decode(errors="replace")
    log = re.sub(r"\x1b\[[0-9;]*[mK]", "", raw)
    assert "Error in included file" not in log
    assert not re.search(r"(?m)^(?:Error:|Exception:)", log)
    extracted = {}
    for name in names:
        marker = f"val {name} : thm =\n"
        assert log.count(marker) == 1, (side, name)
        body = log.split(marker, 1)[1]
        stop = min(pos for token in ("\nStepping", "\nCPU time", "\nval it")
                   if (pos := body.find(token)) >= 0)
        theorem = body[:stop].rstrip() + "\n"
        if target == "bignum_emontredc_8n":
            assert "n * bignum_from_memory (z,val k) s + a =" in theorem
            assert "(n * val w + 1 == 0) (mod (2 EXP 64))" in theorem
        else:
            result = "a * b" if "_mul_" in target else "a EXP 2"
            assert f"bignum_from_memory (z,{int(target.rsplit('_', 1)[1])}) s = {result}" in theorem
        extracted[name] = theorem
    if len(names) == 2:
        assert extracted[names[0]].count(code_size) == 1
        assert extracted[names[0]].count(exit_offset) == 1
    assert extracted[names[-1]].count(code_size) == (1 if target == "bignum_emontredc_8n" else 2)
    theorems[side] = extracted
    (here / f"{side}{stem}-theorems.txt").write_text("\n".join(extracted.values()))
    report["sides"][side] = {"revision": rev,
                              "object_sha256": audit["sides"][side]["object_sha256"],
                              "log_sha256": hashlib.sha256(raw_bytes).hexdigest(),
                              "theorems": list(extracted)}

for name in names:
    old = theorems["old"][name].replace(sizes[target][0][1], "<code-size>")
    new = theorems["new"][name].replace(sizes[target][1][1], "<code-size>")
    if sizes[target][0][2] is not None:
        old = old.replace(sizes[target][0][2], "<exit-offset>")
        new = new.replace(sizes[target][1][2], "<exit-offset>")
    assert old == new, name
report["common_result"] = (f"both historical {target} subroutines satisfy the same conditional Montgomery arithmetic relation under shared preconditions"
                           if target == "bignum_emontredc_8n" else
                           f"both historical {target} subroutines produce the same arithmetic result under shared preconditions")
(here / f"proof-result{stem}.json").write_text(json.dumps(report, indent=2) + "\n")
print(report["common_result"])
