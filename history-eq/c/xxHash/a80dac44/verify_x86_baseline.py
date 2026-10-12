#!/usr/bin/env python3
"""Compare the exact historical dispatcher pair on baseline x86-64 with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
commit = "a80dac442642d305f283a8626b0ea6bc55650daf"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def normalize(ir):
    # Dropping shared alias assumptions/hints weakens both IRs; values and memory operations stay intact.
    ir = ir.replace("ptr noalias nocapture noundef readonly", "ptr noundef")
    ir = re.sub(r", !(?:noalias|alias\.scope|tbaa|srcloc|nontemporal) !\d+", "", ir)
    ir = "\n".join(line for line in ir.split("\n")
                   if "@llvm.experimental.noalias.scope.decl(" not in line
                   or line.startswith("declare "))
    assert "tail call void @llvm.experimental.noalias.scope.decl(" not in ir
    return ir


source_blobs = {}
with TemporaryDirectory(prefix="xxh-a80-baseline-") as directory:
    temp = Path(directory)
    for side, revision in (("old", commit + "^"), ("new", commit)):
        source = temp / side
        source.mkdir()
        for name in ("xxhash.h", "xxh3.h", "xxh_x86dispatch.c"):
            data = git("show", revision + ":" + name)
            (source / name).write_bytes(data)
            digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert digest == git("rev-parse", revision + ":" + name).decode().strip()
            source_blobs[side + "/" + name] = digest
        raw = here / (side + "-x86-64.ll")
        subprocess.run([str(clang), "-std=c99", "-O2", "-march=x86-64", "-S", "-emit-llvm",
                        "-I", str(source), str(source / "xxh_x86dispatch.c"), "-o", str(raw)],
                       check=True, env=env)
        (here / (side + "-normalized.ll")).write_text(normalize(raw.read_text()))

old = here / "old-normalized.ll"
new = here / "new-normalized.ll"
functions = lambda path: set(re.findall(r"^define .*?@([^ (]+)\(", path.read_text(), re.M))
shared = functions(old) & functions(new)
assert len(shared) == 15, shared
proof = subprocess.run([str(alive), "--quiet", "--bidirectional", str(old), str(new)],
                       capture_output=True, text=True, timeout=120, env=env)
(here / "alive2-x86-baseline.log").write_text(proof.stdout + proof.stderr)
assert proof.returncode == 0 and "15 correct transformations" in proof.stdout
assert "0 incorrect transformations" in proof.stdout
assert "0 failed-to-prove transformations" in proof.stdout
assert "0 Alive2 errors" in proof.stdout
result = {
    "commit": commit, "verdict": "EQUIV_PARTIAL", "checker": "Alive2 --bidirectional",
    "configuration": "Clang 20 -O2 -march=x86-64, xxh_x86dispatch.c",
    "shared_functions": len(shared), "source_blobs": source_blobs,
    "normalization": "drop noalias/nocapture/readonly pointer attributes; tbaa, alias.scope, noalias, srcloc, nontemporal metadata; and noalias.scope.decl calls on both sides",
    "scope": "all 15 matched functions in this translation unit at baseline x86-64; not x86-64-v3 or other compiler configurations",
    "log": "history-eq/c/xxHash/a80dac44/alive2-x86-baseline.log",
}
(here / "x86-baseline-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "matched_functions": len(shared)}))
