#!/usr/bin/env python3
"""Audit the excluded length-eight xxHash algorithm change."""
import hashlib
import json
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
COMMIT = "5fad59e746198844a2eb113d6c0843a462aa325b"


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args])


def main():
    assert git("diff", "--name-only", COMMIT + "^", COMMIT).decode().splitlines() == ["xxh3.h"]
    result = {"commit": COMMIT, "source_blobs": {}, "outputs": {},
              "input_hex": "0001020304050607", "screen": "excluded_non_optimization"}
    with TemporaryDirectory(prefix="xxhash-5fad59e7-") as directory:
        temp = Path(directory)
        sources = {}
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            include = temp / side
            include.mkdir()
            result["source_blobs"][side] = {}
            for name in ("xxhash.h", "xxh3.h"):
                data = git("show", revision + ":" + name)
                oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
                assert oid == git("rev-parse", revision + ":" + name).decode().strip()
                (include / name).write_bytes(data)
                result["source_blobs"][side][name] = oid
                if name == "xxh3.h":
                    sources[side] = data.decode()
            binary = temp / f"run-{side}"
            subprocess.run([str(CLANG), "-std=c99", "-O2", "-I", str(include),
                            str(HERE / "reproduce.c"), "-o", str(binary)], check=True,
                           capture_output=True, text=True)
            result["outputs"][side] = subprocess.check_output([str(binary)], text=True).strip()
    assert sources["old"].count("4 <= len && len <= 8") == 2
    changed = sources["old"].replace("4 <= len && len <= 8", "4 <= len && len < 8", 1)
    changed = changed.replace("8 < len && len <= 16", "8 <= len && len <= 16")
    changed = changed.replace("XXH_likely(len >  8)", "XXH_likely(len >= 8)")
    assert changed == sources["new"] and changed != sources["old"]
    assert result["outputs"] == {"old": "5c06e8e5fae05fae", "new": "8be7d585e5d63553"}
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result["outputs"]))


if __name__ == "__main__":
    main()
