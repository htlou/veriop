#!/usr/bin/env python3
"""Check old/new Metal im2col launch-to-output mappings for bounded shapes."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

import z3


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "02a6a82ae7"
PATHS = (
    "ggml/src/ggml-metal/ggml-metal-device.cpp",
    "ggml/src/ggml-metal/ggml-metal-ops.cpp",
    "ggml/src/ggml-metal/ggml-metal.metal",
)


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args],
                                   env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


source = {}
blobs = {}
for side, rev in (("old", COMMIT + "^"), ("new", COMMIT)):
    for path in PATHS:
        source[side, path] = git("show", f"{rev}:{path}").decode()
        blobs[f"{side}:{Path(path).name}"] = git("rev-parse", f"{rev}:{path}").decode().strip()
archive = ROOT / "history-eq/gpu/llama.cpp/source-screening/02a6a82a.source.diff"
diff = git("diff", COMMIT + "^", COMMIT, "--", *PATHS)
assert diff == archive.read_bytes()
old_device = source["old", PATHS[0]]
new_device = source["new", PATHS[0]]
assert '"kernel_im2col_ext_%s"' in old_device
assert '"kernel_im2col_%s"' in new_device
old_ops, new_ops = source["old", PATHS[1]], source["new", PATHS[1]]
for fragment in (
    "const uint64_t n_threads = std::min(ggml_metal_pipeline_max_theads_per_threadgroup(pipeline), N);",
    "ggml_metal_encoder_dispatch_threadgroups(enc, quotient * CHW, OH, OW, n_threads, 1, 1);",
):
    assert fragment in old_ops, fragment
for fragment in (
    "GGML_ASSERT(KH*KW <= ggml_metal_pipeline_max_theads_per_threadgroup(pipeline));",
    "const uint64_t ntptg0 = std::min(ggml_metal_pipeline_max_theads_per_threadgroup(pipeline)/(KH*KW), N);",
    "ggml_metal_encoder_dispatch_threadgroups(enc, IC, OH, OW, ntptg0, KH, KW);",
):
    assert fragment in new_ops, fragment
old_kernel, new_kernel = source["old", PATHS[2]], source["new", PATHS[2]]
for fragment in (
    "const int64_t d   = tgpig[0] / args.CHW;",
    "const int64_t chw = tgpig[0] % args.CHW;",
    "const int64_t tpitg_0 = (d * ntg[0]) + tpitg[0];",
    "const int64_t tpitg_1 = HW / args.KW;",
    "const int64_t tpitg_2 = HW % args.KW;",
):
    assert fragment in old_kernel, fragment
for fragment in (
    "int64_t in  = tpitg[0];",
    "const int64_t ikh = tpitg[1];",
    "const int64_t ikw = tpitg[2];",
    "while (in < args.N) {",
    "offset_dst += ntg[0]*args.CHW*OH*OW;",
    "offset_src += ntg[0]*args.ofs0;",
):
    assert fragment in new_kernel, fragment


def check_shape(shape):
    n_count, ic_count, kh_count, kw_count, oh_count, ow_count, max_threads = shape
    khw = kh_count * kw_count
    chw = ic_count * khw
    assert n_count > 0 and khw <= max_threads
    old_threads = min(max_threads, n_count)
    old_quotient = (n_count + old_threads - 1) // old_threads
    new_threads = min(max_threads // khw, n_count)
    assert new_threads > 0 and new_threads * khw <= max_threads
    n, ic, kh, kw, oh, ow = z3.Ints("n ic kh kw oh ow")
    bounds = [n >= 0, n < n_count, ic >= 0, ic < ic_count,
              kh >= 0, kh < kh_count, kw >= 0, kw < kw_count,
              oh >= 0, oh < oh_count, ow >= 0, ow < ow_count]
    channel = ic * khw + kh * kw_count + kw
    old_group_x = (n / old_threads) * chw + channel
    old_thread_x = n % old_threads
    old_channel = old_group_x % chw
    old_ic = old_channel / khw
    old_kh = (old_channel % khw) / kw_count
    old_kw = (old_channel % khw) % kw_count
    old_n = (old_group_x / chw) * old_threads + old_thread_x
    new_thread_x = n % new_threads
    new_step = n / new_threads
    new_n = new_thread_x + new_step * new_threads
    # Stride/padding choices exercise both real reads and zero-filled writes.
    iw, ih, s0, s1, p0, p1, d0, d1 = 8, 5, 1, 1, 1, 1, 1, 1
    ofs0, ofs1 = 128, 64
    old_iiw = ow * s0 + old_kw * d0 - p0
    old_iih = oh * s1 + old_kh * d1 - p1
    new_iiw = ow * s0 + kw * d0 - p0
    new_iih = oh * s1 + kh * d1 - p1
    old_dst = (old_n * oh_count * ow_count + oh * ow_count + ow) * chw + (
        old_ic * khw + old_kh * kw_count + old_kw)
    new_dst = (new_n * oh_count * ow_count + oh * ow_count + ow) * chw + channel
    old_src = old_n * ofs0 + old_ic * ofs1 + old_iih * iw + old_iiw
    new_src = new_n * ofs0 + ic * ofs1 + new_iih * iw + new_iiw
    old_valid = z3.And(old_iih >= 0, old_iih < ih, old_iiw >= 0, old_iiw < iw)
    new_valid = z3.And(new_iih >= 0, new_iih < ih, new_iiw >= 0, new_iiw < iw)
    output_count = n_count * oh_count * ow_count * chw

    solver = z3.Solver()
    solver.add(*bounds, z3.Or(
        old_group_x >= old_quotient * chw,
        old_n != n, new_n != n, old_ic != ic, old_kh != kh, old_kw != kw,
        old_dst != new_dst, old_dst < 0, old_dst >= output_count,
        old_valid != new_valid, z3.And(old_valid, old_src != new_src),
    ))
    mapping = str(solver.check())
    assert mapping == "unsat", (shape, "mapping", mapping)

    a = z3.Ints("a_n a_ic a_kh a_kw a_oh a_ow")
    b = z3.Ints("b_n b_ic b_kh b_kw b_oh b_ow")
    def address(v):
        an, ai, ah, ak, ay, ax = v
        return (an * oh_count * ow_count + ay * ow_count + ax) * chw + (
            ai * khw + ah * kw_count + ak)
    solver = z3.Solver()
    for v in (a, b):
        solver.add(v[0] >= 0, v[0] < n_count, v[1] >= 0, v[1] < ic_count,
                   v[2] >= 0, v[2] < kh_count, v[3] >= 0, v[3] < kw_count,
                   v[4] >= 0, v[4] < oh_count, v[5] >= 0, v[5] < ow_count)
    solver.add(address(a) == address(b), z3.Or(*(x != y for x, y in zip(a, b))))
    injective = str(solver.check())
    assert injective == "unsat", (shape, "injective", injective)
    return {"shape": {"N": n_count, "IC": ic_count, "KH": kh_count,
                      "KW": kw_count, "OH": oh_count, "OW": ow_count,
                      "max_threads": max_threads},
            "old_threads": old_threads, "old_quotient": old_quotient,
            "new_threads_x": new_threads, "mapping": mapping,
            "destination_injective": injective}


checks = [check_shape(shape) for shape in (
    (7, 2, 2, 3, 2, 3, 64),
    (13, 2, 2, 3, 2, 3, 8),
    (19, 1, 1, 4, 1, 5, 16),
)]
result = {
    "commit": git("rev-parse", COMMIT).decode().strip(),
    "source_blobs": blobs,
    "source_diff_sha256": hashlib.sha256(diff).hexdigest(),
    "checker": f"Z3 {z3.get_version_string()} integer launch/output mapping",
    "checks": checks,
    "scope": "three bounded Metal im2col launch shapes; every logical output element, source address or zero-fill, and unique destination address; integer model",
    "verdict": "EQUIV_PARTIAL",
}
(CASE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"commit": result["commit"], "checks": len(checks),
                  "outcomes": sorted({entry[key] for entry in checks
                                      for key in ("mapping", "destination_injective")}),
                  "verdict": result["verdict"]}))
