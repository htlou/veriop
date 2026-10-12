#!/usr/bin/env python3
"""Stage exact historical target inputs with the available newer HOL support tree."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
hol = root / "benchmarks/tools/hol-light"
zarith = root / "aeneas/env/opam/5.3.0/lib/zarith"
revs = {"old": "9ff304609baa9948d25b40cce3f50342f6fadd75",
        "new": "0a681ce66047083a0c1a7de2d3747ca2dedcebb0"}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
audit = json.loads((here / "source-audit.json").read_text())
staged = {}

for side, rev in revs.items():
    dst = Path(f"/tmp/veriop-s2n-sqr-0a-{side}")
    if dst.exists():
        shutil.rmtree(dst)
    dst.mkdir()
    shutil.copytree(repo / "common", dst / "common")
    shutil.copytree(repo / "arm/proofs", dst / "arm/proofs")
    (dst / "arm/curve25519").mkdir(parents=True)
    label = "parent" if side == "old" else "child"
    for rel in ("common/interval.ml", "arm/proofs/bignum_sqr_p25519.ml"):
        body = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{rel}"], env=env)
        assert hashlib.sha256(body).hexdigest() == audit["sides"][label]["blobs"][rel]["sha256"]
        (dst / rel).write_bytes(body)
    obj = here / f"{label}.o"
    assert hashlib.sha256(obj.read_bytes()).hexdigest() == audit["sides"][label]["object_sha256"]
    shutil.copy2(obj, dst / "arm/curve25519/bignum_sqr_p25519.o")
    (dst / "replay.ml").write_text(
        f'#use "{here / "hol-init.ml"}";;\n'
        f'Sys.chdir "{dst}";;\n'
        'needs "arm/proofs/base.ml";;\n'
        'needs "arm/proofs/bignum_sqr_p25519.ml";;\n'
    )
    staged[side] = str(dst)

(here / "hol-init.ml").write_text(
    '#directory "+compiler-libs";;\n#load "ocamlcommon.cma";;\n'
    f'#directory "{zarith}";;\n#load "zarith.cma";;\n'
    f'#directory "{hol}";;\n#load "bignum.cmo";;\n'
    f'#use "{hol / "hol.ml"}";;\n'
    'let _ = Bytes.length (Bytes.create 1);;\nlet bprintf = Printf.bprintf;;\n'
)
(here / "replay-staging.json").write_text(json.dumps({
    "target_revisions": revs,
    "newer_support_revision": subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", "HEAD"], text=True).strip(),
    "staged": staged,
}, indent=2) + "\n")
print(staged)
