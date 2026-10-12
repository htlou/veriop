#!/usr/bin/env python3
"""Run the exact historical CUDA-init functions against a controlled API trace."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "ceef6b5233c3b31f454632c48fb42af16944bc5b"
path = "ggml/src/ggml-cuda/ggml-cuda.cu"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
compiler = shutil.which("g++")
assert compiler


def run(args):
    return subprocess.run([str(arg) for arg in args], capture_output=True, text=True,
                          timeout=60, env=env)


def function(text, signature):
    start = text.index(signature)
    opening = text.index("{", start)
    depth = 0
    for end in range(opening, len(text)):
        depth += (text[end] == "{") - (text[end] == "}")
        if depth == 0:
            return text[start:end + 1]
    raise AssertionError(signature)


support = r'''#include <cassert>
#include <cstdint>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <string>
#include <utility>
#define GGML_CUDA_MAX_DEVICES 4
#define GGML_CUDA_NAME "CUDA"
#define GGML_CUDA_CC_TURING 750
#define GGML_ASSERT(x) assert(x)
#define GGML_LOG_INFO(...) std::printf(__VA_ARGS__)
#define GGML_LOG_WARN(...) std::printf(__VA_ARGS__)
#define GGML_LOG_ERROR(...) std::printf(__VA_ARGS__)
#define CUDA_CHECK(x) do { if ((x) != 0) std::abort(); } while(0)
typedef int cudaError_t;
const int cudaSuccess = 0;
const int cudaDevAttrCooperativeLaunch = 1;
const int cudaDeviceScheduleSpin = 2;
struct cudaDeviceProp {
    char name[256]; size_t totalGlobalMem; int multiProcessorCount;
    int sharedMemPerBlock, warpSize, sharedMemPerBlockOptin, major, minor;
};
struct Device {
    bool vmm, integrated; int nsm, smpb, warp_size;
    bool supports_cooperative_launch; int smpbo, cc;
};
struct ggml_cuda_device_info {
    int device_count; Device devices[4]; double default_tensor_split[4];
};
static int set_calls, mem_calls, flag_calls;
const char *cudaGetErrorString(int) { return "stub"; }
int cudaGetDeviceCount(int *n) { *n = 1; return 0; }
int cudaGetDeviceProperties(cudaDeviceProp *p, int) {
    std::memset(p, 0, sizeof(*p)); std::strcpy(p->name, "Test GPU");
    p->totalGlobalMem = 1024ULL*1024*1024; p->multiProcessorCount = 80;
    p->sharedMemPerBlock = 49152; p->sharedMemPerBlockOptin = 98304;
    p->warpSize = 32; p->major = 8; p->minor = 0; return 0;
}
int cudaDeviceGetAttribute(int *v, int, int) { *v = 0; return 0; }
int cudaSetDevice(int) { ++set_calls; return 0; }
int cudaMemGetInfo(size_t *free_mem, size_t *) {
    ++mem_calls; *free_mem = 512ULL*1024*1024; return 0;
}
int cudaSetDeviceFlags(int) { ++flag_calls; return 0; }
int ggml_cuda_highest_compiled_arch(int) { return 0; }
'''
main = ('\nint main() { auto info = ggml_cuda_init(); '
        'std::printf("TRACE set=%d mem=%d flags=%d devices=%d\\n", '
        'set_calls, mem_calls, flag_calls, info.device_count); }\n')

changed = run(["git", "-C", repo, "diff", "--name-only", commit + "^", commit])
assert changed.returncode == 0 and changed.stdout.splitlines() == [path]
diff = run(["git", "-C", repo, "diff", commit + "^", commit, "--", path])
assert diff.returncode == 0
assert "-        CUDA_CHECK(cudaSetDevice(id));" in diff.stdout
assert "-        CUDA_CHECK(cudaMemGetInfo(&free_mem, NULL));" in diff.stdout
(here / "source.diff").write_text(diff.stdout)

result = {"commit": commit, "source_blobs": {}, "verdict": "NOT_EQUIV",
          "scope": "complete historical ggml_cuda_init under NVIDIA/no-VMM config, one successful CC 8.0 device; diagnostic output and CUDA API call trace",
          "diff_sha256": hashlib.sha256(diff.stdout.encode()).hexdigest(), "runs": {}}
with TemporaryDirectory(prefix="llama-cuda-init-") as directory:
    temp = Path(directory)
    for side, revision in (("old", commit + "^"), ("new", commit)):
        shown = run(["git", "-C", repo, "show", revision + ":" + path])
        oid = run(["git", "-C", repo, "rev-parse", revision + ":" + path])
        assert shown.returncode == oid.returncode == 0
        data = shown.stdout.encode()
        digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        assert digest == oid.stdout.strip()
        result["source_blobs"][side] = digest
        body = function(shown.stdout, "static ggml_cuda_device_info ggml_cuda_init()")
        (here / f"{side}.cpp").write_text(support + body + main)
        binary = temp / side
        compiled = run([compiler, "-std=c++17", "-O0", here / f"{side}.cpp", "-o", binary])
        assert compiled.returncode == 0, compiled.stderr
        executed = run([binary])
        assert executed.returncode == 0, executed.stderr
        (here / f"{side}.log").write_text(executed.stdout)
        result["runs"][side] = executed.stdout.strip()

old, new = result["runs"]["old"], result["runs"]["new"]
assert "VRAM: 1024 MiB (512 MiB free)" in old
assert "VRAM: 1024 MiB" in new and "free" not in new
assert "TRACE set=1 mem=1 flags=0 devices=1" in old
assert "TRACE set=0 mem=0 flags=0 devices=1" in new
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("NOT_EQUIV for observable CUDA initialization trace: old set/mem calls 1/1, new 0/0")
