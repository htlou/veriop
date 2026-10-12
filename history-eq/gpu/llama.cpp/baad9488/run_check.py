#!/usr/bin/env python3
"""Run exact historical Q2_K dot and interleaved GEMV on identical inputs."""

import hashlib
import io
import json
import os
from pathlib import Path
import subprocess
import tarfile
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
child = "baad94885df512bb24ab01e2b22d1998fce4d00e"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def run(args):
    done = subprocess.run(args, capture_output=True, text=True)
    assert done.returncode == 0, (args, done.stdout[-1200:], done.stderr[-1200:])
    return done.stdout


parent = git("rev-parse", child + "^").decode().strip()
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
archive_diff = here.parent / "source-screening/baad9488.source.diff"
assert manifest["commits"][child]["parent"] == parent
assert hashlib.sha256(archive_diff.read_bytes()).hexdigest() == manifest["commits"][child]["diff_sha256"]
assert archive_diff.read_bytes() == git("diff", "--no-ext-diff", parent, child, "--", "ggml/src/")
unchanged = ["ggml/src/ggml-quants.c", "ggml/src/ggml-cpu/arch/x86/quants.c"]
for path in unchanged:
    assert git("rev-parse", f"{parent}:{path}") == git("rev-parse", f"{child}:{path}")

report = {"parent": parent, "child": child, "source_store": str(repo),
          "scope": "one Q2_K x Q8_K 8-row GEMV at k=256 on x86 AVX2",
          "probe_source_sha256": hashlib.sha256((here / "q2_probe.cpp").read_bytes()).hexdigest(),
          "sides": {}, "verdict": "NOT_EQUIV"}

with tempfile.TemporaryDirectory(prefix="veriop-llama-baad-") as tmp:
    for side, rev in (("old", parent), ("new", child)):
        stage = Path(tmp) / side
        stage.mkdir()
        source_tar = git("archive", "--format=tar", rev, "ggml")
        with tarfile.open(fileobj=io.BytesIO(source_tar), mode="r:") as tar:
            tar.extractall(stage, filter="data")
        (stage / "CMakeLists.txt").write_text(
            "cmake_minimum_required(VERSION 3.14)\nproject(veriop_historical_ggml C CXX)\nadd_subdirectory(ggml)\n"
        )
        build = stage / "build"
        run(["cmake", "-S", str(stage), "-B", str(build), "-G", "Ninja",
             "-DGGML_NATIVE=OFF", "-DGGML_AVX2=ON", "-DGGML_BUILD_TESTS=OFF",
             "-DBUILD_SHARED_LIBS=OFF"])
        run(["cmake", "--build", str(build), "-j", "2"])
        source = stage / "ggml"
        libs = build / "ggml/src"
        executable = stage / "q2_probe"
        command = ["g++", "-std=c++17", "-O2", "-mavx2", "-mfma", "-mf16c"]
        if side == "new":
            command.append("-DCANDIDATE")
        command += [f"-I{source / 'include'}", f"-I{source / 'src'}",
                    f"-I{source / 'src/ggml-cpu'}", str(here / "q2_probe.cpp"),
                    "-Wl,--start-group", str(libs / "libggml-cpu.a"),
                    str(libs / "libggml-base.a"), str(libs / "libggml.a"),
                    "-Wl,--end-group", "-fopenmp", "-pthread", "-ldl",
                    "-o", str(executable)]
        run(command)
        payload = stage / "quantized-input.bin"
        output = run([str(executable), str(payload)])
        bits = [line.split()[0] for line in output.splitlines()]
        assert len(bits) == 8 and all(len(word) == 8 for word in bits)
        report["sides"][side] = {"revision": rev,
                                  "input_sha256": hashlib.sha256(payload.read_bytes()).hexdigest(),
                                  "float_bits": bits, "stdout": output.strip()}

assert report["sides"]["old"]["input_sha256"] == report["sides"]["new"]["input_sha256"]
report["different_rows"] = [i for i, (a, b) in enumerate(zip(
    report["sides"]["old"]["float_bits"], report["sides"]["new"]["float_bits"])) if a != b]
assert report["different_rows"] == list(range(8))
(here / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print("exact historical Q2_K/Q8_K inputs match; all 8 output float bits differ")
