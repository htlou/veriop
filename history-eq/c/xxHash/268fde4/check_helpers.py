#!/usr/bin/env python3
"""Compare both exact historical long-hash helper bodies with Alive2."""

import difflib
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
alive = root / "alive2/build/alive2/alive-tv"
out = here / "helper-check"
out.mkdir(exist_ok=True)
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(
    ["git", "-C", str(repo), "rev-parse", "268fde4"], text=True, env=env
).strip()
assert commit == "268fde417e83d2ad48cae524587c054efebf0eeb"
assert subprocess.check_output(["git", "-C", str(repo), "diff-tree", "--no-commit-id",
                                "--name-only", "-r", commit], env=env).decode().splitlines() == ["xxhash.h"]
for side, rev in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.h", "xxh3.h"):
        source = subprocess.check_output(
            ["git", "-C", str(repo), "show", f"{rev}:{name}"], env=env
        )
        assert (here / side / name).read_bytes() == source, (side, name)
    command = ["clang", "-O1", "-march=x86-64-v3", "-fno-strict-aliasing",
               "-fno-vectorize", "-fno-slp-vectorize", "-w", "-I", str(here / side),
               "-S", "-emit-llvm", str(here / "wrap_helpers.c"), "-o", str(out / f"{side}.ll")]
    subprocess.run(command, check=True)

old_header = (here / "old/xxhash.h").read_text()
new_header = (here / "new/xxhash.h").read_text()
for macro in ("XXH_NO_INLINE", "XXH_FORCE_INLINE"):
    definitions = re.findall(r"^#\s*define\s+" + macro + r"\s+(.+)$", old_header, re.MULTILINE)
    assert len(definitions) == (5 if macro == "XXH_NO_INLINE" else 6)
    assert all(value.startswith("static") for value in definitions)
for bits in (64, 128):
    name = f"XXH3_hashLong_{bits}b_withSecret("
    start_old, start_new = old_header.index(name), new_header.index(name)
    assert old_header[start_old:old_header.index("\n}", start_old) + 2] == \
           new_header[start_new:new_header.index("\n}", start_new) + 2]
assert sum(line.startswith("@@") for line in difflib.unified_diff(
    old_header.splitlines(), new_header.splitlines())) == 2

old_ir = (out / "old.ll").read_text()
new_ir = (out / "new.ll").read_text()
assert old_ir.count("noinline") == 3 and new_ir.count("alwaysinline") == 3

def without_inline_hint(ir):
    return "\n".join(re.sub(" +", " ", re.sub(r"\b(?:noinline|alwaysinline)\b", "", line))
                     if "inline" in line else line for line in ir.splitlines())

assert without_inline_hint(old_ir) == without_inline_hint(new_ir)

def normalize(ir):
    # shortcut: Alive2 rejects Clang alias metadata; remove the same non-executable hints on both sides.
    ir = ir.replace("i8* noalias nocapture noundef readonly", "i8* noundef readonly")
    ir = "".join(line for line in ir.splitlines(True)
                 if "call void @llvm.experimental.noalias.scope.decl(" not in line)
    return re.sub(r", !(?:alias\.scope|noalias) !\d+", "", ir)

for side, ir in (("old", old_ir), ("new", new_ir)):
    (out / f"{side}-normalized.ll").write_text(normalize(ir))

proofs = {}
for bits in (64, 128):
    name = f"XXH3_hashLong_{bits}b_withSecret"
    for direction, source, target in (("forward", "old", "new"),
                                      ("reverse", "new", "old")):
        command = [str(alive), "--smt-to=10000", f"--func={name}",
                   str(out / f"{source}-normalized.ll"),
                   str(out / f"{target}-normalized.ll")]
        run = subprocess.run(command, capture_output=True, text=True)
        log = out / f"{bits}-{direction}.log"
        log.write_text(run.stdout + run.stderr)
        assert run.returncode == 0 and "1 correct transformations" in run.stdout \
            and "0 failed-to-prove transformations" in run.stdout \
            and "0 Alive2 errors" in run.stdout, (name, direction, log)
        proofs[f"{bits}_{direction}"] = "proved"

result = {"commit": commit, "scope": "functional XXH3 long-hash outputs for defined C executions: two unchanged helper bodies with inline-control-only commit; Alive2 checks both helpers on Clang -O1 x86-64-v3",
          "raw_ir_sha256": {side: hashlib.sha256(ir.encode()).hexdigest()
                            for side, ir in (("old", old_ir), ("new", new_ir))},
          "raw_ir_diff": "only noinline versus alwaysinline on the two helpers",
          "alive2": proofs, "commit_verdict": "EQUIV"}
(out / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(proofs))
