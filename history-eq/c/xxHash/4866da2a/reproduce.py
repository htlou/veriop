#!/usr/bin/env python3
"""Probe the historical IBM XL VSX branches with Clang and Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
resource = root / "alive2/toolchain/usr/lib/llvm-20/lib/clang/20/include"
alive = root / "alive2/build/alive2/alive-tv"
commit = "4866da2abbf2afa562edaa42de4a95e80ed712ba"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    return subprocess.run([str(arg) for arg in args], capture_output=True, text=True,
                          timeout=60, env=env)


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


diff = git("diff", commit + "^", commit, "--", "xxhash.h")
assert b"-# if defined(__s390x__)" in diff
assert b"+# if defined(__s390x__) || defined(__ibmxl__)" in diff
(here / "source.diff").write_bytes(diff)
result = {"commit": commit, "verdict": "UNSUPPORTED", "checker_status": "checked",
          "scope": "IBM XL/PowerPC VSX vector multiply; Clang macro-branch emulation",
          "xlc_on_path": shutil.which("xlc"), "xlc_r_on_path": shutil.which("xlc_r"),
          "diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}, "helper_checks": {}}

with TemporaryDirectory(prefix="xxhash-ibm-xl-") as directory:
    temp = Path(directory)
    shim = temp / "shim"
    shim.mkdir()
    (shim / "stdlib.h").write_text("#include <stddef.h>\nvoid *malloc(size_t); void free(void*);\n")
    (shim / "string.h").write_text("#include <stddef.h>\nvoid *memcpy(void*,const void*,size_t); "
                                   "void *memmove(void*,const void*,size_t); "
                                   "void *memset(void*,int,size_t); int memcmp(const void*,const void*,size_t); "
                                   "size_t strlen(const char*);\n")
    (shim / "assert.h").write_text("#define assert(x) ((void)0)\n")
    wrapper = temp / "probe.c"
    wrapper.write_text('#define XXH_INLINE_ALL\n#include "xxhash.h"\n'
                       'unsigned long long target(const void *p) { return XXH3_64bits(p, 256); }\n')
    historical = {}
    for side, revision in (("old", commit + "^"), ("new", commit)):
        source = temp / side
        source.mkdir()
        data = git("show", revision + ":xxhash.h")
        blob = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        assert blob == git("rev-parse", revision + ":xxhash.h").decode().strip()
        historical[side] = data.decode()
        (source / "xxhash.h").write_bytes(data)
        options = [clang, "--target=powerpc64le-linux-gnu", "-mcpu=power9",
                   "-D__ibmxl__", "-U__clang__", "-DXXH_VECTOR=5", "-std=c99", "-O1",
                   "-ffreestanding", "-nostdinc", "-isystem", resource,
                   "-I", shim, "-I", source]
        ir = here / f"{side}-256.ll"
        built = run(options + ["-S", "-emit-llvm", wrapper, "-o", ir])
        obj = temp / f"{side}.o"
        assembled = run(options + ["-c", wrapper, "-o", obj])
        assert built.returncode == assembled.returncode == 0, built.stderr + assembled.stderr
        llvm = ir.read_text()
        assert "@XXH3_hashLong_64b_default" in llvm
        assert ('asm "vmulouw' in llvm) == (side == "old")
        assert ('@llvm.ppc.altivec.vmuleuw' in llvm) == (side == "new")
        result["sides"][side] = {"source_blob": blob,
                                 "ir_sha256": hashlib.sha256(llvm.encode()).hexdigest(),
                                 "object_sha256": hashlib.sha256(obj.read_bytes()).hexdigest()}

    for op, intrinsic in (("mulo", "vmuleuw"), ("mule", "vmulouw")):
        for side in ("old", "new"):
            if side == "old":
                signature = f"XXH_FORCE_INLINE xxh_u64x2 XXH_vec_{op}("
                start = historical[side].index(signature)
                end = historical[side].index("\n}", start) + 2
                definition = historical[side][start:end].replace("XXH_FORCE_INLINE", "static inline", 1)
            else:
                definition = next(line for line in historical[side].splitlines()
                                  if line.strip() == f"#  define XXH_vec_{op} vec_{op}")
            program = ("#include <altivec.h>\ntypedef __vector unsigned int xxh_u32x4;\n"
                       "typedef __vector unsigned long long xxh_u64x2;\n" + definition + "\n"
                       f"xxh_u64x2 target(xxh_u32x4 a, xxh_u32x4 b) "
                       f"{{ return XXH_vec_{op}(a,b); }}\n")
            cfile = here / f"{side}-{op}.c"
            cfile.write_text(program)
            llvm = here / f"{side}-{op}.ll"
            built = run([clang, "--target=powerpc64le-linux-gnu", "-mcpu=power9", "-O1",
                         "-ffreestanding", "-nostdinc", "-isystem", resource,
                         "-S", "-emit-llvm", cfile, "-o", llvm])
            assert built.returncode == 0, built.stderr
            normalized = re.sub(r", !srcloc !\d+", "", llvm.read_text())
            (here / f"{side}-{op}-normalized.ll").write_text(normalized)
        assert 'asm "vmul' in (here / f"old-{op}.ll").read_text()
        assert f"@llvm.ppc.altivec.{intrinsic}" in (here / f"new-{op}.ll").read_text()
        checked = run([alive, here / f"old-{op}-normalized.ll",
                       here / f"new-{op}-normalized.ll", "--func=target",
                       "--always-verify", "--fail-src-ub", "--quiet"])
        output = checked.stdout + checked.stderr
        assert f"Unknown libcall: @llvm.ppc.altivec.{intrinsic}" in output
        assert "1 failed-to-prove transformations" in output and "0 incorrect transformations" in output
        (here / f"alive2-{op}.log").write_text(output)
        result["helper_checks"][op] = output.strip()

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("UNSUPPORTED: Clang macro branches build; Alive2 cannot model PowerPC vector multiply intrinsics")
