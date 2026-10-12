#!/usr/bin/env python3
"""Stage historical generic multiply and new 2048-bit square for HOL replay."""

import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
support = root / "history-eq/wt/s2n-mul8-old"
child = "19eac44af36f1043eef87db37892ad34d259d61a"
targets = {
    "old": ("x86/generic/bignum_mul.S", "x86/proofs/bignum_mul.ml",
            "generic/bignum_mul.o", "BIGNUM_MUL_SUBROUTINE_CORRECT"),
    "new": ("x86/fastmul/bignum_ksqr_32_64.S", "x86/proofs/bignum_ksqr_32_64.ml",
            "fastmul/bignum_ksqr_32_64.o", "BIGNUM_KSQR_32_64_SUBROUTINE_CORRECT"),
}
port_files = ("common/words2.ml", "common/components.ml", "common/elf.ml",
              "x86/proofs/decode.ml")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
archived_paths = (here.parent / "source-screening/19eac44a.paths.txt").read_text().splitlines()
assert set(archived_paths) == {
    "arm/fastmul/bignum_ksqr_32_64.S", "arm/proofs/bignum_ksqr_32_64.ml",
    "x86/fastmul/bignum_ksqr_32_64.S", "x86/proofs/bignum_ksqr_32_64.ml",
}
diff = git("diff", parent, child, "--", *archived_paths)
assert diff == (here.parent / "source-screening/19eac44a.source.diff").read_bytes()
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
          "archived_source_diff_sha256": hashlib.sha256(diff).hexdigest(),
          "support_revision": subprocess.check_output(
              ["git", "-C", str(support), "rev-parse", "HEAD"],
              env=env, text=True).strip(), "sides": {}}
for side, rev in (("old", parent), ("new", child)):
    assembly, proof, object_rel, theorem = targets[side]
    stage = Path(f"/tmp/veriop-s2n-19e-{side}")
    shutil.copytree(support, stage, dirs_exist_ok=True)
    ported = {}
    for path in port_files:
        target = stage / path
        patched, count = re.subn(r"\bInt\b", "Num.num_of_int", target.read_text())
        target.write_text(patched)
        ported[path] = count
    assert sum(ported.values()) == 32, ported
    blobs = {}
    for path in (assembly, proof):
        data = git("show", f"{rev}:{path}")
        (stage / path).write_bytes(data)
        blobs[path] = {"git_oid": git("rev-parse", f"{rev}:{path}").decode().strip(),
                       "sha256": hashlib.sha256(data).hexdigest()}
    obj = stage / "x86" / object_rel
    obj.unlink(missing_ok=True)
    built = subprocess.run(["make", "-C", str(stage / "x86"), object_rel],
                           env=env, capture_output=True, text=True)
    assert built.returncode == 0, built.stdout + built.stderr
    (stage / "replay.ml").write_text(
        f'#use "{here / "hol-init.ml"}";;\n'
        f'Sys.chdir "{stage}";;\n'
        'needs "x86/proofs/base.ml";;\n'
        f'needs "{proof}";;\n{theorem};;\n'
    )
    report["sides"][side] = {"blobs": blobs, "ported_support": ported,
                              "object_sha256": hashlib.sha256(obj.read_bytes()).hexdigest(),
                              "theorem": theorem}
(here / "bridge.ml").write_text(
    f'#use "{here / "hol-init.ml"}";;\n'
    'Sys.chdir "/tmp/veriop-s2n-19e-old";;\n'
    'needs "x86/proofs/base.ml";;\n'
    'let SQUARE_32_LOWDIGITS = prove\n'
    ' (`!a. a < 2 EXP (64 * 32) ==> lowdigits (a * a) 64 = a EXP 2`,\n'
    '  REWRITE_TAC[EXP_2] THEN REPEAT STRIP_TAC THEN\n'
    '  MATCH_MP_TAC LOWDIGITS_SELF THEN\n'
    '  REWRITE_TAC[ARITH_RULE `64 * 64 = 64 * 32 + 64 * 32`; EXP_ADD] THEN\n'
    '  ASM_SIMP_TAC[LT_MULT2]);;\n'
    'SQUARE_32_LOWDIGITS;;\n'
)
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("exact old generic multiply and new 2048-bit square staged and assembled")
