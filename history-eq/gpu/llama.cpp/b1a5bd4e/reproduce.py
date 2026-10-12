#!/usr/bin/env python3
"""Check exact historical contiguous concat kernels for one-CTA dim-0 shapes."""

import hashlib
import io
import json
import os
from pathlib import Path
import subprocess
import tarfile
import tempfile


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
VOLTA = ROOT / "cuda/repos/volta/target/release/volta"
PARENT = "0c6ee1cadee96d3ba6e06afb0c001d33f413a0b0"
COMMIT = "b1a5bd4e0c19ba8e82eea716a8362c30918b9560"
SOURCE = "ggml/src/ggml-cuda/concat.cu"
BLOBS = {"old": "e9ffd274b9966a7ea7aadd90842047c77efa7d6d",
         "new": "102f944f924a03d622e4bd180e77da4f466fa26f"}
OLD = "_Z15concat_f32_dim0PKfS0_Pfii"
NEW = "_Z15concat_f32_contILi0EEvPKfS1_Pfllllll"
SHAPES = ((2, 1), (7, 3), (32, 5), (129, 1), (255, 127), (256, 128))
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command, timeout=90):
    result = subprocess.run(list(map(str, command)), capture_output=True, text=True,
                            env=ENV, timeout=timeout)
    return {"command": list(map(str, command)), "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


assert subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT + "^"],
                               env=ENV, text=True).strip() == PARENT
record = {"commit": COMMIT, "parent": PARENT, "source": SOURCE, "builds": {},
          "comparisons": {}, "scope": "dim 0, one CTA, all output elements"}

with tempfile.TemporaryDirectory(prefix="veriop-llama-concat-") as temp:
    for side, revision in (("old", PARENT), ("new", COMMIT)):
        blob = subprocess.check_output(["git", "-C", str(REPO), "rev-parse",
                                        f"{revision}:{SOURCE}"], env=ENV, text=True).strip()
        assert blob == BLOBS[side]
        archive = subprocess.run(["git", "-C", str(REPO), "archive", "--format=tar",
                                  revision, "ggml"], env=ENV, capture_output=True, check=True).stdout
        work = Path(temp) / side
        work.mkdir()
        with tarfile.open(fileobj=io.BytesIO(archive)) as tar:
            tar.extractall(work, filter="data")
        source = work / SOURCE
        ptx = HERE / f"{side}.ptx"
        built = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                     "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src",
                     f"-I{work}/ggml/include", source, "-o", ptx])
        assert built["returncode"] == 0, built
        parsed = run([VOLTA, "parse", "--no-log-file", ptx])
        assert parsed["returncode"] == 0, parsed
        record["builds"][side] = {"revision": revision, "source_git_blob": blob,
                                   "source_sha256": sha256(source), "ptx_sha256": sha256(ptx),
                                   "compile": built, "parse": parsed}

# Volta takes one common parameter list. Extend the old ABI to the new logical
# dimension order: (ne00, ne01, ne02, ne0, ne1, ne2). Only declarations change.
raw = (HERE / "old.ptx").read_text()
name = OLD + "_param_"
old_header = (f".entry {OLD}(\n"
              f"\t.param .u64 {name}0,\n\t.param .u64 {name}1,\n"
              f"\t.param .u64 {name}2,\n\t.param .u32 {name}3,\n"
              f"\t.param .u32 {name}4\n)")
new_header = (f".entry {OLD}(\n"
              f"\t.param .u64 {name}0,\n\t.param .u64 {name}1,\n"
              f"\t.param .u64 {name}2,\n\t.param .u32 {name}4,\n"
              "\t.param .u64 concat_dummy_4,\n\t.param .u64 concat_dummy_5,\n"
              f"\t.param .u32 {name}3,\n\t.param .u64 concat_dummy_7,\n"
              "\t.param .u64 concat_dummy_8\n)")
assert raw.count(old_header) == 1
normalized = raw.replace(old_header, new_header, 1)
assert normalized.replace(new_header, old_header, 1) == raw
for dummy in ("concat_dummy_4", "concat_dummy_5", "concat_dummy_7", "concat_dummy_8"):
    assert normalized.count(dummy) == 1
old_normalized = HERE / "old-normalized.ptx"
old_normalized.write_text(normalized)
record["abi_normalization"] = {"original_ptx_sha256": sha256(HERE / "old.ptx"),
                               "normalized_ptx_sha256": sha256(old_normalized),
                               "only_header_replaced": True,
                               "parse": run([VOLTA, "parse", "--no-log-file", old_normalized])}
assert record["abi_normalization"]["parse"]["returncode"] == 0

for ne0, ne00 in SHAPES:
    assert 0 < ne00 < ne0 <= 256
    command = [VOLTA, "compare", old_normalized, HERE / "new.ptx",
               "--kernel1", OLD, "--kernel2", NEW, "--block", "256", "--grid", "1",
               "--array", f"x:0x10000:4:{ne00}:in",
               "--array", f"y:0x20000:4:{ne0 - ne00}:in",
               "--array", f"dst:0x30000:4:{ne0}:out",
               "--param", "ptr:x", "--param", "ptr:y", "--param", "ptr:dst"]
    for value in (ne00, 1, 1, ne0, 1, 1):
        command += ["--param", f"int:{value}"]
    command += ["--check-array", "dst", "--no-log-file"]
    record["comparisons"][f"{ne0}_split_{ne00}"] = run(command)

(HERE / "result.json").write_text(json.dumps(record, indent=2) + "\n")
for (ne0, ne00), result in zip(SHAPES, record["comparisons"].values()):
    assert result["returncode"] == 0 and f"elements: {ne0}" in result["stdout"] \
        and result["stdout"].rstrip().endswith("EQUIVALENT"), (ne0, ne00, result)
print(f"{len(SHAPES)}/{len(SHAPES)} complete-output one-CTA shapes EQUIVALENT")
