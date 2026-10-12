#!/usr/bin/env python3
"""Check whether GDN-copy fusion preserves a later snapshot-tail consumer."""

import hashlib
import json
import math
import os
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "5a460dea9f961cdb508d58a6e7b0f9e259b4c19f"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
PATHS = ["ggml/src/ggml-cuda/gated_delta_net.cu", "ggml/src/ggml-cuda/gated_delta_net.cuh",
         "ggml/src/ggml-cuda/ggml-cuda.cu"]


def run(args):
    p = subprocess.run(args, capture_output=True, text=True, timeout=120,
                       env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    assert p.returncode == 0, p.stdout + p.stderr
    return p.stdout


def git(*args):
    return run(["git", "-C", str(REPO), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).splitlines() == PATHS
diff = git("show", "--format=", "--no-ext-diff", COMMIT, "--", *PATHS)
assert diff.encode() == (HERE.parent / "source-screening/5a460dea.source.diff").read_bytes()
old_kernel = git("show", f"{COMMIT}^:{PATHS[0]}")
new_kernel = git("show", f"{COMMIT}:{PATHS[0]}")
host = git("show", f"{COMMIT}:{PATHS[2]}")
ggml_blob = git("rev-parse", f"{COMMIT}:ggml/src/ggml.c").strip()
assert ggml_blob == git("rev-parse", f"{COMMIT}^:ggml/src/ggml.c").strip()
ggml = git("show", f"{COMMIT}:ggml/src/ggml.c")
assert "GGML_ASSERT(ggml_nelements(a) == ggml_nelements(b));" in ggml
assert "result->op     = GGML_OP_CPY;\n    result->src[0] = a;\n    result->src[1] = b;" in ggml
assert "result->op     = GGML_OP_ADD;\n    result->src[0] = a;\n    result->src[1] = b;" in ggml
assert "ggml_view_impl(ctx, a, 4, ne, offset);" in ggml
assert "const int64_t state_rows = K * S_v * n_seqs;" in ggml
assert "const int64_t ne[4] = { S_v * H, n_tokens * n_seqs + state_rows, 1, 1 };" in ggml
assert "cgraph->use_counts[src_hash_pos]++;" in ggml
assert "cgraph->nodes[cgraph->n_nodes] = node;" in ggml
assert "tensor->flags |= GGML_TENSOR_FLAG_OUTPUT;" in ggml
assert "float * curr_state = (dst + attn_score_elems) + target_slot * state_size_per_token + state_out_offset;" in old_kernel
assert "float * curr_state = state + target_slot * state_slot_stride;" in new_kernel
assert "curr_state[col * S_v + i] = s_shard[r];" in old_kernel
assert "curr_state[col * S_v + i] = s_shard[r];" in new_kernel
assert "state_d           = cache->data;" in new_kernel
assert "state_slot_stride = cache->slot_stride;" in new_kernel
assert "const bool kda = (src_g->ne[0] == S_v);" in new_kernel
assert "const bool keep_rs = K > 1;" in new_kernel
assert "i += nodes_to_skip;" in host
assert "return nodes_to_skip;" in host

guard = host[host.index("static bool ggml_cuda_is_view_or_noop("):
             host.index("#ifdef USE_CUDA_GRAPH", host.index("static bool ggml_cuda_is_view_or_noop("))]
fusion = host[host.index("static int ggml_cuda_try_gdn_cache_fusion("):
              host.index("static bool ggml_cuda_topk_moe_fusion(")]
assert "GGML_TENSOR_FLAG_OUTPUT" in fusion
assert "for (int j = node_idx + 1; j < cgraph->n_nodes && cpy == nullptr; ++j)" in fusion
assert "dst->nb[1] != (size_t) ggml_row_size(GGML_TYPE_F32, D)" in fusion
assert "fused_state_cpy.data        = (float *) dst->data;" in fusion

native = """#include <algorithm>
#include <array>
#include <cstddef>
#include <cstdint>
#include <cstdio>
constexpr int GGML_MAX_DIMS=4, GGML_TENSOR_FLAG_OUTPUT=1;
enum ggml_op { GGML_OP_NONE, GGML_OP_VIEW, GGML_OP_RESHAPE, GGML_OP_TRANSPOSE,
               GGML_OP_PERMUTE, GGML_OP_GATED_DELTA_NET, GGML_OP_CPY, GGML_OP_ADD };
enum ggml_type { GGML_TYPE_F32 };
struct ggml_tensor {
    ggml_op op{}; ggml_type type{}; int flags{}; ggml_tensor * src[6]{};
    ggml_tensor * view_src{}; size_t view_offs{}; int64_t ne[4]{}; size_t nb[4]{};
    void * data{}; int K{}; bool contiguous{};
};
struct ggml_cgraph { int n_nodes; ggml_tensor ** nodes; };
struct ggml_cuda_gated_delta_net_fused_cache { float * data; int64_t slot_stride; };
static bool ggml_is_empty(const ggml_tensor *) { return false; }
static bool ggml_is_contiguous(const ggml_tensor * t) { return t->contiguous; }
static int ggml_get_op_params_i32(const ggml_tensor * t, int) { return t->K; }
static size_t ggml_type_size(ggml_type) { return 4; }
static size_t ggml_row_size(ggml_type, int64_t n) { return 4*n; }
""" + guard + fusion + """int main() {
    float cache_data[256]{};
    ggml_tensor v{}; v.ne[0]=16; v.ne[1]=v.ne[2]=v.ne[3]=1;
    ggml_tensor gdn{}; gdn.op=GGML_OP_GATED_DELTA_NET; gdn.type=GGML_TYPE_F32;
    gdn.src[2]=&v; gdn.K=2;
    ggml_tensor tail{}; tail.op=GGML_OP_VIEW; tail.view_src=&gdn;
    tail.view_offs=64; tail.contiguous=true;
    ggml_tensor cache{}; cache.op=GGML_OP_VIEW; cache.type=GGML_TYPE_F32;
    cache.ne[0]=256; cache.ne[1]=cache.ne[2]=cache.ne[3]=1;
    cache.nb[0]=4; cache.nb[1]=cache.nb[2]=cache.nb[3]=1024;
    cache.data=cache_data;
    ggml_tensor cpy{}; cpy.op=GGML_OP_CPY; cpy.src[0]=&tail; cpy.src[1]=&cache;
    ggml_tensor add{}; add.op=GGML_OP_ADD; add.flags=GGML_TENSOR_FLAG_OUTPUT;
    add.src[0]=&cpy; add.src[1]=&tail;
    ggml_tensor * nodes[]={&gdn,&tail,&cache,&cpy,&add};
    ggml_cgraph graph{5,nodes};
    ggml_cuda_gated_delta_net_fused_cache fused{};
    int skip=ggml_cuda_try_gdn_cache_fusion(&graph,0,fused);
    if (skip!=3 || fused.data!=cache_data || fused.slot_stride!=256 ||
        nodes[skip+1]!=&add || add.src[1]!=&tail) return 1;
    std::printf("guard_fires=1 skipped_nodes=%d later_tail_consumer=1\\n",skip);
}
"""
(HERE / "guard.cpp").write_text(native)
binary = HERE / "guard"
run(["g++", "-std=c++17", "-O0", str(HERE / "guard.cpp"), "-o", str(binary)])
native_log = run([str(binary)])
binary.unlink()
assert native_log == "guard_fires=1 skipped_nodes=3 later_tail_consumer=1\n"
(HERE / "guard-native.log").write_text(native_log)

# Non-KDA: initial state 1, k=0, g=0 keeps each s_shard at 1 after one token.
assert "s_shard[r]  = g_val * s_shard[r] + k_reg[r] * delta_col;" in old_kernel
assert "const float g_val = expf(*g_t);" in old_kernel
assert math.exp(0.0) * 1.0 + 0.0 * 0.0 == 1.0
models = {
    "old": "extern \"C\" float target(float initial_tail, float snapshot) {\n"
           "    float tail=snapshot; float cache=tail; return tail+cache;\n}\n",
    "new": "extern \"C\" float target(float initial_tail, float snapshot) {\n"
           "    float tail=initial_tail; float cache=snapshot; return tail+cache;\n}\n",
}
for side, source in models.items():
    (HERE / f"{side}.cpp").write_text(source)
    ll = HERE / f"{side}.ll"
    run([str(CLANG), "-O1", "-S", "-emit-llvm", str(HERE / f"{side}.cpp"), "-o", str(ll)])
    ll.write_text(re.sub(r" nocapture\b", "", ll.read_text()))
checks = {}
for direction, source, target in (("old_to_new", "old", "new"),
                                  ("new_to_old", "new", "old")):
    log = run([str(ALIVE), str(HERE / f"{source}.ll"), str(HERE / f"{target}.ll"),
               "--smt-to=30000", "--always-verify"])
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log, log
    (HERE / f"alive-{direction}.log").write_text(log)
    checks[direction] = "incorrect"

result = {"commit": COMMIT, "changed_paths": PATHS,
          "source_blobs": {side: {path: git("rev-parse", f"{rev}:{path}").strip() for path in PATHS}
                           for side, rev in (("old", COMMIT + "^"), ("new", COMMIT))},
          "unchanged_dependency_blobs": {"ggml/src/ggml.c": ggml_blob},
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((HERE / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in models},
          "guard_sha256": hashlib.sha256((HERE / "guard.cpp").read_bytes()).hexdigest(),
          "checks": checks, "guard": "fires and skips CPY despite later tail consumer",
          "verdict": "NOT_EQUIV",
          "witness": {"S_v": 16, "H": 1, "n_tokens": 1, "n_seqs": 1, "K": 2,
                      "initial_tail": 0.0, "snapshot": 1.0,
                      "old_add_output": 2.0, "new_add_output": 1.0},
          "scope": "For a graph where ADD consumes both the copied cache and GDN snapshot tail after CPY, the exact new fusion guard fires, skips CPY, and leaves the tail unwritten; the old path writes the tail. Source-mapped ADD output differs for an attainable one-token F32 snapshot. GPU execution and other graph scheduling unverified"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
