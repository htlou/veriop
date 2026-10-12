#!/usr/bin/env python3
"""Check Alive2 support for the exact e6732e9 XXH32 asm-guard change."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

root = Path(__file__).resolve().parents[4]
case = Path(__file__).resolve().parent
store = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "e6732e9b8f06239a54a7b91a4f79c68baa681bc1"
blobs = {
    "old": "73948c4f61dd51f818d0f7823d4c21d437d6022d",
    "new": "f39e0089972fd4b2b5cd2e2e8ccc268540b59540",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
wrapper = ('#define XXH_INLINE_ALL\n#include "xxhash.h"\n'
           'unsigned target32(const unsigned char *p, unsigned seed) '
           '{ return XXH32(p, 16, seed); }\n')
record = {"commit": commit, "source_blobs": blobs,
          "scope": "public XXH32 returned hash, 16-byte input, x86-64-v3 Clang 20 -O2"}

with tempfile.TemporaryDirectory(prefix="xxhash-e6732-") as tmp:
    work = Path(tmp)
    modules = {}
    for side, oid in blobs.items():
        source = subprocess.run(["git", "-C", str(store), "cat-file", "blob", oid],
                                capture_output=True, check=True, env=env).stdout
        actual = hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest()
        assert actual == oid, (side, actual)
        directory = work / side
        directory.mkdir()
        (directory / "xxhash.h").write_bytes(source)
        (directory / "wrapper.c").write_text(wrapper)
        module = work / f"{side}.ll"
        command = [str(clang), "-O2", "-march=x86-64-v3", "-fno-strict-aliasing",
                   "-S", "-emit-llvm", str(directory / "wrapper.c"), "-o", str(module)]
        subprocess.run(command, check=True, capture_output=True, text=True)
        ir = module.read_text()
        assert "define dso_local i32 @target32" in ir
        assert ir.count('asm sideeffect ""') == (4 if side == "old" else 0)
        assert ir.count('asm ""') == (0 if side == "old" else 4)
        modules[side] = module
        record[side + "_normalized_ir_sha256"] = hashlib.sha256(
            ir.replace(str(work), "<WORK>").encode()).hexdigest()
    command = [str(alive), "--func=target32", "--always-verify",
               str(modules["old"]), str(modules["new"])]
    result = subprocess.run(command, capture_output=True, text=True, timeout=30)
    output = result.stdout + result.stderr
    assert result.returncode != 0 and "Unsupported metadata:" in output, output
    assert "0 correct transformations" in output and "0 Alive2 errors" not in output
    record.update({"checker": "Alive2", "checker_result": "UNSUPPORTED",
                   "whole_commit_verdict": "UNKNOWN", "exit_code": result.returncode,
                   "output": output})

(case / "result.json").write_text(json.dumps(record, indent=2) + "\n")
print(output, end="")
