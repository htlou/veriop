#!/usr/bin/env python3
"""Diagnose the zero-Q8_K bsums path in both exact historical revisions."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
revisions = {"old": "f454bd7eb8944629aabca163ea1c6e67e53fd77e",
             "new": "2dd84169d1225c2a56ddd1902d718f4514d7536a"}
paths = ("ggml/src/ggml-quants.c", "ggml/src/ggml-common.h",
         "ggml/src/ggml-cpu/arch/x86/quants.c")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
record = {"commit": revisions["new"], "parent": revisions["old"],
          "whole_commit_verdict": "UNKNOWN", "source_blobs": {}, "runs": {}}

with tempfile.TemporaryDirectory(prefix="llama-q6k-zero-") as temp:
    work = Path(temp)
    for side, revision in revisions.items():
        directory = work / side
        directory.mkdir()
        archive = directory / "ggml.tar"
        subprocess.run(["git", "-C", str(repo), "archive", "--format=tar",
                        "-o", str(archive), revision, "ggml"], check=True, env=env)
        subprocess.run(["tar", "-xf", str(archive), "-C", str(directory)], check=True)
        archive.unlink()
        record["source_blobs"][side] = {}
        for path in paths:
            source = (directory / path).read_bytes()
            actual = hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest()
            expected = subprocess.check_output(["git", "-C", str(repo), "rev-parse",
                                                f"{revision}:{path}"], env=env, text=True).strip()
            assert actual == expected
            record["source_blobs"][side][path] = actual
        include = [f"-I{directory / 'ggml/src'}", f"-I{directory / 'ggml/src/ggml-cpu'}",
                   f"-I{directory / 'ggml/include'}"]
        flags = ["-O1", "-mavx2", "-mfma", "-ffunction-sections", "-fdata-sections"]
        objects = []
        for path in (paths[0], paths[2]):
            obj = directory / (Path(path).stem + ("-x86" if "arch/x86" in path else "") + ".o")
            subprocess.run([str(clang), *flags, *include, "-c", str(directory / path),
                            "-o", str(obj)], check=True, capture_output=True, text=True)
            objects.append(obj)
        for control in ((False, True) if side == "new" else (False,)):
            label = side + ("-initialized" if control else "-uninitialized")
            exe = directory / label
            subprocess.run([str(clang), *flags, *include,
                            *(["-DINIT_BSUMS=1"] if control else []),
                            str(here / "zero_q8_harness.c"), *(str(obj) for obj in objects),
                            "-Wl,--gc-sections", "-lm", "-o", str(exe)],
                           check=True, capture_output=True, text=True)
            command = ["valgrind", "--tool=memcheck", "--quiet", "--vgdb=no",
                       "--track-origins=yes", "--error-exitcode=66", str(exe)]
            run = subprocess.run(command, capture_output=True, text=True, timeout=30)
            record["runs"][label] = {"command": [arg.replace(temp, "<WORK>") for arg in command],
                                     "exit_code": run.returncode,
                                     "stdout": run.stdout,
                                     "stderr": re.sub(r"==\d+==", "==PID==",
                                                      run.stderr.replace(temp, "<WORK>"))}

assert record["source_blobs"]["old"][paths[0]] == record["source_blobs"]["new"][paths[0]]
assert record["source_blobs"]["old"][paths[1]] == record["source_blobs"]["new"][paths[1]]
old, new, control = (record["runs"][label] for label in
                     ("old-uninitialized", "new-uninitialized", "new-initialized"))
assert old["exit_code"] == control["exit_code"] == 0 and new["exit_code"] == 66
assert "uninitialised" not in old["stderr"] + control["stderr"]
assert "uninitialised" in new["stderr"]
assert old["stdout"] == new["stdout"] == control["stdout"] == "d=0 q0=0\nout=0x0p+0\n"
(here / "zero-bsums-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("old and initialized-child clean; uninitialized-child reports use; native output is zero on all three")
