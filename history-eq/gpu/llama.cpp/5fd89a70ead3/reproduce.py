#!/usr/bin/env python3
"""Reproduce a source-locked, one-block q4_K f32 arithmetic counterexample."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
COMMIT = "5fd89a70ead34d1a17015ddecad05aaa2490ca46"
SHADER = "ggml/src/vulkan-shaders/mul_mat_vec_q4_k.comp"
BASE = "ggml/src/vulkan-shaders/mul_mat_vec_base.comp"
GEN = "ggml/src/vulkan-shaders/vulkan-shaders-gen.cpp"
TYPES = "ggml/src/vulkan-shaders/types.comp"
EXPECTED = {
    (COMMIT + "^", SHADER): "75569363c64a92d48e9063137dd2f68ca79bea70",
    (COMMIT, SHADER): "d91e00e10061a29ae707fe2e51c2342f6d046404",
    (COMMIT, BASE): "5920bc93641c8970659028365ed7f9938e539676",
    (COMMIT, GEN): "53ceb13d30fde9e6946a59ddfb360ae4bbe17972",
    (COMMIT, TYPES): "21dce72fc7dfb3e7d1a2bd80de30dbea2a8ff681",
}
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def source(rev, path):
    data = subprocess.check_output(["git", "-C", str(REPO), "show", f"{rev}:{path}"], env=ENV)
    oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert oid == EXPECTED[(rev, path)], (rev, path, oid)
    return data.decode()


old = source(COMMIT + "^", SHADER)
new = source(COMMIT, SHADER)
base = source(COMMIT, BASE)
gen = source(COMMIT, GEN)
types = source(COMMIT, TYPES)
assert "#define K_QUANTS_PER_ITERATION 2" in base
assert 'std::map<std::string, std::string> base_dict = {{"FLOAT_TYPE", "float"}};' in gen
assert 'string_to_spv("mul_mat_vec_" + tname + "_f32_f32"' in gen
assert '{"B_TYPE", "float"}, {"D_TYPE", "float"}' in gen
assert "#define QUANT_K 256" in types.split("#if defined(DATA_A_Q4_K)", 1)[1].split("#endif", 1)[0]
old_active = old.split("#if K_QUANTS_PER_ITERATION == 2", 1)[1].split("#else", 1)[0]
new_active = new.split("#if K_QUANTS_PER_ITERATION == 2", 1)[1].split("#else", 1)[0]
assert "const FLOAT_TYPE sx = FLOAT_TYPE(FLOAT_TYPE(data_b[b_offset + y1_idx]) * q4_0 + FLOAT_TYPE(data_b[b_offset + y1_idx + 1]) * q4_1 + FLOAT_TYPE(data_b[b_offset + y1_idx + 2]) * q4_2 + FLOAT_TYPE(data_b[b_offset + y1_idx + 3]) * q4_3);" in old_active
assert "const FLOAT_TYPE sx = fma(FLOAT_TYPE(data_b[b_offset + y1_idx]),      q4_0,  fma(FLOAT_TYPE(data_b[b_offset + y1_idx + 1]),  q4_1,  fma(FLOAT_TYPE(data_b[b_offset + y1_idx + 2]),  q4_2,  FLOAT_TYPE(data_b[b_offset + y1_idx + 3]) *  q4_3)));" in new_active
assert "tmp[16 * ix + tid] += FLOAT_TYPE(dall * (sx * sc0 + sy * sc1 + sz * sc4 + sw * sc5) - dmin * smin);" in old_active
assert "tmp[tmp_idx] = fma(dall, fma(sx, sc0, fma(sy, sc1, fma(sz, sc4, sw * sc5))), fma(-dmin, smin, tmp[tmp_idx]));" in new_active

# One block: only ix=0 executes the loop; only tid=0 sees nonzero q4 data.
qs = bytearray(128)
qs[:3] = b"\x01\x01\x01"
for tid in range(16):
    il, ir = divmod(tid, 4)
    q_offset = 32 * (il // 2) + 4 * (2 * ir + il % 2)
    low = [qs[q_offset + j] & 15 for j in range(4)]
    high = [qs[q_offset + j] >> 4 for j in range(4)]
    assert low == ([1, 1, 1, 0] if tid == 0 else [0] * 4)
    assert high == [0] * 4

run = subprocess.run([str(Z3), str(HERE / "witness.smt2")], capture_output=True,
                     text=True, timeout=30, check=True)
assert run.stdout.splitlines() == ["unsat", "unsat", "sat"] and not run.stderr, run
(HERE / "witness.log").write_text(run.stdout)
result = {
    "commit": COMMIT,
    "source_oids": {f"{rev}:{path}": oid for (rev, path), oid in EXPECTED.items()},
    "configuration": "q4_K mul_mat_vec f32 input/output, FLOAT_TYPE=float, K_QUANTS_PER_ITERATION=2, one 256-element block",
    "witness": {"qs_low_nibbles_0_2": [1, 1, 1], "other_qs": 0,
                "scales_0": 1, "other_scales": 0, "dall": 1, "dmin": 0,
                "b_0_2": [33554432, -33554432, 1], "other_b": 0},
    "smt_result": run.stdout.splitlines(),
    "old_output": 1, "new_output": 0,
    "verdict_scope": "source-level IEEE binary32 one-block witness; GPU compiler lowering and runtime output not checked",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
