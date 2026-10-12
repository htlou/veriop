#!/usr/bin/env python3
"""Check the exact historical get_num_splits body in isolation."""

import json
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
REPO = ROOT / "benchmarks/repos/flash-attention"
REV = "df5fe55264e4b59dcb1ce8e83f2e900bba164e92"
PATH = "hopper/flash_api.cpp"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
PREFIX = """#include <algorithm>
#include <tuple>
struct Flash_fwd_params {
  int arch, d_rounded, seqlen_q, seqlen_k, window_size_right, window_size_left;
  int h, h_k, b, num_sm;
  bool is_causal, is_local, is_e4m3, pack_gqa;
  float softcap;
  void *cu_seqlens_q, *cu_seqlens_k, *seqused_q, *seqused_k, *leftpad_k;
  void *page_table, *knew_ptr;
};
template<class... T> auto tile_size_fwd_sm90(T...) { return std::tuple{128, 64}; }
template<class... T> auto tile_size_fwd_sm80(T...) { return std::tuple{128, 64}; }
template<class... T> auto tile_size_fwd_sm8x(T...) { return std::tuple{128, 64}; }
inline int num_splits_heuristic(int, int, int, int) { return 1; }
"""


def git(*args):
    return subprocess.run(["git", "-C", str(REPO), *args], check=True,
                          capture_output=True, text=True, env=ENV).stdout.strip()


def body(rev):
    source = subprocess.run(["git", "-C", str(REPO), "show", f"{rev}:{PATH}"],
                            check=True, capture_output=True, env=ENV).stdout.decode()
    start = source.index("inline int get_num_splits(Flash_fwd_params const& params) {")
    end = source.index("\ninline int get_max_headdim()", start)
    return source[start:end].strip() + "\n"


blobs = {side: git("rev-parse", f"{rev}:{PATH}")
         for side, rev in (("old", REV + "^"), ("new", REV))}
old, new = body(REV + "^"), body(REV)
assert "auto kBlockMN_kernel_args_sm80 = tile_size_fwd_sm80(" in old
assert old.count("kBlockMN_kernel_args_sm80") == 3
assert "auto kBlockMN_kernel_args_sm8x = tile_size_fwd_sm8x(" in new
assert new.count("kBlockMN_kernel_args_sm80") == 2
assert new.count("kBlockMN_kernel_args_sm8x") == 1
setup = subprocess.run(["git", "-C", str(REPO), "show", f"{REV}:hopper/setup.py"],
                       check=True, capture_output=True, text=True, env=ENV).stdout
assert 'DISABLE_SPLIT = os.getenv("FLASH_ATTENTION_DISABLE_SPLIT", "FALSE") == "TRUE"' in setup


def compile_case(name, source, flags=()):
    path = HERE / f"{name}.cpp"
    path.write_text(PREFIX + source)
    command = ["g++", "-std=c++17", "-fsyntax-only", *flags, str(path)]
    proc = subprocess.run(command, capture_output=True, text=True)
    (HERE / f"{name}.log").write_text("$ " + " ".join(command) + "\n" + proc.stdout + proc.stderr)
    return proc.returncode, proc.stderr


old_code, _ = compile_case("old", old)
new_code, new_error = compile_case("new", new)
disabled_code, _ = compile_case("new-split-disabled", new, ("-DFLASHATTENTION_DISABLE_SPLIT",))
repaired = new.replace("std::get<0>(kBlockMN_kernel_args_sm80)", "std::get<0>(kBlockMN_kernel_args_sm8x)")
repaired = repaired.replace("std::get<1>(kBlockMN_kernel_args_sm80)", "std::get<1>(kBlockMN_kernel_args_sm8x)")
repaired_code, _ = compile_case("new-name-repaired-control", repaired)
assert old_code == disabled_code == repaired_code == 0
assert new_code != 0 and "kBlockMN_kernel_args_sm80" in new_error and "not declared" in new_error

result = {
    "commit": REV, "source_blob_ids": blobs,
    "scope": "exact historical get_num_splits body with minimal declarations for dependencies",
    "default_split_build": "old passes; new fails on undeclared kBlockMN_kernel_args_sm80",
    "split_disabled_control": "new passes",
    "name_repaired_control": "new passes after replacing the two stale references",
    "classification": "UNSUPPORTED: candidate get_num_splits does not compile with default split enabled; no equivalence verdict",
    "unsupported_reason": "new-code-does-not-build",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
