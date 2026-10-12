#!/usr/bin/env python3
"""Audit the s390x historical source pair and its cross-compilation gate."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
RESOURCE = ROOT / "alive2/toolchain/usr/lib/llvm-20/lib/clang/20/include"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
COMMIT = "b63643ddc10743fdfb2cb33c43ca77ba74313714"
FILES = ("xxh3.h", "xxhash.h", "xxhash.c")
WRAPPER = '''#include "xxh3.h"
unsigned long long target(const unsigned char *data, unsigned long long seed) {
    return XXH3_64bits_withSeed(data, 256, seed);
}
'''


def main():
    result = {"commit": COMMIT, "scope": "s390x/z13 historical XXH3 fixed-256-byte caller and changed vector multiply helpers",
              "source_blobs": {}, "compilation": {}, "helper_checks": {}}
    assert subprocess.check_output(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT],
                                   text=True).splitlines() == ["xxh3.h"]
    with TemporaryDirectory(prefix="xxh-s390x-") as directory:
        temp = Path(directory)
        shim = temp / "shim"
        shim.mkdir()
        (shim / "stdlib.h").write_text("#include <stddef.h>\nvoid *malloc(size_t); void free(void*);\n")
        (shim / "string.h").write_text("#include <stddef.h>\nvoid *memcpy(void*,const void*,size_t); void *memmove(void*,const void*,size_t); void *memset(void*,int,size_t); int memcmp(const void*,const void*,size_t); size_t strlen(const char*);\n")
        (shim / "assert.h").write_text("#define assert(x) ((void)0)\n")
        wrapper = temp / "wrapper.c"
        wrapper.write_text(WRAPPER)
        historical = {}
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            source = temp / side
            source.mkdir()
            for name in FILES:
                data = subprocess.run(["git", "-C", str(REPO), "show", revision + ":" + name],
                                      check=True, stdout=subprocess.PIPE).stdout
                (source / name).write_bytes(data)
                digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
                expected = subprocess.check_output(["git", "-C", str(REPO), "rev-parse",
                                                    revision + ":" + name], text=True).strip()
                assert digest == expected
                result["source_blobs"][side + "/" + name] = digest
                if name == "xxh3.h":
                    historical[side] = data.decode()
            command = [str(CLANG), "--target=s390x-linux-gnu", "-march=z13", "-fzvector", "-std=c99", "-O1",
                       "-ffreestanding", "-nostdinc", "-isystem", str(RESOURCE), "-I", str(shim), "-I", str(source), "-S", "-emit-llvm", str(wrapper),
                       "-o", str(temp / f"{side}.ll")]
            process = subprocess.run(command, capture_output=True, text=True, timeout=40)
            assert process.returncode == 0, process.stderr
            ir = (temp / f"{side}.ll").read_text()
            assert ('asm "vmulouw' in ir) == (side == "old")
            assert ('@llvm.s390.vmlof' in ir) == (side == "new")
            (HERE / f"{side}.ll").write_text(ir)
            object_command = command[:command.index("-S")] + ["-c", str(wrapper), "-o", str(temp / f"{side}.o")]
            assembled = subprocess.run(object_command, capture_output=True, text=True, timeout=40)
            assert (assembled.returncode == 0) == (side == "new"), assembled.stderr
            if side == "old":
                assert "invalid instruction" in assembled.stderr and "vmulouw" in assembled.stderr
            (HERE / f"{side}-object.log").write_text(assembled.stdout + assembled.stderr)
            result["compilation"][side] = {"exit_code": process.returncode,
                                           "ir_sha256": hashlib.sha256(ir.encode()).hexdigest(),
                                           "object_exit_code": assembled.returncode,
                                           "object_diagnostic": assembled.stderr.strip()}
        assert 'define XXH_vec_mulo vec_mulo' in historical["new"]
        assert 'define XXH_vec_mule vec_mule' in historical["new"]
        for op, intrinsic in (("mulo", "vmlof"), ("mule", "vmlef")):
            irs = {}
            for side in ("old", "new"):
                prefix = ("#include <s390intrin.h>\ntypedef __vector unsigned int U32x4;\n"
                          "typedef __vector unsigned long long U64x2;\n")
                if side == "old":
                    start = historical[side].index(f"XXH_FORCE_INLINE U64x2 XXH_vec_{op}(")
                    end = historical[side].index("\n}", start) + 2
                    definition = historical[side][start:end].replace("XXH_FORCE_INLINE", "static inline", 1)
                else:
                    definition = next(line for line in historical[side].splitlines()
                                      if line.strip() == f"#  define XXH_vec_{op} vec_{op}")
                source = (prefix + definition + "\n"
                          f"U64x2 target(U32x4 a,U32x4 b) {{ return XXH_vec_{op}(a,b); }}\n")
                path = HERE / f"{side}-{op}.c"
                path.write_text(source)
                built = subprocess.run([str(CLANG), "--target=s390x-linux-gnu", "-march=z13", "-fzvector",
                                        "-nostdinc", "-isystem", str(RESOURCE), "-O1", "-S", "-emit-llvm",
                                        str(path), "-o", str(HERE / f"{side}-{op}.ll")],
                                       capture_output=True, text=True, timeout=30)
                assert built.returncode == 0, built.stderr
                ir = (HERE / f"{side}-{op}.ll").read_text()
                irs[side] = re.sub(r", !srcloc !\d+", "", ir)
                (HERE / f"{side}-{op}-normalized.ll").write_text(irs[side])
            assert 'asm "vmul' in irs["old"] and f"@llvm.s390.{intrinsic}" in irs["new"]
            checked = subprocess.run([str(ALIVE), str(HERE / f"old-{op}-normalized.ll"),
                                      str(HERE / f"new-{op}-normalized.ll"), "--func=target",
                                      "--always-verify", "--quiet"], capture_output=True, text=True, timeout=30)
            output = checked.stdout + checked.stderr
            assert f"Unknown libcall: @llvm.s390.{intrinsic}" in output
            assert "1 failed-to-prove transformations" in output and "0 incorrect transformations" in output
            (HERE / f"alive2-{op}.log").write_text(output)
            result["helper_checks"][op] = output.strip()
        assert result["source_blobs"]["old/xxhash.h"] == result["source_blobs"]["new/xxhash.h"]
        assert result["source_blobs"]["old/xxhash.c"] == result["source_blobs"]["new/xxhash.c"]
    result["verdict"] = "UNSUPPORTED"
    result["checker_status"] = "checked"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print("UNSUPPORTED: both variants reach IR; old s390x assembly fails, and Alive2 cannot model vmlof/vmlef")


if __name__ == "__main__":
    main()
