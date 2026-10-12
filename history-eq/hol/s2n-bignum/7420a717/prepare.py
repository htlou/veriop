#!/usr/bin/env python3
"""Stage exact historical x86 multiplication or squaring pairs for HOL Light replay."""

import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
support = root / "history-eq/wt/s2n-mul8-old"
child = "7420a71733626356672b42a3939eb6882d579da0"
assert len(sys.argv) <= 2
target = sys.argv[1] if len(sys.argv) == 2 else "bignum_mul_4_8"
stems = {"bignum_mul_4_8": "", "bignum_mul_6_12": "-mul6",
         "bignum_mul_8_16": "-mul8", "bignum_sqr_4_8": "-sqr4",
         "bignum_sqr_6_12": "-sqr6", "bignum_sqr_8_16": "-sqr8",
         "bignum_ksqr_16_32": "-ksqr16",
         "bignum_ksqr_32_64": "-ksqr32",
         "bignum_emontredc_8n": "-emontredc"}
assert target in stems
paths = (f"x86/fastmul/{target}.S", f"x86/proofs/{target}.ml")
stem = stems[target]
port_files = ("common/words2.ml", "common/components.ml", "common/elf.ml",
              "x86/proofs/decode.ml")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert support.is_dir()
parent = git("rev-parse", child + "^").decode().strip()
diff = git("diff", parent, child)
assert diff == (here.parent / "source-screening/7420a717.source.diff").read_bytes()
hol = root / "benchmarks/tools/hol-light"
zarith = root / "aeneas/env/opam/5.3.0/lib/zarith"
(here / "hol-init.ml").write_text(
    '#directory "+compiler-libs";;\n#load "ocamlcommon.cma";;\n'
    f'#directory "{zarith}";;\n#load "zarith.cma";;\n'
    f'#directory "{hol}";;\n#load "bignum.cmo";;\n'
    f'#use "{hol / "hol.ml"}";;\n'
    'let _ = Bytes.length (Bytes.create 1);;\nlet bprintf = Printf.bprintf;;\n'
)
report = {"parent": parent, "child": child,
          "full_diff_sha256": hashlib.sha256(diff).hexdigest(),
          "support_revision": subprocess.check_output(
              ["git", "-C", str(support), "rev-parse", "HEAD"],
              env=env, text=True).strip(), "sides": {}}
for side, rev in (("old", parent), ("new", child)):
    stage = Path(f"/tmp/veriop-s2n-7420{stem}-{side}")
    shutil.copytree(support, stage, dirs_exist_ok=True)
    ported = {}
    for path in port_files:
        staged_file = stage / path
        patched, count = re.subn(r"\bInt\b", "Num.num_of_int", staged_file.read_text())
        staged_file.write_text(patched)
        ported[path] = count
    assert sum(ported.values()) == 32, ported
    blobs = {}
    for path in paths:
        data = git("show", f"{rev}:{path}")
        (stage / path).write_bytes(data)
        oid = git("rev-parse", f"{rev}:{path}").decode().strip()
        blobs[path] = {"git_oid": oid, "sha256": hashlib.sha256(data).hexdigest()}
    obj = stage / f"x86/fastmul/{target}.o"
    obj.unlink(missing_ok=True)
    (stage / f"x86/fastmul/{target}.correct").unlink(missing_ok=True)
    built = subprocess.run(["make", "-C", str(stage / "x86"), f"fastmul/{target}.o"],
                           env=env, capture_output=True, text=True)
    assert built.returncode == 0, built.stdout + built.stderr
    replay = (
        f'#use "{here / "hol-init.ml"}";;\n'
        f'Sys.chdir "{stage}";;\n'
        'needs "x86/proofs/base.ml";;\n'
        f'needs "x86/proofs/{target}.ml";;\n'
    )
    if target != "bignum_ksqr_32_64":
        replay += f'{target.upper()}_CORRECT;;\n'
    replay += f'{target.upper()}_SUBROUTINE_CORRECT;;\n'
    (stage / "replay.ml").write_text(replay)
    report["sides"][side] = {"blobs": blobs, "ported_support": ported,
                              "object_sha256": hashlib.sha256(obj.read_bytes()).hexdigest()}
(here / f"source-audit{stem}.json").write_text(json.dumps(report, indent=2) + "\n")
print(f"exact parent/child {target} assembly and proof scripts staged; both objects assembled")
