#!/usr/bin/env python3
"""Run exact historical XXH3 128-bit-with-secret implementations on valid inputs."""

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
commit = "71566dfcee"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


full = git("rev-parse", commit + "^{commit}").decode().strip()
changed = git("diff", "--name-only", full + "^", full).decode().splitlines()
assert changed == ["xxh3.h", "xxhsum.c"], changed
diff = git("diff", full + "^", full, "--", "xxh3.h")
assert b"-                                 XXH3_hashLong_128b_defaultSecret);" in diff
assert b"+                                 XXH3_hashLong_128b_withSecret);" in diff
(here / "source.diff").write_bytes(diff)
result = {"commit": full, "verdict": "NOT_EQUIV",
          "scope": "XXH3_128bits_withSecret public 128-bit output for 300 logical data bytes in a 1024-byte backing array and two distinct valid 192-byte secrets; exact historical C source",
          "diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}}
with TemporaryDirectory(prefix="xxhash-secret-128-") as directory:
    values = lambda size, multiplier, offset: ",".join(str((i * multiplier + offset) % 256) for i in range(size))
    wrapper = Path(directory) / "AliveObserver.c"
    wrapper.write_text(
        '#define XXH_STATIC_LINKING_ONLY\n#define XXH_INLINE_ALL\n'
        '#define XXH_NO_INLINE_HINTS 1\n#define XXH_NO_PREFETCH 1\n#include "xxh3.h"\n'
        f'static const unsigned char data[1024] = {{{values(1024, 13, 7)}}};\n'
        f'static const unsigned char secret[192] = {{{values(192, 3, 11)}}};\n'
        'XXH128_hash_t target(void) { return XXH3_128bits_withSecret(data, 300, secret, 192); }\n')
    for side, revision in (("old", full + "^"), ("new", full)):
        source = Path(directory) / side
        source.mkdir()
        blobs = {}
        for name in ("xxhash.h", "xxh3.h", "xxhash.c"):
            data = git("show", revision + ":" + name)
            blob = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert blob == git("rev-parse", revision + ":" + name).decode().strip()
            (source / name).write_bytes(data)
            blobs[name] = blob
        binary = source / "observer"
        built = subprocess.run([str(clang), "-std=c99", "-O2", "-I", str(source),
                                str(source / "xxhash.c"), str(here / "Observer.c"),
                                "-o", str(binary)], capture_output=True, text=True, timeout=40)
        assert built.returncode == 0, built.stderr
        observed = subprocess.run([str(binary)], capture_output=True, text=True, timeout=10)
        assert observed.returncode == 0, observed.stderr
        sanitized_binary = source / "observer-sanitized"
        sanitized_build = subprocess.run(
            ["gcc", "-std=c99", "-O1", "-fsanitize=address,undefined",
             "-fno-omit-frame-pointer", "-I", str(source), str(source / "xxhash.c"),
             str(here / "Observer.c"), "-o", str(sanitized_binary)],
            capture_output=True, text=True, timeout=60)
        assert sanitized_build.returncode == 0, sanitized_build.stderr
        sanitized = subprocess.run([str(sanitized_binary)], capture_output=True, text=True,
                                   env={**os.environ, "ASAN_OPTIONS": "detect_leaks=0"}, timeout=20)
        assert sanitized.returncode == 0 and sanitized.stdout == observed.stdout and not sanitized.stderr, sanitized.stderr
        module = source / "target.ll"
        compiled = subprocess.run([str(clang), "-std=c99", "-O3", "-march=x86-64-v3",
                                   "-I", str(source), "-S", "-emit-llvm", str(wrapper),
                                   "-o", str(module)], capture_output=True, text=True, timeout=40)
        assert compiled.returncode == 0, compiled.stderr
        ir = module.read_text().replace(str(wrapper), "AliveObserver.c")
        ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
        target = re.search(r"^define [^\n]*@target\([^\n]*\).*?^}", ir, re.M | re.S)
        assert target and "ret { i64, i64 }" in target.group() and "call " not in target.group()
        assert len(re.findall(r"^define ", ir, re.M)) == 1
        assert "llvm.prefetch" not in ir
        (here / f"{side}-target.ll").write_text(ir)
        result["sides"][side] = {"source_blobs": blobs, "stdout": observed.stdout.strip(),
                                 "gcc_asan_ubsan_stdout": sanitized.stdout.strip(),
                                 "alive_ir_sha256": hashlib.sha256(ir.encode()).hexdigest()}
    proof = subprocess.run([str(alive), str(here / "old-target.ll"), str(here / "new-target.ll"),
                            "--func=target", "--always-verify", "--fail-src-ub", "--smt-to=30000"],
                           capture_output=True, text=True, timeout=45)
    assert proof.returncode == 0 and not proof.stderr, proof.stderr
    assert "1 incorrect transformations" in proof.stdout and "0 Alive2 errors" in proof.stdout
    assert "Source value: { #x3463f8e1612d6949" in proof.stdout
    assert "Target value: { #x275a31ac08a375a9" in proof.stdout
    (here / "alive2.log").write_text(proof.stdout)
    result["alive2"] = {"configuration": "Clang 20 -O3 -march=x86-64-v3, XXH_INLINE_ALL, XXH_NO_INLINE_HINTS=1, XXH_NO_PREFETCH=1",
                        "verdict": "incorrect transformation: 128-bit value mismatch",
                        "log": "history-eq/c/xxHash/71566df/alive2.log"}
assert result["sides"]["old"]["source_blobs"]["xxhash.h"] == result["sides"]["new"]["source_blobs"]["xxhash.h"]
assert result["sides"]["old"]["source_blobs"]["xxhash.c"] == result["sides"]["new"]["source_blobs"]["xxhash.c"]
assert result["sides"]["old"]["stdout"] == "a=a9b1c67db7853f503463f8e1612d6949 b=a9b1c67db7853f503463f8e1612d6949"
assert result["sides"]["new"]["stdout"] == "a=af5b93a0c5604177275a31ac08a375a9 b=9c8319e773235f7e7dcf6c0dacf87cf9"
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"alive2": result["alive2"]["verdict"],
                  **{side: data["stdout"] for side, data in result["sides"].items()}}))
