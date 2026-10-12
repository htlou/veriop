#!/usr/bin/env python3
"""Rebuild the historical x86 dispatcher on both sides of the SSE2 target change."""
import hashlib
import json
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
COMMIT = "a80dac442642d305f283a8626b0ea6bc55650daf"
FILES = ("xxhash.h", "xxh3.h", "xxh_x86dispatch.c")


def command(args):
    run = subprocess.run(args, capture_output=True, text=True, timeout=60)
    return {"command": args, "exit_code": run.returncode, "stdout": run.stdout, "stderr": run.stderr}


def main():
    result = {"commit": COMMIT, "source_blobs": {}, "compilers": {},
              "scope": "historical xxh_x86dispatch.c on x86-64-v3; old side must compile before Alive2 can compare"}
    changed = subprocess.check_output(["git", "-C", str(REPO), "diff", "--name-only",
                                       COMMIT + "^", COMMIT], text=True).splitlines()
    assert changed == ["xxh3.h", "xxh_x86dispatch.c"]
    with TemporaryDirectory(prefix="xxh-sse2-target-") as directory:
        temp = Path(directory)
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
        assert result["source_blobs"]["old/xxhash.h"] == result["source_blobs"]["new/xxhash.h"]
        for compiler in (str(CLANG), "gcc"):
            label = "clang20" if compiler == str(CLANG) else "gcc"
            result["compilers"][label] = {}
            for side in ("old", "new"):
                src = temp / side
                output = temp / f"{label}-{side}.o"
                result["compilers"][label][side] = command([
                    compiler, "-std=c99", "-O2", "-march=x86-64-v3", "-I", str(src),
                    "-c", str(src / "xxh_x86dispatch.c"), "-o", str(output)])
            assert result["compilers"][label]["old"]["exit_code"] != 0
            assert result["compilers"][label]["new"]["exit_code"] == 0
    result["verdict"] = "UNSUPPORTED"
    result["checker_status"] = "not_run: old translation unit fails compilation"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print("UNSUPPORTED: old dispatcher fails Clang and GCC compilation; new dispatcher builds")


if __name__ == "__main__":
    main()
