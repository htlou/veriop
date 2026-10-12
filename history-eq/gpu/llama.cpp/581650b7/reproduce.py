#!/usr/bin/env python3
"""Prove selected historical im2col source/destination address equality."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

import z3


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "581650b7ca"
PATH = "ggml/src/ggml-vulkan/vulkan-shaders/im2col.comp"


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args],
                                   env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


old = git("show", f"{COMMIT}^:{PATH}").decode()
new = git("show", f"{COMMIT}:{PATH}").decode()
archive = ROOT / "history-eq/gpu/llama.cpp/source-screening/581650b7.source.diff"
diff = git("diff", COMMIT + "^", COMMIT, "--", PATH)
assert diff == archive.read_bytes()
for source in (old, new):
    assert "layout(constant_id = 0) const uint BLOCK_SIZE = 32;" in source
    assert "const uint NUM_ITER = 512 / BLOCK_SIZE;" in source
    assert "values[idx] = A_TYPE(0);" in source
    assert "data_d[offset_dst[idx]] = D_TYPE(values[idx]);" in source
for fragment in (
    "const uint i = gidx * NUM_ITER + idx;",
    "const uint kx = i / ksize;",
    "const uint ky = (i - kd) / p.OW;",
    "const uint ix = i % p.OW;",
    "((batch * p.OH + oh) * p.OW + ix) * p.CHW +",
    "(ic * (p.KW * p.KH) + ky * p.KW + kx)",
    "const uint offset_src = ic * p.offset_delta + batch * p.batch_offset;",
    "values[idx] = data_a[offset_src + iih * p.IW + iiw];",
):
    assert fragment in old, fragment
for fragment in (
    "const uint base_linear_idx = gidx * NUM_ITER;",
    "uint current_kx = base_linear_idx / ksize;",
    "uint current_ky = rem / p.OW;",
    "uint current_ix = rem % p.OW;",
    "const uint linear_idx = base_linear_idx + idx;",
    "if (linear_idx >= p.pelements) {",
    "offset_dst[idx] = dst_base + current_ix * p.CHW + current_ky * p.KW + current_kx;",
    "if (++current_ix == p.OW) {",
    "if (++current_ky == max_ky) {",
    "current_kx++;",
    "const uint src_base = ic * p.offset_delta + batch * p.batch_offset;",
    "values[idx] = data_a[src_base + iih * p.IW + iiw];",
):
    assert fragment in new, fragment

shapes = []
for ow in (1, 32, 127):
    for kw in (1, 3):
        for kh in (1, 3):
            size = ow * (kw if kh > 1 else 1)
            max_ky = size // ow
            position = z3.Int("position")
            kx = position / size
            ky = (position % size) / ow
            ix = position % ow
            carry_x = ix + 1 == ow
            carry_y = ky + 1 == max_ky
            next_kx = z3.If(z3.And(carry_x, carry_y), kx + 1, kx)
            next_ky = z3.If(carry_x, z3.If(carry_y, 0, ky + 1), ky)
            next_ix = z3.If(carry_x, 0, ix + 1)
            solver = z3.Solver()
            # The initial state is exactly the old quotient/remainder at base.
            # This one-step invariant covers every later valid iteration.
            solver.add(position >= 0, position <= 16000015, z3.Or(
                next_kx != (position + 1) / size,
                next_ky != ((position + 1) % size) / ow,
                next_ix != (position + 1) % ow,
            ))
            outcome = str(solver.check())
            assert outcome == "unsat", (ow, kw, kh, outcome)
            shapes.append({"OW": ow, "KW": kw, "KH": kh, "outcome": outcome})

gidx, pelements, earlier, later = z3.Ints("gidx pelements earlier later")
base = gidx * 16
solver = z3.Solver()
solver.add(gidx >= 0, gidx <= 1000000, pelements >= 0,
           pelements <= 2147483647, earlier >= 0, earlier < later,
           later < 16, base + earlier >= pelements,
           base + later < pelements)
prefix_outcome = str(solver.check())
assert prefix_outcome == "unsat", prefix_outcome

u32 = z3.BitVecSort(32)
batch, oh, ic, oh_count, chw, ix, ky, kx, ow, kw, kh = [
    z3.Const(name, u32) for name in
    ("batch", "oh", "ic", "OH", "CHW", "ix", "ky", "kx", "OW", "KW", "KH")]
old_dst = ((batch * oh_count + oh) * ow + ix) * chw + (
    ic * (kw * kh) + ky * kw + kx)
new_dst = ((batch * oh_count + oh) * ow) * chw + ic * (kw * kh) + (
    ix * chw + ky * kw + kx)
solver = z3.Solver()
solver.add(old_dst != new_dst)
dst_outcome = str(solver.check())
assert dst_outcome == "unsat", dst_outcome

result = {
    "commit": git("rev-parse", COMMIT).decode().strip(),
    "source_blobs": {"old": git("rev-parse", f"{COMMIT}^:{PATH}").decode().strip(),
                     "new": git("rev-parse", f"{COMMIT}:{PATH}").decode().strip()},
    "source_diff_sha256": hashlib.sha256(diff).hexdigest(),
    "checker": f"Z3 {z3.get_version_string()}",
    "checks": {"index_state_induction": shapes, "valid_prefix": prefix_outcome,
               "destination_address": dst_outcome},
    "scope": "default BLOCK_SIZE=32 (16 iterations); OW in {1,32,127}, KW/KH in {1,3}; gidx 0..1000000; pelements 0..INT_MAX; coordinates and destination addresses of each valid lane; source address conditional on identical signed-stride interpretation",
    "verdict": "EQUIV_PARTIAL",
}
(CASE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"commit": result["commit"], "shape_checks": len(shapes),
                  "shape_outcomes": sorted({entry["outcome"] for entry in shapes}),
                  "valid_prefix": prefix_outcome, "destination_address": dst_outcome,
                  "verdict": result["verdict"]}))
