#!/usr/bin/env python3
"""Recheck fixed-length public XXH3 targets in four x86 vector modes."""

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
    ["git", "-C", str(repo), "rev-parse", "91788f1"], text=True, env=env
).strip()
assert commit == "91788f1677f5a8449ae57b825009781f4d9eec73"
for side, rev in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.h", "xxh3.h", "xxh_x86dispatch.c", "xxh_x86dispatch.h"):
        exact = subprocess.check_output(
            ["git", "-C", str(repo), "show", f"{rev}:{name}"], env=env
        )
        assert (here / side / name).read_bytes() == exact, (side, name)

def normalize(ir):
    # shortcut: Alive2 rejects empty asm guards and alias metadata; model the guards as identity until it supports them.
    ir = re.sub(r" nocapture\b", "", ir)
    ir = re.sub(r", !(?:llvm\.loop|srcloc) !\d+", "", ir)
    asm = re.compile(r'(%[\w.]+) = (?:tail |notail |musttail )?call ([^@]*?) asm '
                     r'(?:sideeffect )?(?:alignstack )?(?:inteldialect )?"", '
                     r'"=[^,"]+,0[^"]*"\(([^()]*?) (%[\w.]+)\)(?: #\d+)?')
    ir, count = asm.subn(lambda m: f"{m.group(1)} = freeze {m.group(2).strip()} {m.group(4)}", ir)
    ir = "".join(line for line in ir.splitlines(True)
                 if "call void @llvm.experimental.noalias.scope.decl(" not in line)
    ir = re.sub(r", !(?:alias\.scope|noalias) !\d+", "", ir)
    return ir, count

modes = ("scalar", "sse2", "avx2", "avx512")
out = here / "api-recheck"
out.mkdir(exist_ok=True)
checks = {}
with tempfile.TemporaryDirectory(prefix="veriop-xxh3-api-") as temp:
    for mode in modes:
        case = here / f"r_api_{mode}"
        record = json.loads((case / "result.json").read_text())
        expected_asm = json.loads((case / "xx_notes.json").read_text())["asm_guard_rewrites(old,new)"]
        for index, side in enumerate(("old", "new")):
            command = record[f"{side}_compile"].copy()
            command[0] = str(clang)
            command[-1] = str(Path(temp) / f"{mode}-{side}.ll")
            subprocess.run(command, cwd=root / "history-eq", check=True,
                           capture_output=True, text=True)
            archived = (case / f"{side}.ll").read_text()
            generated, asm_count = normalize(Path(command[-1]).read_text())
            assert asm_count == expected_asm[index], (mode, side, asm_count)
            assert generated == archived, (mode, side)
            assert hashlib.sha256(archived.encode()).hexdigest() == record[f"{side}_ll_sha256"]
        for direction, source, target in (("forward", "old", "new"),
                                           ("reverse", "new", "old")):
            run = subprocess.run(
                [str(alive), "--smt-to=60000", "--always-verify",
                 str(case / f"{source}.ll"), str(case / f"{target}.ll")],
                capture_output=True, text=True, timeout=75,
            )
            log = out / f"{mode}-{direction}.log"
            log.write_text(run.stdout + run.stderr)
            assert run.returncode == 0 and "5 correct transformations" in run.stdout \
                and "0 incorrect transformations" in run.stdout \
                and "0 failed-to-prove transformations" in run.stdout \
                and "0 Alive2 errors" in run.stdout, (mode, direction, log)
            checks[f"{mode}_{direction}"] = 5
            print(f"{mode} {direction}: 5 proved", flush=True)

result = {"commit": commit, "scope": "five fixed-length public XXH3 targets in four x86 vector modes",
          "source_ir": "Clang 20 output matches archived IR after identical alias-annotation removal",
          "proved_function_pairs": sum(checks.values()), "checks": checks}
(out / "result.json").write_text(json.dumps(result, indent=2) + "\n")
