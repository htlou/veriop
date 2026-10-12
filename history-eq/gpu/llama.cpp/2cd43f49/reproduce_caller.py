#!/usr/bin/env python3
"""Build both exact historical ggml CPU libraries and compare final tensors."""

import os
from pathlib import Path
import subprocess
import tarfile
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
common = (
    "case=zero status=0 shape=4x2 " + " ".join(f"c{i}=0x0p+0" for i in range(8)) + "\n"
    "case=nonzero status=0 shape=4x2 " + " ".join(f"c{i}=0x1.2p+5" for i in range(8)) + "\n"
)
expected = {
    "old": common + "case=nonfp16_b status=0 shape=4x2 "
           + " ".join(f"c{i}=0x1.00068ep+3" for i in range(8)) + "\n",
    "new": common + "case=nonfp16_b status=0 shape=4x2 "
           + " ".join(f"c{i}=0x1p+3" for i in range(8)) + "\n",
}
control = common + "case=nonfp16_b status=0 shape=4x2 " \
          + " ".join(f"c{i}=0x1p+3" for i in range(8)) + "\n"

with tempfile.TemporaryDirectory(prefix="llama-2cd43f49-caller-") as temp:
    for label, revision in (("old", "2cd43f4900^"), ("new", "2cd43f4900")):
        side = Path(temp) / label
        side.mkdir()
        env = dict(os.environ, GIT_NO_LAZY_FETCH="1")
        archive = subprocess.Popen(
            ["git", "-C", str(repo), "archive", "--format=tar", revision, "ggml"],
            stdout=subprocess.PIPE, env=env,
        )
        with tarfile.open(fileobj=archive.stdout, mode="r|") as tar:
            tar.extractall(side, filter="data")
        if archive.wait() != 0:
            raise RuntimeError(f"Could not extract {revision}")
        (side / "CMakeLists.txt").write_text(
            "cmake_minimum_required(VERSION 3.14)\n"
            "project(historical_ggml C CXX)\nadd_subdirectory(ggml)\n"
        )
        for enabled in (True, False):
            mode = "on" if enabled else "off"
            build = side / f"build-{mode}"
            subprocess.run([
                "cmake", "-S", str(side), "-B", str(build), "-DGGML_NATIVE=OFF",
                "-DGGML_AVX=ON", "-DGGML_AVX2=ON", "-DGGML_FMA=ON",
                "-DGGML_F16C=ON", f"-DGGML_LLAMAFILE={mode.upper()}",
                "-DGGML_OPENMP=OFF", "-DBUILD_SHARED_LIBS=OFF",
                "-DGGML_CUDA=OFF", "-DGGML_VULKAN=OFF",
            ], check=True, stdout=subprocess.DEVNULL)
            subprocess.run(["cmake", "--build", str(build), "--target", "ggml-cpu", "-j", "4"],
                           check=True, stdout=subprocess.DEVNULL)
            binary = side / f"caller_probe-{mode}"
            subprocess.run([
                "g++", "-std=c++17", "-O2", f"-I{side / 'ggml/include'}",
                str(here / "caller_probe.cpp"), str(build / "ggml/src/libggml-cpu.a"),
                str(build / "ggml/src/libggml-base.a"), "-pthread", "-o", str(binary),
            ], check=True)
            output = subprocess.run([str(binary)], check=True, capture_output=True, text=True).stdout
            suffix = "" if enabled else "-no-llamafile"
            (here / f"{label}-caller{suffix}.log").write_text(output)
            assert output == (expected[label] if enabled else control), \
                   f"{label} {mode} output changed: {output!r}"
            print(label, mode, output.splitlines()[-1])
