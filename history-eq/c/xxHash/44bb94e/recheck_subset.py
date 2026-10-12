#!/usr/bin/env python3
"""Source-lock and rerun three completed XXH3 streaming equivalence checks."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(
    ["git", "-C", str(repo), "rev-parse", "44bb94e"], text=True, env=env
).strip()
for side, rev in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.h", "xxh3.h"):
        exact = subprocess.check_output(
            ["git", "-C", str(repo), "show", f"{rev}:{name}"], env=env
        )
        assert (here / side / name).read_bytes() == exact, (side, name)

def normalize(ir):
    # shortcut: Alive2 rejects alias metadata; drop identical hints until it supports them.
    ir = "".join(line for line in ir.splitlines(True)
                 if "call void @llvm.experimental.noalias.scope.decl(" not in line)
    ir = re.sub(r", !(?:alias\.scope|noalias) !\d+", "", ir)
    return re.sub(r"\bnocapture\b *", "", ir).replace("ptr )", "ptr)")

targets = {2: "target_sec136_700", 5: "target_sec136_300_400",
           7: "target_sec136_1100"}
out = here / "subset-recheck"
out.mkdir(exist_ok=True)
proofs = {}
with tempfile.TemporaryDirectory(prefix="veriop-xxh3-stream-") as temp:
    for number, target in targets.items():
        case = here / f"r_api_pin_t{number}"
        record = json.loads((case / "result.json").read_text())
        for side in ("old", "new"):
            command = record[f"{side}_compile"].copy()
            command[0] = str(clang)
            command[-1] = str(Path(temp) / f"t{number}-{side}.ll")
            subprocess.run(command, cwd=root / "history-eq", check=True,
                           capture_output=True, text=True)
            generated = normalize(Path(command[-1]).read_text())
            archived = (case / f"{side}.ll").read_text()
            assert generated == archived, (number, side)
            assert hashlib.sha256(archived.encode()).hexdigest() == record[f"{side}_ll_sha256"]
        for direction, source, target_side in (("forward", "old", "new"),
                                                ("reverse", "new", "old")):
            run = subprocess.run(
                [str(alive), "--smt-to=60000", "--always-verify", f"--func={target}",
                 str(case / f"{source}.ll"), str(case / f"{target_side}.ll")],
                capture_output=True, text=True, timeout=75,
            )
            log = out / f"t{number}-{direction}.log"
            log.write_text(run.stdout + run.stderr)
            assert run.returncode == 0 and "1 correct transformations" in run.stdout \
                and "0 incorrect transformations" in run.stdout \
                and "0 failed-to-prove transformations" in run.stdout \
                and "0 Alive2 errors" in run.stdout, (number, direction, log)
            proofs[f"t{number}_{direction}"] = "proved"
            print(f"t{number} {direction}: proved", flush=True)

result = {"commit": commit, "scope": "three fixed-length 64-bit streaming calls with a 136-byte secret",
          "targets": targets, "alive2": proofs,
          "source_ir": "Clang 20 output matches archived IR after identical alias-annotation removal"}
(out / "result.json").write_text(json.dumps(result, indent=2) + "\n")
