#!/usr/bin/env python3
"""Build and check the historical fused MMVQ bias-prefetch kernel with Volta."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
volta = root / "cuda/repos/volta/target/release/volta"
path = "ggml/src/ggml-cuda/mmvq.cu"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, timeout=120):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=timeout, env=env)


rev = run(["git", "-C", repo, "rev-parse", "8b11deea"])
assert rev.returncode == 0
commit = rev.stdout.strip()
changed = run(["git", "-C", repo, "diff-tree", "--no-commit-id", "--name-only", "-r", commit])
assert changed.returncode == 0 and changed.stdout.splitlines() == [path]
record = {"commit": commit, "historical_source_blobs": {}, "builds": {},
          "checker": "Volta", "verdict": "UNSUPPORTED"}
with TemporaryDirectory(prefix="veriop-8b11deea-") as directory:
    temp = Path(directory)
    for side, revision in (("old", commit + "^"), ("new", commit)):
        work = temp / side
        work.mkdir()
        archive = work / "ggml.tar"
        archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
        assert archived.returncode == 0, archived.stderr
        extracted = run(["tar", "-xf", archive, "-C", work])
        assert extracted.returncode == 0, extracted.stderr
        source = work / path
        data = source.read_bytes()
        oid = run(["git", "-C", repo, "rev-parse", revision + ":" + path])
        assert oid.returncode == 0
        assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid.stdout.strip()
        record["historical_source_blobs"][side] = oid.stdout.strip()
        ptx = here / f"{side}.ptx"
        built = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                     "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                     source, "-o", ptx])
        assert built.returncode == 0, built.stderr
        parsed = run([volta, "parse", ptx, "--no-log-file"])
        assert parsed.returncode == 0 and "Entries (kernels): 180" in parsed.stdout, parsed.stdout + parsed.stderr
        text = ptx.read_text()
        entries = list(re.finditer(r"(?m)^\.entry\s+([^\(]+)\(", text))
        names = [match.group(1) for match in entries]
        assert len(names) == 180
        selected = next(n for n in names if n.startswith("_Z13mul_mat_vec_qIL9ggml_type2ELi1ELb1EE"))
        assert selected == names[0]
        selected_body = text[entries[0].start():entries[1].start()]
        record["builds"][side] = {"source_sha256": hashlib.sha256(data).hexdigest(),
                                  "ptx_sha256": hashlib.sha256(ptx.read_bytes()).hexdigest(),
                                  "selected_kernel_sha256": hashlib.sha256(selected_body.encode()).hexdigest(),
                                  "kernel": selected, "parse": parsed.stdout.strip()}

    assert record["builds"]["old"]["kernel"] == record["builds"]["new"]["kernel"]
    assert record["builds"]["old"]["ptx_sha256"] != record["builds"]["new"]["ptx_sha256"]
    assert record["builds"]["old"]["selected_kernel_sha256"] != record["builds"]["new"]["selected_kernel_sha256"]
    args = [volta, "compare", here / "old.ptx", here / "new.ptx",
            "--kernel1", record["builds"]["old"]["kernel"],
            "--kernel2", record["builds"]["new"]["kernel"],
            "-b", "128", "-g", "1", "--array", "x:0x10000:4:4096:in",
            "--array", "y:0x20000:4:4096:in", "--array", "ids:0x30000:4:4096:in",
            "--array", "out:0x40000:4:4096:out", "--check-array", "out",
            "--sample", "1", "--no-log-file"]
    values = ["ptr:x", "ptr:y", "ptr:ids", "int:0", "ptr:out"] + ["int:1"] * 13
    assert len(values) == 18
    for value in values:
        args += ["--param", value]
    compared = run(args)
    diagnostic = compared.stdout + compared.stderr
    assert compared.returncode != 0 and "param loads with nonzero offsets are not supported" in diagnostic
    assert "reference kernel: lowering failed" in diagnostic
    (here / "volta-compare.log").write_text(diagnostic)
    record["compare"] = {"exit_code": compared.returncode, "diagnostic": diagnostic.strip(),
                         "block": 128, "grid": 1, "checked_output": "out", "sample": 1}

(here / "result.json").write_text(json.dumps(record, indent=2) + "\n")
print("Both historical fused MMVQ kernels built and parsed; Volta rejects offset parameter load")
