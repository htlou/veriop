#!/usr/bin/env python3
"""Screen a seeded llama.cpp top-up and retain the first 200 optimizations."""

from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
evidence = root / "history-eq/gpu/llama.cpp/topup-screening.md"
repos = [root / "cuda/repos/llama.cpp", root / "benchmarks/repos/llama.cpp"]
performance = set(map(int, """
1 5 6 7 10 14 15 16 17 19 21 23 24 25 27 28 30 31 33 34 37 38 41 42 44 45 46 47 49
52 53 55 56 58 59 61 62 65 66 67 68 69 70 71 72 77 78 80 82 83 84 85 86 87 89 91
93 95 97 100 101 103 104 106 107 108 111 112 113 114 115
""".split()))
excluded_groups = {
    "new backend, operation, model, or hardware support without an existing-path speed change":
        {2, 3, 9, 12, 18, 29, 51, 54, 60, 63, 73, 75, 79, 88, 90, 94, 109, 110},
    "revert without a stated performance improvement": {4, 32},
    "correctness, compatibility, or validity fix rather than performance optimization":
        {8, 11, 13, 20, 22, 26, 35, 39, 40, 43, 48, 57, 64, 74, 81, 92, 98, 105},
    "performance instrumentation only": {36, 96, 102},
    "code move or rename without a stated performance change": {76, 99},
    "version and feature update without a separately identified optimization of an existing path": {50},
}
excluded = {number: reason for reason, numbers in excluded_groups.items() for number in numbers}
assert len(performance) == 71 and len(excluded) == 44
assert performance.isdisjoint(excluded) and performance | set(excluded) == set(range(1, 116))

# Initial source/scope classification; dedicated case reports can supersede it below.
unverified_scope = {23, 38, 42, 44, 46, 49, 52, 78, 80, 87, 95, 107, 108}
assert unverified_scope <= performance

# Later source-locked case reports supersede the initial metadata classifications.
case_verdicts = {
    **dict.fromkeys((7, 10, 16, 23, 37, 70), "NOT_EQUIV"),
    **dict.fromkeys((14, 15, 19, 21, 34, 42, 47, 52, 53, 55, 59, 61, 83, 85, 86, 104), "EQUIV_PARTIAL"),
    **dict.fromkeys((33, 45, 56, 58, 71, 97, 106), "UNKNOWN"),
}
case_reports = set(case_verdicts) | {44, 52, 65, 69, 82, 95}
assert len(case_reports) == 34

queue = json.loads((results / "topup-candidate-order.json").read_text())
fixed = json.loads((results / "llama.cpp-pinned-sample-audit.json").read_text())
availability = json.loads((results / "llama-topup-first100-availability.json").read_text())
item = next(x for x in queue["repos"] if x["repo"] == "llama.cpp")
assert item["pin"] == fixed["pin"] == availability["pin"]
assert len([e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]) == 136
assert all(x["commit"] == item["order"][x["draw"] - 1]["commit"] for x in availability["items"])
available_first100 = {x["draw"]: x for x in availability["items"]}


def git(repo, *args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


case = root / "history-eq/gpu/llama.cpp/b47ab7b8"
proof = json.loads((case / "result.json").read_text())
fixed_case = next(e for e in fixed["entries"] if e["commit"] == proof["commit"])
assert fixed_case["verdict"] == "UNSUPPORTED"
assert proof["source_blobs"] == {
    side: git(repos[0], "rev-parse", proof["commit"] + ("^:" if side == "old" else ":") +
              "ggml/src/ggml-backend.cpp").stdout.strip()
    for side in ("old", "new")}
for side in ("old", "new"):
    assert proof[f"{side}_ir_sha256"] == hashlib.sha256((case / f"{side}.ll").read_bytes()).hexdigest()
    assert proof["model_sha256"][side] == hashlib.sha256((case / f"{side}.cpp").read_bytes()).hexdigest()
for name, result in proof["checks"].items():
    log = case / f"{name}.log"
    assert result["log_sha256"] == hashlib.sha256(log.read_bytes()).hexdigest()
    assert result["outcome"] in log.read_text()
fixed_case.update({"checker_status": "checked", "checker_target": "Alive2 internal-state projection; Volta host path unsupported",
                   "coverage": "exact historical ggml_backend_sched_synchronize cur_copy state with allocated versus unallocated graphs; backend callback modeled common; tensor outputs unverified",
                   "reason": "Alive2 refutes equality of cur_copy when is_alloc=true and proves equality when false; Volta does not handle the host scheduler.",
                   "evidence": "history-eq/gpu/llama.cpp/b47ab7b8/README.md"})

probe_case = root / "history-eq/gpu/llama.cpp/d1e35564"
probe = json.loads((probe_case / "toolchain-result.json").read_text())
fixed_probe = next(e for e in fixed["entries"] if e["commit"] == probe["commit"])
assert fixed_probe["verdict"] == "UNSUPPORTED" and fixed_probe["checker_status"] == "not_run"
assert probe["changed_paths"] == ["ggml/src/ggml-cuda/argsort.cu", "ggml/src/ggml-cuda/top-k.cu"]
assert probe["control"]["exit_code"] == 0 and probe["target"]["exit_code"] != 0
assert all(f'has no member "{name}"' in (probe_case / "target-compile.log").read_text()
           for name in ("make_strided_iterator", "make_counting_iterator"))
fixed_probe.update({"toolchain_probe_status": "executed; equivalence checker not run",
                    "reason": "Exact-source audit confirms offset-kernel to iterator/CUB graph change; the installed CUDA 12.8 CCCL lacks both iterator constructors, while a CUB control compiles. Volta cannot compare the multi-stage old/new host calls.",
                    "evidence": "history-eq/gpu/llama.cpp/d1e35564/README.md"})

dispatch_case = root / "history-eq/gpu/llama.cpp/2b562109"
dispatch = json.loads((dispatch_case / "result.json").read_text())
fixed_dispatch = next(e for e in fixed["entries"] if e["commit"] == dispatch["commit"])
assert (fixed_dispatch["verdict"], fixed_dispatch["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert dispatch["verdict"] == "NOT_EQUIV" and dispatch["witness"] == {
    "type": "GGML_TYPE_Q2_K", "cc": 890, "ne11": 5,
    "old_should_use_mmvq": True, "new_should_use_mmvq": False}
assert dispatch["checks"] == {f"cc{cc}/{direction}": outcome
                              for cc, outcome in ((890, "incorrect"), (700, "correct"))
                              for direction in ("old_to_new", "new_to_old")}
for side in ("old", "new"):
    for cc in (890, 700):
        assert dispatch["model_sha256"][f"{side}-cc{cc}"] == hashlib.sha256(
            (dispatch_case / f"{side}-cc{cc}.cpp").read_bytes()).hexdigest()
for check, outcome in dispatch["checks"].items():
    cc, direction = check.split("/")
    log = (dispatch_case / f"{cc}-{direction}.log").read_text()
    assert f"1 {outcome} transformations" in log and "0 Alive2 errors" in log
fixed_dispatch.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                       "checker_target": "Alive2 exact-source NVIDIA host routing projection",
                       "coverage": dispatch["scope"],
                       "reason": "On Ada CC 890, Q2_K batch=5 changes the MMVQ routing helper return from true to false; final tensor values are unverified.",
                       "evidence": "history-eq/gpu/llama.cpp/2b562109/README.md"})

env_case = root / "history-eq/gpu/llama.cpp/a83c73a1"
env_proof = json.loads((env_case / "result.json").read_text())
fixed_env = next(e for e in fixed["entries"] if e["commit"] == env_proof["commit"])
assert (fixed_env["verdict"], fixed_env["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert env_proof["verdict"] == "NOT_EQUIV" and env_proof["witness"]["old_setenv_calls"] == 0
assert env_proof["witness"]["new_setenv_calls"] == 1
assert env_proof["checks"] == {f"{mode}/{direction}": outcome
                               for mode, outcome in (("symbolic", "incorrect"), ("present", "correct"))
                               for direction in ("old_to_new", "new_to_old")}
for side in ("old", "new"):
    for mode in ("symbolic", "present"):
        assert env_proof["model_sha256"][f"{side}-{mode}"] == hashlib.sha256(
            (env_case / f"{side}-{mode}.cpp").read_bytes()).hexdigest()
for check, outcome in env_proof["checks"].items():
    mode, direction = check.split("/")
    log = (env_case / f"{mode}-{direction}.log").read_text()
    assert f"1 {outcome} transformations" in log and "0 Alive2 errors" in log
fixed_env.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                  "checker_target": "Alive2 exact-source Linux environment-call projection",
                  "coverage": env_proof["scope"],
                  "reason": "On first CUDA registry initialization with CUDA_SCALE_LAUNCH_QUEUES absent, the new version calls setenv and the old one does not; tensor outputs are unverified.",
                  "evidence": "history-eq/gpu/llama.cpp/a83c73a1/README.md"})

rpc_case = root / "history-eq/gpu/llama.cpp/553a5c3a"
rpc = json.loads((rpc_case / "result.json").read_text())
fixed_rpc = next(e for e in fixed["entries"] if e["commit"] == rpc["commit"])
assert (fixed_rpc["verdict"], fixed_rpc["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert rpc["verdict"] == "NOT_EQUIV" and rpc["witness"]["old_hello_major"] == 1
assert rpc["witness"]["new_hello_major"] == 2
assert rpc["checks"] == {f"{function}/{direction}": outcome
                         for function, outcome in (("target_major", "incorrect"), ("target_minor", "correct"))
                         for direction in ("old_to_new", "new_to_old")}
for side in ("old", "new"):
    assert rpc["model_sha256"][side] == hashlib.sha256((rpc_case / f"{side}.cpp").read_bytes()).hexdigest()
for check, outcome in rpc["checks"].items():
    function, direction = check.split("/")
    log = (rpc_case / f"{function}-{direction}.log").read_text()
    assert f"1 {outcome} transformations" in log and "0 Alive2 errors" in log
fixed_rpc.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                  "checker_target": "Alive2 exact-source RPC HELLO field projection",
                  "coverage": rpc["scope"],
                  "reason": "Successful RPC HELLO responses carry protocol major version 1 before and 2 after; tensor values are unverified.",
                  "evidence": "history-eq/gpu/llama.cpp/553a5c3a/README.md"})

vk_case = root / "history-eq/gpu/llama.cpp/892e3c33"
vk = json.loads((vk_case / "result.json").read_text())
fixed_vk = next(e for e in fixed["entries"] if e["commit"] == vk["commit"])
assert (fixed_vk["verdict"], fixed_vk["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert vk["verdict"] == "NOT_EQUIV" and vk["changed_paths"] == [
    "ggml/src/ggml-vulkan/ggml-vulkan.cpp"]
assert vk["native"]["intel_windows_q8"] == {"old": True, "new": False}
assert all(pair == {"old": True, "new": True} for name, pair in vk["native"].items()
           if name != "intel_windows_q8")
assert vk["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
for side in ("old", "new"):
    assert vk["ir_sha256"][side] == hashlib.sha256((vk_case / f"{side}.ll").read_bytes()).hexdigest()
for direction in vk["checks"]:
    log = (vk_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_vk.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                 "checker_target": "Alive2 exact-source Vulkan host routing projection",
                 "coverage": vk["scope"],
                 "reason": "Intel Windows Q8_0 with n=1 and k=4096 changes the MMVQ routing result from true to false; final tensor values are unverified.",
                 "evidence": "history-eq/gpu/llama.cpp/892e3c33/README.md"})

rdna_case = root / "history-eq/gpu/llama.cpp/96892952"
rdna = json.loads((rdna_case / "result.json").read_text())
fixed_rdna = next(e for e in fixed["entries"] if e["commit"] == rdna["commit"])
assert (fixed_rdna["verdict"], fixed_rdna["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert rdna["verdict"] == "NOT_EQUIV" and rdna["changed_paths"] == ["ggml/src/ggml-cuda/mmq.cu"]
assert rdna["native"]["q2_k_large_batch"] == {"old": True, "new": False}
assert all(pair == {"old": True, "new": True} for name, pair in rdna["native"].items()
           if name != "q2_k_large_batch")
assert rdna["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
for side in ("old", "new"):
    assert rdna["ir_sha256"][side] == hashlib.sha256((rdna_case / f"{side}.ll").read_bytes()).hexdigest()
for direction in rdna["checks"]:
    log = (rdna_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_rdna.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                   "checker_target": "Alive2 exact-source RDNA3 host routing projection",
                   "coverage": rdna["scope"],
                   "reason": "RDNA3 Q2_K at ne11=256 and n_experts=1 changes MMQ routing from true to false; final tensor values are unverified.",
                   "evidence": "history-eq/gpu/llama.cpp/96892952/README.md"})

opencl_case = root / "history-eq/gpu/llama.cpp/39eab74a"
opencl = json.loads((opencl_case / "result.json").read_text())
fixed_opencl = next(e for e in fixed["entries"] if e["commit"] == opencl["commit"])
assert (fixed_opencl["verdict"], fixed_opencl["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert opencl["verdict"] == "NOT_EQUIV" and opencl["changed_paths"] == [
    "ggml/src/ggml-opencl/ggml-opencl.cpp"]
assert opencl["q6_k"] == {"block_elements": 256, "block_bytes": 210,
                         "witness_nbytes": 275251200, "threshold_bytes": 268435456}
assert opencl["native"]["narrow_large_a6x"] == {"old": False, "new": True}
assert all(pair["old"] == pair["new"] for name, pair in opencl["native"].items()
           if name != "narrow_large_a6x")
assert opencl["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
for name, digest in opencl["ir_sha256"].items():
    assert digest == hashlib.sha256((opencl_case / name).read_bytes()).hexdigest()
for direction in opencl["checks"]:
    log = (opencl_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_opencl.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                     "checker_target": "Alive2 exact-source OpenCL host routing projection",
                     "coverage": opencl["scope"],
                     "reason": "Contiguous Q6_K 1024x327680 on A6X changes the flat-GEMV route from false to true; final tensor values are unverified.",
                     "evidence": "history-eq/gpu/llama.cpp/39eab74a/README.md"})
queue_case = root / "history-eq/gpu/llama.cpp/740a447f"
queue_proof = json.loads((queue_case / "result.json").read_text())
fixed_queue = next(e for e in fixed["entries"] if e["commit"] == queue_proof["commit"])
assert (fixed_queue["verdict"], fixed_queue["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert queue_proof["verdict"] == "NOT_EQUIV" and queue_proof["changed_paths"] == [
    "ggml/src/ggml-vulkan/ggml-vulkan.cpp"]
assert queue_proof["native"] == {
    "amd_gcn_default": {"old": 0, "new": 1},
    "amd_nongcn_default": {"old": 0, "new": 3},
    "amd_nongcn_optin": {"old": 0, "new": 0},
    "nonamd_default": {"old": 1, "new": 1},
}
assert queue_proof["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
for side, digest in queue_proof["model_sha256"].items():
    assert digest == hashlib.sha256((queue_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in queue_proof["checks"]:
    log = (queue_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_queue.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                    "checker_target": "Alive2 exact-source Vulkan queue-policy projection",
                    "coverage": queue_proof["scope"],
                    "reason": "AMD default queue-policy outputs change; tensor values are unverified.",
                    "evidence": "history-eq/gpu/llama.cpp/740a447f/README.md"})
scales_case = root / "history-eq/gpu/llama.cpp/f9f33654"
scales = json.loads((scales_case / "result.json").read_text())
fixed_scales = next(e for e in fixed["entries"] if e["commit"] == scales["commit"])
assert (fixed_scales["verdict"], fixed_scales["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert scales["verdict"] == "EQUIV_PARTIAL" and scales["changed_paths"] == [
    "ggml/src/ggml-vulkan/vulkan-shaders/mul_mat_vecq_funcs.glsl",
    "ggml/src/ggml-vulkan/vulkan-shaders/mul_mm_funcs.glsl"]
assert scales["checks"] == {"old_to_new": "correct", "new_to_old": "correct"}
for side, digest in scales["model_sha256"].items():
    assert digest == hashlib.sha256((scales_case / f"{side}.c").read_bytes()).hexdigest()
for direction in scales["checks"]:
    log = (scales_case / f"alive-{direction}.log").read_text()
    assert "1 correct transformations" in log and "0 Alive2 errors" in log
fixed_scales.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                     "checker_target": "Alive2 source-audited Vulkan Q4_K arithmetic projection",
                     "coverage": scales["scope"],
                     "reason": "Fully initialized Q4_K scale/min bytes agree at all legal indices under the recorded packed-word representation; complete shaders are unverified.",
                     "evidence": "history-eq/gpu/llama.cpp/f9f33654/README.md"})
fastdiv_case = root / "history-eq/gpu/llama.cpp/2759916d"
fastdiv = json.loads((fastdiv_case / "result.json").read_text())
fixed_fastdiv = next(e for e in fixed["entries"] if e["commit"] == fastdiv["commit"])
assert (fixed_fastdiv["verdict"], fixed_fastdiv["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("UNKNOWN", "checked")}
assert fastdiv["verdict"] == "NOT_EQUIV" and fastdiv["whole_commit_verdict"] == "UNKNOWN"
assert fastdiv["witness"] == {"divisor": 3, "n": 0xc0000000, "mp": 1431655766,
                              "L": 2, "old_quotient": 0x40000000, "new_quotient": 0}
assert fastdiv["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
for side, digest in fastdiv["model_sha256"].items():
    assert digest == hashlib.sha256((fastdiv_case / f"{side}.c").read_bytes()).hexdigest()
for direction in fastdiv["checks"]:
    log = (fastdiv_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_fastdiv.update({"verdict": "UNKNOWN", "checker_status": "checked",
                      "checker_target": "Alive2 source-audited Vulkan fastdiv arithmetic projection",
                      "coverage": fastdiv["scope"],
                      "reason": "The 32-bit quotient formulas differ at d=3, n=0xC0000000; reachable shader and tensor-output difference unverified.",
                      "evidence": "history-eq/gpu/llama.cpp/2759916d/README.md"})
webgpu_case = root / "history-eq/gpu/llama.cpp/c3c15053"
webgpu = json.loads((webgpu_case / "result.json").read_text())
fixed_webgpu = next(e for e in fixed["entries"] if e["commit"] == webgpu["commit"])
assert (fixed_webgpu["verdict"], fixed_webgpu["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert webgpu["verdict"] == "NOT_EQUIV" and webgpu["changed_paths"] == [
    "ggml/src/ggml-webgpu/ggml-webgpu-shader-lib.hpp"]
assert webgpu["native"] == {
    "f32_three_rows": {"old": 0, "new": 1},
    "f32_four_rows": {"old": 1, "new": 1},
    "f16_three_rows": {"old": 0, "new": 1},
    "unaligned_width": {"old": 0, "new": 0},
    "other_type": {"old": 0, "new": 0},
}
assert webgpu["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
for side, digest in webgpu["model_sha256"].items():
    assert digest == hashlib.sha256((webgpu_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in webgpu["checks"]:
    log = (webgpu_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_webgpu.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                     "checker_target": "Alive2 exact-source WebGPU pipeline-key projection",
                     "coverage": webgpu["scope"],
                     "reason": "F32/F16 widths 128 with three output rows change the fast-matmul vectorized key; WGSL tensor values are unverified.",
                     "evidence": "history-eq/gpu/llama.cpp/c3c15053/README.md"})
mmq_case = root / "history-eq/gpu/llama.cpp/66c4f9de"
mmq = json.loads((mmq_case / "result.json").read_text())
fixed_mmq = next(e for e in fixed["entries"] if e["commit"] == mmq["commit"])
assert (fixed_mmq["verdict"], fixed_mmq["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert mmq["verdict"] == "EQUIV_PARTIAL" and mmq["changed_paths"] == [
    "ggml/src/ggml-cuda/mmq.cuh"]
assert mmq["checks"] == {f"bytes{width}/{direction}": "4 correct"
                         for width in (8, 16) for direction in ("old_to_new", "new_to_old")}
for side, digest in mmq["model_sha256"].items():
    assert digest == hashlib.sha256((mmq_case / f"{side}.cpp").read_bytes()).hexdigest()
for check in mmq["checks"]:
    log = (mmq_case / f"{check.replace('/', '/alive-')}.log").read_text()
    assert "4 correct transformations" in log and "0 Alive2 errors" in log
fixed_mmq.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                  "checker_target": "Alive2 source-locked CUDA/HIP q4 MMQ load projection",
                  "coverage": mmq["scope"],
                  "reason": "Both q4 paths produce the same eight initialized u words for 8/16-byte copy widths; full kernels and tensor outputs remain unverified.",
                  "evidence": "history-eq/gpu/llama.cpp/66c4f9de/README.md"})
route_case = root / "history-eq/gpu/llama.cpp/50b7f076"
route = json.loads((route_case / "result.json").read_text())
fixed_route = next(e for e in fixed["entries"] if e["commit"] == route["commit"])
assert (fixed_route["verdict"], fixed_route["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert route["verdict"] == "NOT_EQUIV" and route["changed_paths"] == [
    "ggml/src/ggml-vulkan/ggml-vulkan.cpp",
    "ggml/src/ggml-vulkan/vulkan-shaders/mul_mat_vec_base.glsl"]
assert route["checks"] == {"old_to_new": "incorrect", "new_to_old": "incorrect"}
assert route["native"] == {
    "1": {"old": True, "new": True}, "2": {"old": False, "new": True},
    "8": {"old": False, "new": True}, "9": {"old": False, "new": False}}
for side, digest in route["model_sha256"].items():
    assert digest == hashlib.sha256((route_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in route["checks"]:
    log = (route_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_route.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                    "checker_target": "Alive2 exact-source Vulkan mat-vec route projection",
                    "coverage": route["scope"],
                    "reason": "F32 with two expert IDs changes the mat-vec route from false to true; complete shaders and tensor values remain unverified.",
                    "evidence": "history-eq/gpu/llama.cpp/50b7f076/README.md"})
opencl_case = root / "history-eq/gpu/llama.cpp/ece0f5c1"
opencl = json.loads((opencl_case / "result.json").read_text())
fixed_opencl = next(e for e in fixed["entries"] if e["commit"] == opencl["commit"])
assert (fixed_opencl["verdict"], fixed_opencl["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert opencl["verdict"] == "EQUIV_PARTIAL" and opencl["changed_paths"] == [
    "ggml/src/ggml-opencl/ggml-opencl.cpp", "ggml/src/ggml-opencl/kernels/set_rows.cl"]
assert opencl["proof_sha256"] == hashlib.sha256(
    (opencl_case / "Kuiper.Llama.OpenCL.FastDiv.fst").read_bytes()).hexdigest()
assert "All verification conditions discharged successfully" in (opencl_case / "kuiper.log").read_text()
fixed_opencl.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                     "checker_target": "Kuiper-bundled F* source-audited OpenCL fastmod lemma",
                     "coverage": opencl["scope"],
                     "reason": "The old and new set_rows quotient/remainder formulas agree at divisor 3 for every nonnegative 31-bit group index; whole kernels remain unverified.",
                     "evidence": "history-eq/gpu/llama.cpp/ece0f5c1/README.md"})
gdn_case = root / "history-eq/gpu/llama.cpp/5c200e0c"
gdn = json.loads((gdn_case / "result.json").read_text())
fixed_gdn = next(e for e in fixed["entries"] if e["commit"] == gdn["commit"])
assert (fixed_gdn["verdict"], fixed_gdn["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert gdn["verdict"] == "NOT_EQUIV" and gdn["changed_paths"] == [
    "ggml/src/ggml-vulkan/ggml-vulkan.cpp"]
assert gdn["checks"] == {
    f"{label}/{direction}": outcome
    for label, outcome in (("intel128", "incorrect"), ("other64", "correct"))
    for direction in ("old_to_new", "new_to_old")}
for side, digest in gdn["model_sha256"].items():
    assert digest == hashlib.sha256((gdn_case / f"{side}.cpp").read_bytes()).hexdigest()
for check, outcome in gdn["checks"].items():
    label, direction = check.split("/")
    log = (gdn_case / f"alive-{label}-{direction}.log").read_text()
    assert f"1 {outcome} transformations" in log and "0 Alive2 errors" in log
fixed_gdn.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                  "checker_target": "Alive2 exact-source Vulkan GDN pipeline-selection projection",
                  "coverage": gdn["scope"],
                  "reason": "Intel-tagged subgroup32/S_V128 selects different subgroup, lane, and reduction parameters; tensor values remain unverified.",
                  "evidence": "history-eq/gpu/llama.cpp/5c200e0c/README.md"})
copy_case = root / "history-eq/gpu/llama.cpp/0ed235ea"
copy = json.loads((copy_case / "result.json").read_text())
fixed_copy = next(e for e in fixed["entries"] if e["commit"] == copy["commit"])
assert (fixed_copy["verdict"], fixed_copy["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert copy["verdict"] == "EQUIV_PARTIAL" and copy["changed_paths"] == [
    "ggml/src/ggml-cuda/cpy.cu", "ggml/src/ggml-openvino/ggml-openvino.cpp",
    "tests/test-backend-ops.cpp"]
assert copy["checks"] == {"old_to_new": "correct", "new_to_old": "correct"}
for side, digest in copy["model_sha256"].items():
    assert digest == hashlib.sha256((copy_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in copy["checks"]:
    log = (copy_case / f"alive-{direction}.log").read_text()
    assert "1 correct transformations" in log and "0 Alive2 errors" in log
fixed_copy.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                   "checker_target": "Alive2 exact-source CUDA pitched-copy byte-address projection",
                   "coverage": copy["scope"],
                   "reason": "The old scalar path and new 2D path address identical bytes for the upstream F32 strided-destination test; CUDA execution and values remain unverified.",
                   "evidence": "history-eq/gpu/llama.cpp/0ed235ea/README.md"})
set_rows_case = root / "history-eq/gpu/llama.cpp/03ea0417"
set_rows = json.loads((set_rows_case / "result.json").read_text())
fixed_set_rows = next(e for e in fixed["entries"] if e["commit"] == set_rows["commit"])
assert (fixed_set_rows["verdict"], fixed_set_rows["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert set_rows["verdict"] == "NOT_EQUIV" and set_rows["checks"] == {
    "old_to_new": "incorrect", "new_to_old": "incorrect"}
for side, digest in set_rows["model_sha256"].items():
    assert digest == hashlib.sha256((set_rows_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in set_rows["checks"]:
    log = (set_rows_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_set_rows.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                       "checker_target": "Alive2 exact-source WebGPU set_rows source-value projection",
                       "coverage": set_rows["scope"],
                       "reason": "A four-element F32 view at byte offset 4 selects the vector shader, which reads the wrong first source element; 0/1 data yields a different F16 result.",
                       "evidence": "history-eq/gpu/llama.cpp/03ea0417/README.md"})
flat_case = root / "history-eq/gpu/llama.cpp/1548a240"
flat = json.loads((flat_case / "result.json").read_text())
fixed_flat = next(e for e in fixed["entries"] if e["commit"] == flat["commit"])
assert (fixed_flat["verdict"], fixed_flat["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert flat["verdict"] == "EQUIV_PARTIAL" and flat["checks"] == {
    "old_to_new": "correct", "new_to_old": "correct"}
assert flat["opencl_syntax"] == {"old": "pass", "new": "pass"}
for side, digest in flat["model_sha256"].items():
    assert digest == hashlib.sha256((flat_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in flat["checks"]:
    log = (flat_case / f"alive-{direction}.log").read_text()
    assert "1 correct transformations" in log and "0 Alive2 errors" in log
fixed_flat.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                   "checker_target": "Alive2 exact-source OpenCL flat-copy byte-address projection",
                   "coverage": flat["scope"],
                   "reason": "The old row kernel and new flat kernel address identical bytes for every element of a contiguous single F32 row, including tails; OpenCL execution remains unverified.",
                   "evidence": "history-eq/gpu/llama.cpp/1548a240/README.md"})
fusion_case = root / "history-eq/gpu/llama.cpp/5a460dea"
fusion = json.loads((fusion_case / "result.json").read_text())
fixed_fusion = next(e for e in fixed["entries"] if e["commit"] == fusion["commit"])
assert (fixed_fusion["verdict"], fixed_fusion["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert fusion["verdict"] == "NOT_EQUIV" and fusion["checks"] == {
    "old_to_new": "incorrect", "new_to_old": "incorrect"}
assert fusion["guard"] == "fires and skips CPY despite later tail consumer"
assert "guard_fires=1 skipped_nodes=3 later_tail_consumer=1" in (
    fusion_case / "guard-native.log").read_text()
assert fusion["guard_sha256"] == hashlib.sha256((fusion_case / "guard.cpp").read_bytes()).hexdigest()
for side, digest in fusion["model_sha256"].items():
    assert digest == hashlib.sha256((fusion_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in fusion["checks"]:
    log = (fusion_case / f"alive-{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_fusion.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                     "checker_target": "Native exact-source CUDA fusion guard + Alive2 graph-output projection",
                     "coverage": fusion["scope"],
                     "reason": "The guard skips CPY although a later ADD reads the GDN snapshot tail; old writes it and new fused path does not, giving different F32 output in the source model.",
                     "evidence": "history-eq/gpu/llama.cpp/5a460dea/README.md"})
vk_copy_case = root / "history-eq/gpu/llama.cpp/f549b000"
vk_copy = json.loads((vk_copy_case / "result.json").read_text())
fixed_vk_copy = next(e for e in fixed["entries"] if e["commit"] == vk_copy["commit"])
assert (fixed_vk_copy["verdict"], fixed_vk_copy["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert vk_copy["verdict"] == "EQUIV_PARTIAL" and vk_copy["changed_paths"] == [
    "ggml/src/ggml-vulkan/ggml-vulkan.cpp"]
assert vk_copy["checks"] == {"old_to_new": "correct", "new_to_old": "correct"}
for side, digest in vk_copy["model_sha256"].items():
    assert digest == hashlib.sha256((vk_copy_case / f"{side}.cpp").read_bytes()).hexdigest()
for direction in vk_copy["checks"]:
    log = (vk_copy_case / f"alive-{direction}.log").read_text()
    assert "1 correct transformations" in log and "0 Alive2 errors" in log
fixed_vk_copy.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                      "checker_target": "Alive2 source-locked Vulkan cross-device byte-effect projection",
                      "coverage": vk_copy["scope"],
                      "reason": "Both old and new paths leave identical destination bytes for the bounded cross-device copy, including host-visible and device-local destination models; Vulkan execution remains unverified.",
                      "evidence": "history-eq/gpu/llama.cpp/f549b000/README.md"})
dequant_case = root / "history-eq/gpu/llama.cpp/4064c0e3"
dequant = json.loads((dequant_case / "result.json").read_text())
fixed_dequant = next(e for e in fixed["entries"] if e["commit"] == dequant["commit"])
assert (fixed_dequant["verdict"], fixed_dequant["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert dequant["verdict"] == "EQUIV_PARTIAL" and dequant["checks"] == {"scale": "unsat", "minimum": "unsat"}
assert dequant["source_diff_sha256"] == hashlib.sha256(
    (root / "history-eq/gpu/llama.cpp/source-screening/4064c0e3.source.diff").read_bytes()).hexdigest()
fixed_dequant.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                      "checker_target": "Z3 exact-source Vulkan bitvector projection",
                      "coverage": "Q4_K/Q5_K scale and minimum-byte extraction for all legal lanes and arbitrary scale bytes; full shaders unproved",
                      "reason": "Z3 finds no difference in the historical old/new scale or minimum-byte expressions; compiled SPIR-V and tensor outputs are unverified.",
                      "evidence": "history-eq/gpu/llama.cpp/4064c0e3/README.md"})
priority_case = root / "history-eq/gpu/llama.cpp/053b1539"
priority = json.loads((priority_case / "result.json").read_text())
fixed_priority = next(e for e in fixed["entries"] if e["commit"] == priority["commit"])
assert (fixed_priority["verdict"], fixed_priority["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("NOT_EQUIV", "checked")}
assert priority["verdict"] == "NOT_EQUIV" and priority["checks"] == {
    "old_to_new": "incorrect", "new_to_old": "incorrect"}
assert priority["witness"] == {"prio": "GGML_SCHED_PRIO_NORMAL",
                               "SetThreadInformation_result": False,
                               "old_return": True, "new_return": False}
assert priority["source_diff_sha256"] == hashlib.sha256(
    (root / "history-eq/gpu/llama.cpp/source-screening/053b1539.source.diff").read_bytes()).hexdigest()
for side, digest in priority["ir_sha256"].items():
    assert digest == hashlib.sha256((priority_case / f"{side}.ll").read_bytes()).hexdigest()
for direction in priority["checks"]:
    log = (priority_case / f"{direction}.log").read_text()
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
fixed_priority.update({"verdict": "NOT_EQUIV", "checker_status": "checked",
                       "checker_target": "Alive2 exact-source Windows priority-return projection",
                       "coverage": priority["scope"],
                       "reason": "At normal priority, a failed SetThreadInformation leaves the old helper returning true and makes the new helper return false; threadpool and tensor outputs are unverified.",
                       "evidence": "history-eq/gpu/llama.cpp/053b1539/README.md"})
im2col_case = root / "history-eq/gpu/llama.cpp/581650b7"
im2col = json.loads((im2col_case / "result.json").read_text())
fixed_im2col = next(e for e in fixed["entries"] if e["commit"] == im2col["commit"])
assert (fixed_im2col["verdict"], fixed_im2col["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert im2col["verdict"] == "EQUIV_PARTIAL"
assert len(im2col["checks"]["index_state_induction"]) == 12
assert all(x["outcome"] == "unsat" for x in im2col["checks"]["index_state_induction"])
assert im2col["checks"]["valid_prefix"] == im2col["checks"]["destination_address"] == "unsat"
assert im2col["source_diff_sha256"] == hashlib.sha256(
    (root / "history-eq/gpu/llama.cpp/source-screening/581650b7.source.diff").read_bytes()).hexdigest()
fixed_im2col.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                     "checker_target": "Z3 exact-source Vulkan im2col address projection",
                     "coverage": im2col["scope"],
                     "reason": "Z3 proves the old/new coordinate recurrence and destination address for twelve shapes; source reads require the recorded signed-stride premise, and full SPIR-V remains unverified.",
                     "evidence": "history-eq/gpu/llama.cpp/581650b7/README.md"})
metal_case = root / "history-eq/gpu/llama.cpp/02a6a82a"
metal = json.loads((metal_case / "result.json").read_text())
fixed_metal = next(e for e in fixed["entries"] if e["commit"] == metal["commit"])
assert (fixed_metal["verdict"], fixed_metal["checker_status"]) in {
    ("UNSUPPORTED", "not_run"), ("EQUIV_PARTIAL", "checked")}
assert metal["verdict"] == "EQUIV_PARTIAL" and len(metal["checks"]) == 3
assert all(x["mapping"] == x["destination_injective"] == "unsat" for x in metal["checks"])
assert metal["source_diff_sha256"] == hashlib.sha256(
    (root / "history-eq/gpu/llama.cpp/source-screening/02a6a82a.source.diff").read_bytes()).hexdigest()
fixed_metal.update({"verdict": "EQUIV_PARTIAL", "checker_status": "checked",
                    "checker_target": "Z3 exact-source Metal im2col launch/output projection",
                    "coverage": metal["scope"],
                    "reason": "Z3 proves every output address and source read or zero-fill agrees in three bounded launch shapes; compiled Metal execution remains unverified.",
                    "evidence": "history-eq/gpu/llama.cpp/02a6a82a/README.md"})
fixed["summary"]["checked_optimizations"] = sum(e.get("verdict") is not None for e in fixed["entries"]
                                                  if e["screen"] == "confirmed_optimization")
fixed["summary"]["pending_checker_optimizations"] = sum(e.get("verdict") is None for e in fixed["entries"]
                                                         if e["screen"] == "confirmed_optimization")
fixed["summary"]["checker_executed_optimizations"] = sum(e["checker_status"] == "checked" for e in fixed["entries"]
                                                       if e["screen"] == "confirmed_optimization")
fixed["summary"]["ledger_marked_not_run_confirmed"] = sum(e["checker_status"] == "not_run" for e in fixed["entries"]
                                                       if e["screen"] == "confirmed_optimization")


entries = []
lines = [
    "# llama.cpp seeded optimization top-up", "",
    "The first 115 remaining performance-keyword candidates were reviewed in deterministic draw order "
    "using their exact local commit messages and changed paths. The first 64 confirmed optimizations "
    "supplement the fixed sample of 136. This is random within the keyword-matching candidate population, "
    "not a uniform draw of every historical optimization.", "",
    "Except `19a5a3ed`, `50d22279`, `ceef6b52`, `2cd43f49`, `77d5e9a7`, `8faa1d4d`, `5eff6ec9`, `73ab7599`, `748d4225`, the `3b4fca11` compile gate, the Alive2 rejection for `ca484406`, and the inconclusive Volta runs for `83b3b1c2` and `8b11deea`, new verdicts below are "
    "checker-scope classifications, not executed old/new proofs. "
    "`UNSUPPORTED` means the selected NVIDIA PTX/LLVM-IR checker relation does not represent the changed "
    "backend or behavior, or a selected target fails to compile before checker input exists; `UNKNOWN` "
    "means a plausible relation remains unchecked, exact source is missing, "
    "or the executed checker did not reach equivalence. "
    "No official historical benchmark score is inferred from a commit message.", "",
    "| Draw | Commit | Subject | Screen | Source | Verdict |", "|---:|---|---|---|---|---|",
]
for draw, candidate in enumerate(item["order"][:115], 1):
    commit = candidate["commit"]
    repo = next((r for r in repos if git(r, "cat-file", "-e", commit).returncode == 0), None)
    assert repo is not None, (draw, commit)
    obj = git(repo, "cat-file", "-p", commit)
    assert obj.returncode == 0 and "\n\n" in obj.stdout, (draw, commit)
    message = obj.stdout.split("\n\n", 1)[1]
    assert " ".join(candidate["subject"].split()) in " ".join(message.split()), (draw, commit)
    changed = git(repo, "diff-tree", "--raw", "--no-abbrev", "--no-commit-id", "-r", commit)
    assert changed.returncode == 0 and changed.stdout.strip(), (draw, commit)
    paths = [line.split("\t", 1)[1] for line in changed.stdout.splitlines()]
    if draw <= 100:
        source_status = "changed_blobs_available" if available_first100[draw]["status"] == "complete" else "missing_changed_blob"
    else:
        blobs = [oid for line in changed.stdout.splitlines() for oid in line.split("\t", 1)[0].split()[2:4]
                 if oid.strip("0")]
        missing = [oid for oid in blobs if all(git(r, "cat-file", "-e", oid).returncode for r in repos)]
        source_status = "missing_changed_blob" if missing else "changed_blobs_available"
    entry = {**candidate, "draw": draw, "changed_paths": paths, "source_status": source_status,
             "evidence": str(evidence.relative_to(root))}
    if draw in performance:
        entry["screen"] = "confirmed_optimization"
        entry["reason"] = "Commit message and changed source identify a faster existing path."
        if draw == 5:
            entry.update({"checker_status": "checked", "checker_target": "Alive2 and exact-header native C",
                          "verdict": "NOT_EQUIV", "reason": "SIMD vectorization changes the unrestricted add-one helper on valid partially overlapping arrays.",
                          "coverage": "ggml_vec_add1_f32 function-level native counterexample; separate bidirectional Alive2 equality for ggml_vec_set_f32 n=32",
                          "evidence": "history-eq/gpu/llama.cpp/19a5a3ed/README.md"})
        elif draw == 6:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/50d22279/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "NOT_EQUIV" and proof["witness"]["old"] == 2.0 and proof["witness"]["new"] == 0.0
            assert proof["s390_llvm_built"] and "1 incorrect transformations" in proof["alive2_tail"]
            entry.update({"checker_status": "checked", "checker_target": "Alive2 and source-mapped native witness",
                          "verdict": "NOT_EQUIV", "reason": "The s390x four-lane FP32 reduction changes rounding order and returns 2 before versus 0 after on a finite macro input.",
                          "coverage": "GGML_F32x4_REDUCE macro with first register [33554432,-33554432,1,1] and seven zero registers; complete callers unproved",
                          "evidence": "history-eq/gpu/llama.cpp/50d22279/result.json"})
        elif draw == 17:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/ceef6b52/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "NOT_EQUIV"
            assert "TRACE set=1 mem=1 flags=0 devices=1" in proof["runs"]["old"]
            assert "TRACE set=0 mem=0 flags=0 devices=1" in proof["runs"]["new"]
            entry.update({"checker_status": "checked", "checker_target": "source-extracted native C++ witness",
                          "verdict": "NOT_EQUIV", "reason": "A successful one-device initialization removes cudaSetDevice/cudaMemGetInfo calls and the free-memory diagnostic.",
                          "coverage": "complete ggml_cuda_init under NVIDIA/no-VMM stubs, CC 8.0 device; external-call/log trace only, not tensor outputs",
                          "evidence": "history-eq/gpu/llama.cpp/ceef6b52/result.json"})
        elif draw == 38:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/77d5e9a7/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "EQUIV_PARTIAL"
            assert set(proof["core_checks"]) == set(proof["backend_checks"]) == {"forward", "backward"}
            assert all("8 correct transformations\n  0 incorrect transformations\n  0 failed-to-prove transformations\n  0 Alive2 errors" in output
                       for checks in (proof["core_checks"], proof["backend_checks"], proof["fp16_backend_checks"])
                       for output in checks.values())
            assert set(proof["fp16_backend_checks"]) == {"forward", "backward"}
            assert "Unknown libcall: @llvm.x86.vcvtps2ph.128" in proof["fp16_core_diagnostic"]
            entry.update({"checker_status": "checked", "checker_target": "Alive2",
                          "verdict": "EQUIV_PARTIAL",
                          "coverage": "n=8 AVX2/no-AVX512F: old BF16 row versus new core/backend (32 checks); old FP32-to-FP16 row versus new CPU backend (16 checks, F16C); new FP16 core path unproved",
                          "evidence": "history-eq/gpu/llama.cpp/77d5e9a7/result.json"})
        elif draw == 41:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/2cd43f49/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "NOT_EQUIV"
            assert proof["runs"]["old"]["f16_f32"] == "handled=1 C0=0 C7=0"
            assert proof["runs"]["new"]["f16_f32"] == "handled=0 C0=-1 C7=-1"
            assert all(proof["runs"][side]["f32_f32_control"] == "handled=1 C0=0 C7=0"
                       for side in ("old", "new"))
            entry.update({"checker_status": "checked", "checker_target": "exact-source native C++ witness",
                          "verdict": "NOT_EQUIV", "reason": "Direct llamafile_sgemm F16×F32 call changes from handled/output written to declined/output untouched under AVX2.",
                          "coverage": "m=4,n=2,k=8, one thread, zero F16 A and one-valued F32 B; full ggml caller fallback unproved",
                          "evidence": "history-eq/gpu/llama.cpp/2cd43f49/result.json"})
        elif draw == 49:
            entry.update({"checker_status": "checked", "checker_target": "Volta",
                          "verdict": "UNKNOWN", "reason": "Volta analyzes the old F32 CUB kernel but reports a shared-memory race in the new specialization before comparing outputs.",
                          "coverage": "one 256-thread CTA, one 1024-element F32 row; no equivalence verdict",
                          "evidence": "history-eq/gpu/llama.cpp/83b3b1c2/README.md"})
        elif draw == 68:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/ca484406/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "UNSUPPORTED" and proof["checker_status"] == "checked"
            assert "Unsupported type: <vscale x 4 x half>" in proof["alive2"]
            assert set(proof["compilation"]) == {"old", "new"}
            entry.update({"checker_status": "checked", "checker_target": "Alive2",
                          "verdict": "UNSUPPORTED", "reason": "Alive2 rejects the new RISC-V scalable half-vector type before comparing outputs.",
                          "coverage": "historical RVV/Zvfh row conversion, n=8, one symbolic FP16 word repeated, first FP32 output bits; both objects build",
                          "evidence": "history-eq/gpu/llama.cpp/ca484406/result.json"})
        elif draw == 72:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/8faa1d4d/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "EQUIV_PARTIAL" and len(proof["checks"]) == 9
            assert {(x["dim"], x["cta"]) for x in proof["checks"] if "dim" in x} == {
                (dim, cta) for dim in (1, 2, 3) for cta in (0, 1)}
            assert all(check["stdout"].rstrip().endswith("EQUIVALENT") for check in proof["checks"])
            entry.update({"checker_status": "checked", "checker_target": "Volta",
                          "verdict": "EQUIV_PARTIAL",
                          "coverage": "non-contiguous concat: three full-output dim-0 layouts and both CTA slabs for one shape each at dims 1-3 under source-locked CTA-ID specialization; general shapes and dispatcher unproved",
                          "evidence": "history-eq/gpu/llama.cpp/8faa1d4d/result.json"})
        elif draw == 78:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/3b4fca11/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "UNSUPPORTED" and proof["unsupported_reason"] == "new-code-does-not-build"
            assert proof["checker_status"] == "compile_gate_checked"
            assert {x["side"]: x["exit_code"] == 0 for x in proof["checks"] if x["mode"] == "aix"} == {"old": True, "new": False}
            entry.update({"checker_status": "checked", "checker_target": "Clang syntax gate",
                          "verdict": "UNSUPPORTED", "unsupported_reason": "new-code-does-not-build",
                          "reason": "Optimized AIX/big-endian method fails to compile at a missing semicolon before equivalence checking.",
                          "coverage": "source-extracted tinyBLAS_Q0_PPC::matmul under _AIX; no matrix-output comparison",
                          "evidence": "history-eq/gpu/llama.cpp/3b4fca11/result.json"})
        elif draw == 80:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/8b11deea/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "UNSUPPORTED" and proof["checker"] == "Volta"
            assert all("Entries (kernels): 180" in x["parse"] for x in proof["builds"].values())
            assert "param loads with nonzero offsets are not supported" in proof["compare"]["diagnostic"]
            entry.update({"checker_status": "checked", "checker_target": "Volta",
                          "verdict": "UNSUPPORTED", "reason": "Volta stops on a nonzero-offset structure parameter load before output comparison.",
                          "coverage": "fused Q4_0 one-destination-column MMVQ kernel, one 128-thread CTA; no equivalence verdict",
                          "evidence": "history-eq/gpu/llama.cpp/8b11deea/result.json"})
        elif draw == 87:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/73ab7599/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "EQUIV_PARTIAL" and {x["direction"] for x in proof["checks"]} == {"forward", "backward"}
            assert all("8 correct transformations\n  0 incorrect transformations\n  0 failed-to-prove transformations\n  0 Alive2 errors" in x["output"] for x in proof["checks"])
            entry.update({"checker_status": "checked", "checker_target": "Alive2",
                          "verdict": "EQUIV_PARTIAL",
                          "coverage": "Q4_K/Q5_K two-word scale unpack at offsets 0, 2, 4, 6 with all 12 scale bytes initialized; complete vector-dot kernels unproved",
                          "evidence": "history-eq/gpu/llama.cpp/73ab7599/result.json"})
        elif draw == 103:
            proof = json.loads((root / "history-eq/gpu/llama.cpp/748d4225/result.json").read_text())
            assert source_status == "changed_blobs_available" and proof["commit"] == commit
            assert proof["verdict"] == "EQUIV_PARTIAL" and proof["changed_calls"] == 14
            assert set(proof["checks"]) == {"forward", "backward"}
            assert all(len(checks) == 5 and all("1 correct transformations" in output for output in checks.values())
                       for checks in proof["checks"].values())
            assert "1 incorrect transformations" in proof["unrestricted_counterexample"]
            entry.update({"checker_status": "checked", "checker_target": "Alive2",
                          "verdict": "EQUIV_PARTIAL",
                          "coverage": "HIP packed-byte arithmetic at 14 replacement sites under Q3/Q4/Q5/Q6 source byte bounds; ten bidirectional checks; full kernels and scheduling barrier unproved",
                          "evidence": "history-eq/gpu/llama.cpp/748d4225/result.json"})
        elif source_status == "missing_changed_blob" or draw in unverified_scope:
            entry.update({"checker_status": "not_run", "checker_target": "Alive2/Volta as applicable",
                          "verdict": "UNKNOWN", "coverage": "exact-message/source-path audit only; no before/after checker result"})
        else:
            entry.update({"checker_status": "not_run", "checker_target": "Volta/Alive2 selected relation",
                          "verdict": "UNSUPPORTED", "coverage": "backend, host graph, concurrent behavior, or build-time change outside selected relation"})
    else:
        entry.update({"screen": "excluded_non_optimization", "checker_status": "not_run",
                      "reason": excluded[draw]})
    if draw in case_reports:
        assert entry["screen"] == "confirmed_optimization" and source_status == "changed_blobs_available"
        if draw == 52:
            case = root / "history-eq/gpu/llama.cpp/5eff6ec9"
            proof = json.loads((case / "result.json").read_text())
            assert commit.startswith(proof["commit"]) and proof["ptx_identical"]
            assert proof["ptx_sha256"]["old"] == proof["ptx_sha256"]["new"]
            assert proof["volta_status"] == "UNSUPPORTED"
            assert all(hashlib.sha256((case / f"{side}.ptx").read_bytes()).hexdigest() == proof["ptx_sha256"][side]
                       for side in ("old", "new"))
        matches = [directory / "README.md" for directory in (root / "history-eq/gpu/llama.cpp").iterdir()
                   if directory.is_dir() and commit.startswith(directory.name)
                   and (directory / "README.md").exists()]
        assert len(matches) == 1, (draw, commit, matches)
        paragraphs = matches[0].read_text().split("\n\n")
        reason = next(p.strip().replace("\n", " ") for p in paragraphs if p.strip() and not p.startswith("#"))
        entry.update({"checker_status": "checked", "checker_target": "case-specific check or scope audit",
                      "verdict": case_verdicts.get(draw, entry["verdict"]), "reason": reason,
                      "coverage": "Exact checked scope and limits are in the linked case report.",
                      "evidence": str(matches[0].relative_to(root))})
    entries.append(entry)
    label = entry.get("verdict", "excluded")
    url = f"https://github.com/ggml-org/llama.cpp/commit/{commit}"
    lines.append(f"| {draw} | [`{commit[:8]}`]({url}) | {candidate['subject'].replace('|', '&#124;')} | "
                 f"{entry['screen']} | {source_status} | {label} |")

assert Counter(e["screen"] for e in entries) == {"confirmed_optimization": 71, "excluded_non_optimization": 44}
fixed_confirmed = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
assert all(e.get("checker_status") == "not_run" for e in fixed_confirmed
           if e.get("verdict") == "UNSUPPORTED" and
           e["commit"] not in {proof["commit"], vk["commit"]} and
           (str(e.get("evidence", "")).endswith(".source.diff") or
            str(e.get("evidence", "")).endswith("online-source-gap-screening.md")))
topup_confirmed = [e for e in entries if e["screen"] == "confirmed_optimization"][:64]
assert topup_confirmed[-1]["draw"] == 106
sample = fixed_confirmed + topup_confirmed
assert len(sample) == len({e["commit"] for e in sample}) == 200
assert all(e.get("verdict") for e in sample)

(results / "llama-topup-audit.json").write_text(json.dumps({"repo": "llama.cpp", "pin": item["pin"],
    "candidate_draws": len(entries), "confirmed_topup": len(topup_confirmed), "entries": entries}, indent=2) + "\n")
(results / "llama.cpp-pinned-sample-audit.json").write_text(json.dumps(fixed, indent=2) + "\n")
(results / "llama-optimization-sample.json").write_text(json.dumps({"repo": "llama.cpp", "pin": item["pin"],
    "selection": "first 200 confirmed optimizations in the seeded random permutation of performance-keyword candidates",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps({"candidate_draws": len(entries), "confirmed_topup": len(topup_confirmed),
                  "sample_size": len(sample), "sample_verdicts": dict(Counter(e["verdict"] for e in sample))}, sort_keys=True))
