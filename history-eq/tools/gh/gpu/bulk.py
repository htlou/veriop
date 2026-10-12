#!/usr/bin/env python3
"""Bulk UNSUPPORTED classification for entries whose changed files are all outside Volta/Alive2 scope.
Never overwrites an existing result file (manual cases take precedence)."""
import json, sys, os
sys.path.insert(0, os.path.dirname(__file__))
from ptxlib import *

T = json.load(open(f"{HE}/gh/work/gpu_triage.json"))

def backend_of(path):
    p = path.lower()
    for key, name in (("ggml-hexagon", "hexagon"), ("ggml-cann", "cann"), ("ggml-vulkan", "vulkan"), ("vulkan-shaders", "vulkan"),
                      ("ggml-metal", "metal"), ("ggml-opencl", "opencl"), ("ggml-webgpu", "webgpu"), ("ggml-sycl", "sycl"),
                      ("ggml-openvino", "openvino"), ("llama.android", "android")):
        if key in p: return name
    return None

LANG = dict(
    hexagon=("non-x86-target-intrinsics", "Qualcomm Hexagon HTP DSP C and host C++ for the Hexagon backend (HVX/HMX intrinsics, FastRPC); no PTX and no x86 model, outside Volta and Alive2 scope"),
    cann=("out-of-checker-language", "Huawei Ascend CANN backend: host C++ driving aclnn operators; no PTX or x86 kernel code"),
    vulkan=("out-of-checker-language", "Vulkan backend: GLSL compute shaders and host C++ (pipeline/buffer management); no PTX produced"),
    metal=("out-of-checker-language", "Metal backend: MSL shaders and Objective-C/C++ host code; no PTX produced"),
    opencl=("out-of-checker-language", "OpenCL backend: OpenCL C kernels and host C++; no PTX produced"),
    webgpu=("out-of-checker-language", "WebGPU backend: WGSL shaders and host C++; no PTX produced"),
    sycl=("out-of-checker-language", "SYCL backend: SYCL/DPC++ kernels and host C++ targeting Intel GPUs; no PTX produced"),
    openvino=("out-of-checker-language", "OpenVINO backend: C++ host code building OpenVINO graphs; not a PTX or LLVM-IR-modelable arithmetic kernel"),
    android=("out-of-checker-language", "Android Kotlin/Java/CMake binding"),
)

def entries():
    for repo, es in T.items():
        for e in es:
            if "error" in e: continue
            yield repo, e

def doit(repo, e, manual):
    c = e["commit"]
    if repo != "llama.cpp" and False: return
    if c[:8] in manual or result_exists(repo, c): return None
    files = [f for f, k in e["files"]]
    cats = {k for f, k in e["files"]}
    exec_cats = cats - {"build-doc", "test-example", "other"}
    short = c[:8]
    kw = dict(repo=repo, commit=c, checker="none invoked (Volta / Alive2 scope check only)", checker_ran=False, verdict="UNSUPPORTED",
              build_config="n/a", evidence_dir=f"history-eq/gh/work/gpu_triage.json", scope="all changed files: " + ", ".join(files[:6]) + (" ..." if len(files) > 6 else ""))
    if not exec_cats or exec_cats == {"python"} and all(f.endswith(".py") or k in ("build-doc","test-example","other") for f, k in e["files"]):
        if not exec_cats:
            kw.update(unsupported_reason="no-executable-change-in-checker-language",
                      notes="Changed files are only docs/tests/examples/build or CI files; no executable library definition changed.")
        else:
            kw.update(unsupported_reason="out-of-checker-language",
                      notes="Changed executable files are Python (CuTe DSL / generator / interface / tooling); Volta consumes PTX and Alive2 consumes LLVM IR, so no checker comparison can be formed on Python source.")
        return write_result(**kw)
    if repo == "llama.cpp":
        bs = {backend_of(f) for f in files} - {None}
        if bs and exec_cats <= {"cxx", "metal", "vulkan", "opencl", "webgpu", "sycl", "other-backend", "python", "cpu-c"} and not any(k in ("cuda", "cuda-host", "cpu-c") for f, k in e["files"]):
            # all executable files belong to non-CUDA/non-x86 backends
            exec_files = [f for f, k in e["files"] if k not in ("build-doc", "test-example", "other", "python")]
            if all(backend_of(f) or f.endswith(("CMakeLists.txt",)) for f in exec_files):
                bl = sorted(bs)
                reason = LANG[bl[0]][0]
                kw.update(unsupported_reason=reason, notes="; ".join(f"{b}: {LANG[b][1]}" for b in bl) + ". Checker not invoked; comparison cannot be formed (no CUDA PTX and no x86 CPU IR in the changed code).")
                return write_result(**kw)
    return None

if __name__ == "__main__":
    manual = set(sys.argv[1:])
    n = 0; left = []
    for repo, e in entries():
        r = doit(repo, e, manual)
        if r: n += 1
        elif not result_exists(repo, e["commit"]): left.append((repo, e["commit"][:8], e["subject"][:60]))
    print("written", n, "remaining", len(left))
    json.dump(left, open(f"{HE}/gh/work/gpu_remaining.json", "w"), indent=1)
