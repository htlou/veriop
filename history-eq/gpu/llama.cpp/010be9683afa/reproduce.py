#!/usr/bin/env python3
"""Check exact OpenCL Q4_K/Q5_K tile coverage after Intel microtile tuning."""

from collections import Counter
import hashlib
import json
import os
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
COMMIT = "010be9683afa"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def blob(rev, path):
    data = git("show", f"{rev}:{path}")
    oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert oid == git("rev-parse", f"{rev}:{path}").decode().strip()
    return data.decode(), oid


paths = ["ggml/src/ggml-opencl/ggml-opencl.cpp"]
for quant in ("q4", "q5"):
    paths += [f"ggml/src/ggml-opencl/kernels/mul_mm_{quant}_k_f32_l4_lm.cl",
              f"ggml/src/ggml-opencl/kernels/mul_mv_{quant}_k_f32_flat.cl"]
sources = {}
oids = {}
for path in paths:
    sources[path] = {}
    oids[path] = {}
    for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
        sources[path][side], oids[path][side] = blob(rev, path)

host = sources[paths[0]]
assert host["new"].count("nth0 = (backend_ctx->gpu_family == INTEL) ? 64 : 128;") == 2
for kernel in ("q4", "q5"):
    anchor = f"kernel = backend_ctx->kernel_mul_mm_{kernel}_k_f32_l4_lm;"
    assert "nth0 = 128; // calculated as (BM*BN)/(TM*TN)" in host["old"].split(anchor, 1)[1][:170]
    assert "nth0 = (backend_ctx->gpu_family == INTEL) ? 64 : 128;" in host["new"].split(anchor, 1)[1][:170]
    path = f"ggml/src/ggml-opencl/kernels/mul_mm_{kernel}_k_f32_l4_lm.cl"
    old, new = sources[path]["old"], sources[path]["new"]
    assert old[old.index("kernel void"): ] == new[new.index("kernel void"): ]
    for needle in ("#define BM 64", "#define BN 64", "#define BK 32",
                   "#define TM 4", "#define TN 8"):
        assert needle in old and needle in new
    for needle in ("#ifdef cl_intel_required_subgroup_size", "#define INTEL_GPU 1",
                   "#ifdef INTEL_GPU", "#define TM 8", "#define TN 8"):
        assert needle in new
    body = new[new.index("kernel void"):]
    for needle in ("const int th_r  = tid % (BM / TM);",
                   "const int th_c  = tid / (BM / TM);",
                   "const int loadstride_a = get_local_size(0) * LOAD_VEC_A / BK;",
                   "const int loadstride_b = get_local_size(0) * LOAD_VEC_B / BK;",
                   "sums[sums_idx] = mad(cache_a[cr], cache_b[cc], sums[sums_idx]);",
                   "dst[offsets + (dc + cc) * stride_d + dr + cr] = sums[cc * TM + cr];"):
        assert needle in body, (kernel, needle)
    for side in ("old", "new"):
        for intel in (False, True):
            args = [str(CLANG), "-x", "cl", "-cl-std=CL2.0", "-fsyntax-only", "-"]
            if intel:
                args.insert(-1, "-Dcl_intel_required_subgroup_size")
            run = subprocess.run(args, input=sources[path][side], capture_output=True, text=True)
            assert run.returncode == 0, (kernel, side, intel, run.stderr)
            (HERE / f"{kernel}-{side}-{'intel' if intel else 'generic'}-compile.log").write_text(run.stderr)


def coverage(workgroup, tm, tn):
    outputs = Counter((tid % (64 // tm) * tm + cr,
                       tid // (64 // tm) * tn + cc)
                      for tid in range(workgroup)
                      for cr in range(tm) for cc in range(tn))
    loads = Counter((tid % 8 * 4 + component, tid // 8 + l)
                    for tid in range(workgroup) for l in range(0, 64, workgroup // 8)
                    for component in range(4))
    return outputs, loads


def check_layout(name, workgroup, tm, tn):
    outputs, loads = coverage(workgroup, tm, tn)
    assert outputs == Counter({(r, c): 1 for r in range(64) for c in range(64)})
    assert loads == Counter({(r, c): 1 for r in range(32) for c in range(64)})
    smt = f"""(set-logic QF_LIA)
(declare-const t0 Int) (declare-const t1 Int)
(declare-const r0 Int) (declare-const r1 Int)
(declare-const c0 Int) (declare-const c1 Int)
(assert (and (<= 0 t0) (< t0 {workgroup}) (<= 0 t1) (< t1 {workgroup})
  (<= 0 r0) (< r0 {tm}) (<= 0 r1) (< r1 {tm})
  (<= 0 c0) (< c0 {tn}) (<= 0 c1) (< c1 {tn})))
(assert (= (+ (* (mod t0 {64 // tm}) {tm}) r0)
           (+ (* (mod t1 {64 // tm}) {tm}) r1)))
(assert (= (+ (* (div t0 {64 // tm}) {tn}) c0)
           (+ (* (div t1 {64 // tm}) {tn}) c1)))
(assert (or (not (= t0 t1)) (not (= r0 r1)) (not (= c0 c1))))
(check-sat)
"""
    (HERE / f"{name}-unique.smt2").write_text(smt)
    run = subprocess.run([str(Z3), "-in"], input=smt, capture_output=True,
                         text=True, timeout=30, check=True)
    (HERE / f"{name}-unique.log").write_text(run.stdout + run.stderr)
    assert run.stdout.strip() == "unsat" and not run.stderr, (name, run.stdout, run.stderr)
    return {"output_cells": len(outputs), "local_load_cells": len(loads), "duplicate_writer": "unsat"}


old = check_layout("old", 128, 4, 8)
new = check_layout("intel", 64, 8, 8)
wrong, _ = coverage(64, 4, 8)
assert len(wrong) == 2048 and not any(c >= 32 for _, c in wrong)

result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "parent": git("rev-parse", f"{COMMIT}^").decode().strip(),
          "source_oids": oids, "old_layout": old, "new_intel_layout": new,
          "intel_host_without_extension": "64-thread launch with 4x8 shader writes only 2048/4096 full-tile cells",
          "verdict": "EQUIV_PARTIAL for Q4_K/Q5_K full-tile output/load coverage when Intel macro matches host family"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
