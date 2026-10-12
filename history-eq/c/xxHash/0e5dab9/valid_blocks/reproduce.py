#!/usr/bin/env python3
"""Check historical XXH64 on valid by-value inputs of lengths 32..255."""

import hashlib
import json
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


case = Path(__file__).resolve().parent
historical = case.parent
root = historical.parents[3]
store = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
commit = "0e5dab97db33b84dc21bbede3b31fa3ad5954ad8"


def run(command):
    return subprocess.run(command, check=True, capture_output=True, text=True, timeout=35)


blobs = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.c", "xxhash.h"):
        data = (historical / side / name).read_bytes()
        actual = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        expected = run(["git", "-C", str(store), "rev-parse", revision + ":" + name]).stdout.strip()
        assert actual == expected, (side, name)
        blobs[f"{side}/{name}"] = actual

checks = []
different_targets = 0
with TemporaryDirectory(prefix="xxh64-valid-blocks-") as directory:
    temporary = Path(directory)
    for length in range(32, 256):
        wrapper = temporary / f"block{length}.c"
        wrapper.write_text(f'''#include "xxhash.c"\n
struct Block {{ unsigned char bytes[{length}]; }};
unsigned long long target(struct Block block, unsigned long long seed) {{
    return XXH64(block.bytes, {length}, seed);
}}
''')
        modules, bodies = {}, {}
        for side in ("old", "new"):
            module = temporary / f"{side}-{length}.ll"
            command = [str(clang), "-O3", "-march=x86-64-v3", "-fno-strict-aliasing",
                       "-fno-vectorize", "-fno-slp-vectorize", "-mllvm",
                       "-inline-threshold=100000", "-I", str(historical / side),
                       "-S", "-emit-llvm", str(wrapper), "-o", str(module)]
            run(command)
            normalized = re.sub(r" nocapture\b", "", module.read_text())
            normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
            module.write_text(normalized)
            body = re.search(r"^define [^\n]*@target\([^\n]*\)\s*[^\n]*\{.*?^\}",
                             normalized, re.M | re.S)
            assert body and not re.search(r"\bcall [^@]*@(?!llvm\.)", body.group()), (side, length)
            modules[side] = module
            bodies[side] = body.group()
        differs = bodies["old"] != bodies["new"]
        different_targets += differs
        for direction, source, target in (("forward", "old", "new"),
                                          ("backward", "new", "old")):
            command = [str(alive), str(modules[source]), str(modules[target]),
                       "--func=target", "--always-verify", "--fail-src-ub",
                       "--src-unroll=8", "--tgt-unroll=8", "--smt-to=30000", "--quiet"]
            output = run(command).stdout
            assert "1 correct transformations" in output, (length, direction, output)
            assert "0 incorrect transformations" in output
            assert "0 failed-to-prove transformations" in output
            assert "0 Alive2 errors" in output
            checks.append({"length": length, "direction": direction,
                           "target_ir_differs": differs,
                           "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                           "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest(),
                           "command": command, "output": output.strip()})

assert len(checks) == 448
(case / "result.json").write_text(json.dumps({
    "commit": commit, "source_blobs": blobs,
    "scope": "one-shot XXH64 with valid by-value input blocks of every fixed length 32..255, arbitrary input bytes and seed",
    "verdict": "EQUIV_BOUNDED", "different_target_ir": different_targets,
    "checks": checks,
}, indent=2) + "\n")
print(json.dumps({"verdict": "EQUIV_BOUNDED", "checks": len(checks),
                  "different_target_ir": different_targets}))
