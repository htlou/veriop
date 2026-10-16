# Held-out vLLM CUDA kernel: verified optimization attempt

**Outcome (short).** The 1.5x target was not reached. The best
verified gain on a default-flag official vLLM kernel benchmark is a
**4-wide NeoX `rotary_embedding` path**: **1.069x geomean** over the 32 default shapes of `benchmark_rope.py` (5 ABBA pairs, min–max 1.054–1.081; A/A 0.997), up to 1.17x per shape, with a 1.2–1.5x faster rotary kernel. A second,
narrower result (fp32 `relu_squared`, which needs the official script's
non-default `--dtype float` flag) reaches ≥1.5x on two official
shapes, but its geomean is only 1.080x (1.54x and 1.63x on the two single-token large-d shapes). Every candidate kernel was
checked against the vLLM baseline with the Volta PTX equivalence checker
(unmodified, commit 5d7530c). The proof scope is narrower than "all
inputs", as section 5 explains. Section 2 explains why 1.5x is out of reach
for every Volta-checkable kernel that an official benchmark actually times.

**Round 2 (section 11):** the remaining official scripts were surveyed ([`survey-2.md`](survey-2.md)); none has ≥1.5x
geomean headroom. With a small, validated Volta extension for 16-bit pack/unpack (copy in `volta-ext/`, results labeled
[VOLTA-EXT]), the relu² result also holds at the script's **default bf16**: 1.058x geomean, up to 1.37x per shape.

**Final verification (section 13):** all three results are now **VERIFIED** over the complete official default task.
That means every CTA of every default config, all input values, all valid rope `positions`, and IEEE bit-exact outputs.
The checker is a combined Volta copy (`volta-final/`) that passes Volta's own test suite with unchanged per-test results.
Rope covers 163,200 CTAs. relu² fp32 and bf16 each cover 36 configs: 12 take the new path, checked window by window, and
24 run byte-identical code. Section 13 replaces the CTA-0 scope caveats in sections 5, 6b, 9 and 11c.

Everything here is local. Nothing was pushed or submitted upstream.

## 1. Setup and pins

| Item | Value |
|---|---|
| vLLM | `v0.31.0`, commit `db9527a46873454610df6dbedf79a36d6bf1a7f6` (shallow clone in `vllm/`) |
| Candidate | worktree `vllm-candidate/`, local branch `veriop-rope-vec4`, commit `8de5ec9`; [`candidate-rope-vec4.patch`](candidate-rope-vec4.patch) |
| Secondary candidate | worktree `vllm-cand-relu/`, branch `veriop-relu-sq`; [`candidate-relu-flat-fp32.patch`](candidate-relu-flat-fp32.patch) |
| Volta | `cuda/repos/volta` commit `5d7530cc7fbef656c3fbeac22c6529441e4db70c`, release binary (sha256 in [`pins.json`](pins.json)), unmodified |
| Compiler | nvcc 12.8.93 (`/usr/bin/nvcc`), `-gencode arch=compute_90,code=sm_90`; PTX via `-ptx -arch=compute_90` with identical flags |
| Python env | `venv/` (uv, Python 3.12.13): torch 2.13.0+cu129 (vLLM v0.31.0 pins torch 2.13.0), triton 3.7.1, flashinfer 0.7.0.post1 (needed only because `benchmark_rope.py` also times a FlashInfer provider) |
| GPU | physical GPU 6, NVIDIA H100 80GB HBM3 (`GPU-6ef04f0a-…`), driver 570.195.03 |

All hashes are in [`pins.json`](pins.json): the vLLM commit, the patches, the
Volta binary, and the `.so` files.

### How vLLM was built (the subset extension)

A full vLLM build is not needed, and it would pull CUTLASS, FlashMLA and other
dependencies. The setup builds only the needed ops into an extension with the
**same module name** (`vllm._C_stable_libtorch`) and **verbatim upstream op
schemas**:

- [`ext/torch_bindings_subset.cpp`](ext/torch_bindings_subset.cpp) is a subset of upstream
  `csrc/libtorch_stable/torch_bindings.cpp`. It keeps the `rms_norm`, `fused_add_rms_norm`, `rotary_embedding`,
  activation, int8-quant, `vocab_parallel_embedding` and `reshape_and_cache(_flash)` defs/impls and the
  `_C_cuda_utils` ops.
- [`scripts/build_ext.sh`](scripts/build_ext.sh) compiles the upstream `.cu` files unchanged from the
  given source tree. The flags mirror upstream CMake for this target: torch `COMMON_NVCC_FLAGS` minus the
  `__CUDA_NO_HALF*` defines, `-DENABLE_FP8 -DUSE_CUDA -DTORCH_TARGET_VERSION=0x020B…`,
  `--expt-relaxed-constexpr --expt-extended-lambda`, the include root `csrc/`, and upstream's torch-2.13
  `stableivalue_conversions.h` hotfix patch. The baseline and the candidate use the same script.
- Python code comes from the pinned checkout and is never modified. `pkg/<variant>/vllm` is a symlink
  tree of `vllm/vllm` (`cp -as`). Each tree differs only in which `_C_stable_libtorch.abi3.so` it
  links to, plus a generated `_version.py`. A metadata-only `vllm-0.31.0.dist-info` in the venv lets vLLM's
  platform detection (`importlib.metadata.version("vllm")`) find a CUDA platform.
- **The official benchmark scripts run unmodified** from `vllm/benchmarks/kernels/`. A variant is
  selected only through `PYTHONPATH=pkg/<variant>`. For `benchmark_rope.py`, `--save-path <dir>` is passed
  because the default `./configs/rope/` must already exist. The flag only controls where triton writes its CSV/PNG.

## 2. Step 1 – feasibility probe

### 2a. Volta acceptance of the candidate kernel files

Baseline PTX for each kernel file was generated with [`scripts/make_ptx.sh`](scripts/make_ptx.sh). All
modules parse. Lowering was then classified **per entry** with
[`scripts/probe_lowering.py`](scripts/probe_lowering.py), which runs `volta analyze` with an empty
config: a lowering error is reported before config validation. The full per-entry table is in
[`volta/probe/lowering-baseline.json`](volta/probe/lowering-baseline.json) and the summary in
[`volta/probe/lowering-summary.json`](volta/probe/lowering-summary.json).

| Module (all template instantiations) | Lowered by Volta | Rejected |
|---|---:|---:|
| `pos_encoding_kernels.cu` (`rotary_embedding_kernel`, all dtype pairs, NeoX + GPT-J) | **18** | 0 |
| `vocab_parallel_embedding_kernels.cu` (byte-vector row copy) | **10** | 0 |
| `layernorm_kernels.cu` | 74 (all fp32 `rms_norm`; 16-bit `rms_norm` only for VEC ≤ 4; generic `fused_add_rms_norm`) | 28 (16-bit VEC=8/16 `rms_norm`, all vectorized 16-bit `fused_add_rms_norm`) |
| `cache_kernels.cu` | 37 (incl. `reshape_and_cache(_flash)` with `kv_cache_dtype=auto`) | 63 (all fp8 variants) |
| `activation_kernels.cu` | 26 (fp32 / scalar-fallback / 256-bit relu², fatrelu) | 141 |
| `quantization/w8a8/int8/scaled_quant.cu` | 1 (cub `EmptyKernel` only) | 12 (all int8 quant kernels) |

Rejection reasons, in entries:

| Count | Reason |
|---:|---|
| 105 | `ex2.approx` is not implemented. It comes from every `expf`/`tanhf`/sigmoid, so it hits silu, gelu and swiglu. |
| 86 | Vector-destination `mov.b32 {%rs,%rs}, %r`, the 16-bit unpack after a 128-bit load. This rejects every 128-bit-vectorized f16/bf16 kernel, including bf16 `relu_squared` on sm_90. |
| 37 | fp8 `cvt` forms are not parsed |
| 7 + 3 | `cvt.rni`/`cvt.rzi` integer rounding and integer `.sat` are not modeled. This rejects all int8 quant. |
| 4 | Packed `add.f16x2/bf16x2` |
| 2 | `cp.async` |

### 2b. Which kernel does each official benchmark actually time?

[`scripts/probe_dispatch.py`](scripts/probe_dispatch.py) rebuilds each benchmark's call under the same
`default_vllm_config()` and records which CUDA kernels run
([`results/probe-dispatch.json`](results/probe-dispatch.json)):

| Official script (default flags) | Kernel actually timed | Volta-checkable? | Headroom |
|---|---|---|---|
| `benchmark_layernorm.py` | **PyTorch native ops** (`Priority not set for op rms_norm, using native implementation`): vLLM IR op priority is only installed at worker init, so the script never calls `_C::rms_norm`. | n/a | n/a |
| `benchmark_activation.py` (`custom`) | Triton (`triton_poi_fused_mul_silu_slice_0`): custom op disabled, native path compiled | n/a (and silu has ex2) | n/a |
| `benchmark_quant.py` (int8 dynamic, 4096x8192 fp16) | `dynamic_scaled_int8_quant_kernel` | **no** (cvt.rni.sat) | 37.9 us = 2.53 TB/s, ≤1.27x |
| `benchmark_relu_squared.py` (bf16) | `activation_kernel<bf16,…,vec128>` | **no** (unpack mov) | large shapes 2.9–3.0 TB/s |
| `benchmark_relu_squared.py --dtype float` | `activation_kernel<float,…,vec128>` | yes | small-batch rows only (section 6) |
| `benchmark_rope.py` | 2x `Memcpy DtoD` (`query.clone()`, `key.clone()` inside the timed lambda) + `rotary_embedding_kernel<bf16,bf16,NeoX>` | **yes** | ceiling 1.36x geomean even with a zero-time kernel (2c) |
| `benchmark_vocab_parallel_embedding.py` | `vocab_parallel_embedding_kernel<int,uint4>` | yes | small shapes ~5.5 us latency floor, large shapes 2.4–2.5 TB/s |
| `benchmark_reshape_and_cache.py` | legacy `reshape_and_cache_kernel` | yes (auto dtype) | scatter-bound (2-byte value writes at 32-byte stride); **upstream bug**, see section 8 |
| `benchmark_reshape_and_cache_flash.py` | `reshape_and_cache_flash_kernel` | yes (auto dtype) | NHD reaches 92% of HBM bandwidth at 65536 tokens; small shapes floor at ~9.5 us (sync per iteration) |

Raw baseline outputs are in [`bench/explore/`](bench/explore).

### 2c. Why ≥1.5x is not reachable on these benchmarks

- **rope.** `benchmark_rope.py` times `rope.forward_cuda(positions, query.clone(), key.clone())`. The
  [per-kernel breakdown](bench/explore/rope_breakdown_baseline.txt) shows that the two clones take about 2/3 of
  GPU time at large shapes. Small shapes are dominated by fixed launch and event overhead (12.6 us measured
  vs 5.7 us of GPU kernels). Even a **zero-time rotary kernel gives at most a 1.36x geomean** over the 32 default
  shapes. The rotary kernel is also bounded by its memory pattern: it touches 64 of every 256 bytes of q and k.
  A memory-only kernel with exactly this access pattern needs 216–221 us at the largest shape
  ([`explore/mem_pattern.out`](explore/mem_pattern.out)), versus 273 us for the baseline kernel.
- **relu_squared / vocab embedding / reshape_and_cache_flash.** Large shapes already run at 2.4–3.0 TB/s
  out of about 3.35 TB/s. Small shapes sit at the launch or latency floor.
- **int8 quant, bf16 relu², all gated activations, 16-bit rms_norm.** The baseline PTX itself
  is outside Volta's lowering fragment, so no old-vs-new proof is possible.

## 3. Ideas tried (≥3 kernels, 5 ideas)

| # | Kernel / idea | Result | Evidence |
|---|---|---|---|
| 1 | rope: hoist all loads, 4 pairs/thread, one q+k work list (latency hypothesis) | **slower**: 340 us vs 275 us at 64x512x48 (kernel only) | [`explore/rope-mlp-idea.patch`](explore/rope-mlp-idea.patch) (reconstructed); the measurement was made in the session and the breakdown file was later overwritten by idea 2 |
| 2 | rope: 4-wide (8-byte `ld/st.v4.u16`) NeoX path, one q+k list, ≤256 threads | **kept**: kernel 1.2–1.5x, official ≈1.07x | sections 4–7 |
| 3 | relu² fp32: prefetch all vectors per thread, same CTA mapping | ≤1.16x on some shapes, geomean ≈1.03x | [`explore/relu-prefetch-idea.patch`](explore/relu-prefetch-idea.patch), [`bench/explore/relu_squared_fp32_cand.txt`](bench/explore/relu_squared_fp32_cand.txt) |
| 4 | relu² fp32: flat grid-stride kernel for ≤256-token rows with d/4 > 1024 | 1.5–1.64x on 6/36 shapes, geomean ≈1.09x | section 6 |
| 5 | vocab_parallel_embedding: unroll 4 tokens per CTA iteration (MLP) | no gain (0.88–1.01x) | [`explore/vocab-emb-unroll-idea.patch`](explore/vocab-emb-unroll-idea.patch), [`bench/explore/vocab_emb_cand.txt`](bench/explore/vocab_emb_cand.txt) |

8-byte vectors were used rather than 16-byte ones for a Volta reason. A
16-byte `uint4` load of bf16 makes nvcc emit the unpack `mov.b32 {…}` that Volta
rejects. `ushort4` gives `ld.global.v4.u16`, which Volta lowers. In the
microbenchmark, 16-byte vectors were not faster
([`explore/rope_micro.out`](explore/rope_micro.out)).

## 4. The optimization (rotary_embedding, NeoX, 16-bit)

[`candidate-rope-vec4.patch`](candidate-rope-vec4.patch) adds
`rotary_embedding_neox_vec4_kernel<scalar_t>` and a guarded dispatch in `rotary_embedding()`:

- **Same CTA-per-token mapping and the same per-element formula** as `rotary_embedding_kernel`.
  Each work item covers 4 consecutive rotary offsets of one query or key head. The x half, y half, cos and sin
  are loaded as 8-byte vectors and x/y are stored as 8-byte vectors. Query and key heads form one work list
  (`(num_heads + num_kv_heads) * rot_dim/8` items), and the block is `min(roundup32(items), 256)` instead of
  `min(num_heads*rot_dim/2, 512)`.
- **Dispatched only where it was checked:** `is_neox`, query dtype ∈ {bf16, fp16}, cache dtype equal
  to the query dtype, `rot_dim/2`, the strides and `rope_dim_offset` all multiples of 4, and 8-byte-aligned
  query/key/cache pointers. Everything else (fp32, mixed cache dtype, GPT-J, misaligned) keeps the
  original kernel unchanged.
- **Bitwise identical** results to the baseline: [`scripts/rope_dump.py`](scripts/rope_dump.py) and
  [`scripts/rope_compare.py`](scripts/rope_compare.py) cover 2400 cases (bf16/fp16/fp32 × cache dtype × NeoX/GPT-J ×
  head configs incl. GQA × head 64/128 × rot 32/128 × 1/7/333 tokens × offset 0/16 × inverse × with/without key).
  **0 differ**. Note that an earlier draft of the dispatch also covered fp32 caches, and those differed in
  1-ulp cases because nvcc contracted `x*c - y*s` into an FMA differently. That draft was dropped.
- Assumption, the same as the baseline's de facto contract: `query` and `key` do not alias.

## 5. Volta verification (rope)

[`scripts/verify_rope.py`](scripts/verify_rope.py) runs `volta compare` on the baseline
`ptx/baseline/pos_encoding_kernels.ptx` against `ptx/candidate/pos_encoding_kernels.ptx` (sha256 in
[`volta/rope/summary.json`](volta/rope/summary.json)). Every instance uses `--sample 0`, so the whole written
footprint of `q` and `k` is checked, along with a separate `volta analyze` safety run for each side. Launch
shapes are exactly what the host code dispatches: the baseline block `min(nh*rot/2, 512)` and the candidate block
`min(roundup32(items), 256)`. **All 15 instances report `EQUIVALENT`; all 30 safety runs report
`no data races or deadlocks detected` with the expected written-element counts.**

| Instance | dtype | heads q/kv | head, rot | key | offset | inverse | elements | Used by benchmark |
|---|---|---|---|---|---|---|---:|---|
| bench-bf16-h32 | bf16 | 32/32 | 128, 32 | yes | 0 | 0 | 2048 | **yes** |
| bench-bf16-h48 | bf16 | 48/48 | 128, 32 | yes | 0 | 0 | 3072 | **yes** |
| bench-bf16-h48-grid4 | bf16 | 48/48 | 128, 32 | yes | 0 | 0 | 3072 | **yes** (grid 4) |
| fp16-h32 / fp16-h48 | fp16 | 32/32, 48/48 | 128, 32 | yes | 0 | 0 | 2048 / 3072 | no |
| bf16/fp16-gqa-32-8 | both | 32/8 | 128, 32 | yes | 0 | 0 | 1280 | no |
| bf16/fp16-fullrot-8-1 | both | 8/1 | 128, 128 | yes | 0 | 0 | 1152 | no |
| bf16-nokey-32 | bf16 | 32/– | 128, 32 | no | 0 | 0 | 1024 | no |
| bf16/fp16-inverse-32 | both | 32/32 | 128, 32 | yes | 0 | 1 | 2048 | no |
| bf16-offset16-32 | bf16 | 32/32 | 128, 32 | yes | 16 | 0 | 2048 | no |
| bf16-hs64-rd64-16-4 | bf16 | 16/4 | 64, 64 | yes | 0 | 0 | 1280 | no |
| bf16-h64-rd64-128-128 | bf16 | 64/64 | 128, 64 | yes | 0 | 0 | 8192 | no |

**What this proves.** For each listed concrete configuration, Volta symbolically executes CTA 0 (token 0)
of both PTX kernels. Each written q/k element of the candidate is the same real-valued expression of the
symbolic inputs (q, k, cache) as the baseline's, the written footprints are identical, and neither kernel
has a data race or deadlock in its CTA.

**What it does not prove:**
- IEEE bit-exactness, because Volta works over the reals. Bit-exactness is covered by the 2400-case GPU test above.
- Other CTAs. Volta assumes CTA symmetry, and both kernels use the same `blockIdx.x = token` mapping, so this is
  the checker's standard assumption rather than a gap specific to this change.
- Data-dependent positions. `positions` is a Volta `index` array (`positions[t] = t`), so the proof uses
  cache row 0, and both kernels compute the cache row address by the identical `cache + pos*rot_dim`.
- Head counts and strides beyond the 15 instances.

**Negative controls** ([`scripts/negative_controls.py`](scripts/negative_controls.py),
[`volta/rope-negative/summary.json`](volta/rope-negative/summary.json)):

| Mutant | Result |
|---|---|
| every `sub.f32`→`add.f32` | `NOT EQUIVALENT: 1536 mismatched element(s)` |
| dropped last vector store | `output shape mismatch` |
| first `sub.f32` only, `inverse=1` config | `NOT EQUIVALENT: 384` |
| same mutant, `inverse=0` | `EQUIVALENT` |

The last row is expected: nvcc emits separate inverse/non-inverse paths, and Volta checks only the path the
concrete config executes. This is why inverse=1 has its own instances.

**PTX ↔ binary correspondence.** Assembling the proof PTX with `ptxas -arch=sm_90 -O3` gives SASS
identical, instruction for instruction, to the SASS in the benchmarked `.so` for all four kernels (baseline and
candidate, bf16 and fp16): [`results/ptx-audit/sass-correspondence.json`](results/ptx-audit/sass-correspondence.json).

## 6. Official benchmark results

Protocol ([`scripts/bench_official.py`](scripts/bench_official.py)): unmodified official script; A = baseline
build, B = candidate build; one A/A pair (baseline vs baseline) and then **5 pairs in alternating order** (AB, BA, AB, BA, AB).
Before every run the script requires a GPU with no compute process, 0% utilization and 0 MiB (checked twice, 2 s apart).
The candidates are the highest idle id among 7..4, per the coordinator's update; GPUs 0–3 were never used. During every run a
monitor samples `nvidia-smi --query-compute-apps` about once per second. A run is **contaminated** if any foreign process appears
on its GPU or the after-state shows one, and a contaminated run excludes the whole pair, which is then redone. A pair is
also redone if its two runs landed on different GPUs. Excluded runs are kept, renamed `*.excluded-*`. Every run
records the command, cwd, log sha256, the `.so` sha256, and GPU state before and after (util, memory, SM/mem clocks,
temperature, power, compute apps). The machine was heavily shared during this session: about 56 min waiting for an idle GPU,
and 18 rope and 10 relu runs excluded, most because foreign processes appeared mid-run and a few because a pair
was split across GPUs. The first attempt
([`bench/rope-official-abba/NOTE.md`](bench/rope-official-abba/NOTE.md)) predates the during-run monitor and is superseded.

### 6a. Main result: `benchmark_rope.py` (defaults: bf16, NeoX, head 128, rotary_dim 32; 32 shapes)

All 10 A/B runs ran on **GPU 7** and the A/A pair on **GPU 5**, with no foreign process at any sample. SM clock was 1980 MHz and
memory 2619 MHz after every run. Metric: the script's "vLLM (us)" column, which is triton `do_bench` median and includes the two
`clone()`s inside the lambda. Raw: [`bench/rope-official-abba-v2/`](bench/rope-official-abba-v2), summary
[`summary.json`](bench/rope-official-abba-v2/summary.json).

- **Geomean speedup over the 32 shapes: 1.069x** (median of the 5 per-pair geomeans;
  min 1.054, max 1.081). The geomean of the per-shape median ratios is 1.069.
- **A/A noise:** geomean 0.9967. Per-shape A/A ratios range 0.899–1.118.
  The small-shape ratios (batch 1–4, below about 25 us) are within this noise. Shapes with batch ≥ 16 show a consistent
  1.07–1.17x with tight min–max.
- **Kernel-only** (single torch-profiler run, supplementary, not the main metric;
  [`bench/explore/rope_breakdown_cand.txt`](bench/explore/rope_breakdown_cand.txt) vs
  [`…baseline.txt`](bench/explore/rope_breakdown_baseline.txt)): the rotary kernel speeds up 1.21–1.54x, for example 274.9 → 221.6 us at
  64x512x48, which reaches the 216–221 us memory-pattern floor.

| Shape (batch x seq x heads) | Baseline us (median of 5) | Candidate us (median of 5) | Paired speedup, median | min–max over 5 pairs | A/A ratio |
|---|---:|---:|---:|---:|---:|
| 1x64x32 | 13.15 | 12.58 | **1.048** | 0.889–1.189 | 1.093 |
| 1x64x48 | 14.11 | 14.40 | **1.038** | 0.963–1.141 | 0.986 |
| 1x128x32 | 14.50 | 13.63 | **1.028** | 0.934–1.105 | 0.995 |
| 1x128x48 | 15.33 | 14.85 | **1.032** | 0.954–1.172 | 1.000 |
| 1x256x32 | 16.77 | 17.25 | **0.974** | 0.954–1.085 | 0.953 |
| 1x256x48 | 18.59 | 18.24 | **1.037** | 0.968–1.046 | 0.899 |
| 1x512x32 | 19.55 | 18.69 | **1.046** | 1.043–1.055 | 1.118 |
| 1x512x48 | 24.03 | 23.90 | **0.993** | 0.962–1.046 | 1.001 |
| 4x64x32 | 16.77 | 17.50 | **0.958** | 0.952–1.092 | 0.903 |
| 4x64x48 | 18.05 | 18.27 | **0.988** | 0.920–1.088 | 0.899 |
| 4x128x32 | 21.41 | 18.66 | **1.153** | 0.943–1.160 | 0.947 |
| 4x128x48 | 23.23 | 22.08 | **1.047** | 1.011–1.152 | 0.921 |
| 4x256x32 | 27.84 | 26.27 | **1.073** | 1.057–1.137 | 1.044 |
| 4x256x48 | 36.08 | 32.54 | **1.112** | 1.061–1.125 | 1.063 |
| 4x512x32 | 46.53 | 40.54 | **1.130** | 1.070–1.154 | 1.050 |
| 4x512x48 | 61.95 | 56.29 | **1.100** | 1.099–1.134 | 1.000 |
| 16x64x32 | 29.89 | 25.44 | **1.174** | 1.086–1.181 | 1.004 |
| 16x64x48 | 35.52 | 32.54 | **1.091** | 1.025–1.118 | 1.062 |
| 16x128x32 | 45.50 | 40.45 | **1.124** | 1.100–1.130 | 1.024 |
| 16x128x48 | 61.92 | 56.51 | **1.096** | 1.065–1.134 | 0.984 |
| 16x256x32 | 83.07 | 76.26 | **1.101** | 1.073–1.129 | 1.001 |
| 16x256x48 | 115.17 | 107.10 | **1.075** | 1.063–1.104 | 0.987 |
| 16x512x32 | 149.63 | 138.66 | **1.086** | 1.076–1.093 | 0.994 |
| 16x512x48 | 215.58 | 200.27 | **1.077** | 1.076–1.077 | 1.008 |
| 64x64x32 | 82.05 | 76.35 | **1.088** | 1.069–1.107 | 1.025 |
| 64x64x48 | 115.74 | 106.98 | **1.081** | 1.080–1.093 | 0.984 |
| 64x128x32 | 150.91 | 137.31 | **1.093** | 1.082–1.108 | 0.993 |
| 64x128x48 | 215.62 | 201.22 | **1.072** | 1.067–1.078 | 1.000 |
| 64x256x32 | 283.65 | 259.46 | **1.092** | 1.086–1.103 | 1.000 |
| 64x256x48 | 412.35 | 385.70 | **1.071** | 1.066–1.073 | 1.000 |
| 64x512x32 | 551.14 | 506.24 | **1.089** | 1.083–1.091 | 0.997 |
| 64x512x48 | 809.28 | 757.68 | **1.068** | 1.066–1.069 | 1.002 |

### 6b. Secondary result: `benchmark_relu_squared.py --dtype float` (36 default shapes, non-default dtype flag)

Candidate: [`candidate-relu-flat-fp32.patch`](candidate-relu-flat-fp32.patch). For fp32 rows with `d/4 > 1024` and
≤256 tokens, a flat grid-stride kernel (128 threads, up to 8·SMs CTAs) replaces one-CTA-per-row. A single row then no longer
runs on one SM. All other cases keep the original kernel. Metric: "Custom Kernel" column (triton `do_bench_cudagraph`
median), converted here to us. All runs ran on GPU 7. Raw: [`bench/relu-fp32-official-abba/`](bench/relu-fp32-official-abba).

- **Geomean 1.080x** (pairs 1.078–1.081). **A/A 0.9997**, per-shape
  0.989–1.005.
- Per shape: **1.54x (1x1x9728) and 1.63x (1x1x12288)** are ≥1.5x, and 1.44–1.46x at 16 tokens × 9728/12288. Shapes not dispatched
  to the new path stay at 1.00.
- Volta scope is narrower than for rope ([`scripts/verify_relu.py`](scripts/verify_relu.py),
  [`volta/relu/summary.json`](volta/relu/summary.json)). It covers 5 instances (d = 9728, 12288 separate/in-place, plus 16384), all `EQUIVALENT`
  and race-free, but **only `num_tokens = 1` with both kernels launched as one CTA**. The production path uses several CTAs
  over the flat index space, which differs from the baseline's per-row CTA 0 footprint, so Volta cannot compare it. This also
  needs the non-default `--dtype float`: the default bf16 baseline kernel is outside Volta's fragment (section 2a).

| Shape (batch x seq x heads) | Baseline us (median of 5) | Candidate us (median of 5) | Paired speedup, median | min–max over 5 pairs | A/A ratio |
|---|---:|---:|---:|---:|---:|
| 1x1x3072 | 1.38 | 1.38 | **1.000** | 0.999–1.000 | 1.000 |
| 1x1x9728 | 2.25 | 1.46 | **1.539** | 1.534–1.540 | 1.000 |
| 1x1x12288 | 2.38 | 1.46 | **1.628** | 1.627–1.630 | 1.000 |
| 1x16x3072 | 1.65 | 1.65 | **1.001** | 0.999–1.001 | 1.000 |
| 1x16x9728 | 2.41 | 1.67 | **1.446** | 1.444–1.450 | 1.000 |
| 1x16x12288 | 2.51 | 1.73 | **1.457** | 1.447–1.461 | 1.003 |
| 1x64x3072 | 1.70 | 1.70 | **1.000** | 0.997–1.002 | 0.998 |
| 1x64x9728 | 2.64 | 2.34 | **1.129** | 1.114–1.133 | 1.002 |
| 1x64x12288 | 2.89 | 2.54 | **1.123** | 1.072–1.154 | 1.000 |
| 1x1024x3072 | 5.25 | 5.26 | **0.998** | 0.996–1.007 | 0.997 |
| 1x1024x9728 | 29.23 | 29.20 | **1.001** | 0.999–1.001 | 1.000 |
| 1x1024x12288 | 35.80 | 35.79 | **1.000** | 1.000–1.001 | 1.000 |
| 16x1x3072 | 1.65 | 1.66 | **1.001** | 0.996–1.005 | 1.001 |
| 16x1x9728 | 2.40 | 1.67 | **1.439** | 1.433–1.455 | 0.989 |
| 16x1x12288 | 2.51 | 1.73 | **1.451** | 1.441–1.461 | 1.000 |
| 16x16x3072 | 2.16 | 2.17 | **0.998** | 0.985–1.006 | 0.994 |
| 16x16x9728 | 4.57 | 4.48 | **1.018** | 1.004–1.042 | 0.993 |
| 16x16x12288 | 5.40 | 5.20 | **1.041** | 1.029–1.046 | 1.002 |
| 16x64x3072 | 5.22 | 5.25 | **0.992** | 0.988–1.006 | 0.997 |
| 16x64x9728 | 29.29 | 29.24 | **1.002** | 1.000–1.002 | 1.000 |
| 16x64x12288 | 35.78 | 35.80 | **0.999** | 0.999–1.001 | 1.000 |
| 16x1024x3072 | 136.35 | 136.34 | **1.000** | 1.000–1.000 | 1.000 |
| 16x1024x9728 | 420.33 | 420.33 | **1.000** | 1.000–1.000 | 1.000 |
| 16x1024x12288 | 529.95 | 529.96 | **1.000** | 1.000–1.000 | 0.999 |
| 128x1x3072 | 1.81 | 1.81 | **1.002** | 1.000–1.004 | 1.005 |
| 128x1x9728 | 3.19 | 3.11 | **1.025** | 1.020–1.043 | 0.998 |
| 128x1x12288 | 3.56 | 3.39 | **1.048** | 1.042–1.056 | 1.005 |
| 128x16x3072 | 18.54 | 18.54 | **1.000** | 0.999–1.002 | 1.003 |
| 128x16x9728 | 55.47 | 55.46 | **1.000** | 1.000–1.001 | 1.001 |
| 128x16x12288 | 68.73 | 68.73 | **1.000** | 0.999–1.000 | 1.000 |
| 128x64x3072 | 69.12 | 69.11 | **1.000** | 1.000–1.001 | 1.001 |
| 128x64x9728 | 212.17 | 212.17 | **1.000** | 0.999–1.000 | 0.999 |
| 128x64x12288 | 266.43 | 266.40 | **1.000** | 1.000–1.000 | 1.000 |
| 128x1024x3072 | 1074.92 | 1074.64 | **1.001** | 0.998–1.002 | 1.001 |
| 128x1024x9728 | 3462.09 | 3461.72 | **1.000** | 1.000–1.000 | 1.000 |
| 128x1024x12288 | 4375.31 | 4378.61 | **0.999** | 0.999–1.000 | 1.000 |


## 7. Tests

- vLLM's own `tests/kernels/core/test_pos_encoding.py` (compares `forward_cuda` with `forward_native` at
  the test's tolerances) was run unmodified with `pytest --import-mode=append`: **385 passed** on the baseline and
  **385 passed** on the candidate. A pytest plugin logs which `.so` was loaded:
  [`results/tests/test_pos_encoding-baseline.log`](results/tests/test_pos_encoding-baseline.log),
  [`results/tests/test_pos_encoding-cand-rope.log`](results/tests/test_pos_encoding-cand-rope.log).
  [`scripts/probe_test_dispatch.py`](scripts/probe_test_dispatch.py) confirms that the test's bf16 NeoX cases
  (flat, batch and padded layouts) launch the new kernel.
- The 2400-case bitwise baseline/candidate comparison (section 4).
- relu²: the upstream `test_activation.py` cannot be collected with the subset extension, because its imports need the CUTLASS MoE ops. [`scripts/relu_ref_test.py`](scripts/relu_ref_test.py) replicates its `test_activation` check for `ReLUSquaredActivation`: `_C::relu_squared` vs `forward_native` at the test's `get_default_atol/rtol`, plus `opcheck`, over the test's (7, 83, 2048 tokens; d 512, 13824; fp16/bf16/fp32) and the benchmark's sizes. Result: **120/120 pass** on both builds ([`results/tests/`](results/tests)). The bitwise baseline/candidate comparison over 270 cases (fp32/bf16/fp16, 1–1024 tokens, d up to 65536, including ±0/inf/nan) finds **0 differences** ([`results/equal/relu-compare.txt`](results/equal/relu-compare.txt)).

## 8. Other findings

- **Upstream bug: legacy `reshape_and_cache` drops heads.** The launcher uses
  `block = min(num_heads*head_size/x, 512)`, but the kernel has no loop over `h_block_idx`. With
  `num_heads*head_size/x > 512`, the heads beyond the first 512 chunks are never written. That includes the official
  `benchmark_reshape_and_cache.py` default of 128 heads × 128. Volta confirms it:
  [`volta/findings/`](volta/findings) shows 4096 written elements per cache for both 32 and 128 heads. The
  official benchmark therefore times a kernel that writes 1/4 of the data. A GPU check on the baseline build ([`scripts/reshape_bug_check.py`](scripts/reshape_bug_check.py), [`results/reshape_and_cache_head_coverage_gpu.json`](results/reshape_and_cache_head_coverage_gpu.json)) gives the same answer: 32/32 heads correct at 32 heads, but only 32/64 and 32/128 at 64 and 128 heads. It was not fixed here, because a fix changes semantics and is not an equivalence-preserving optimization.
- `benchmark_layernorm.py` and `benchmark_activation.py` do not exercise vLLM's CUDA kernels under their
  default configuration (section 2b).

## 9. Open issues

- **1.5x not reached.** The geomean ceiling of `benchmark_rope.py` is 1.36x even with a zero-cost kernel, and the
  candidate already sits at the access-pattern memory floor. Every other default-flag benchmark that times a vLLM CUDA kernel either
  uses a kernel outside Volta's lowering fragment (bf16 vectorized unpack, `ex2`, int/fp8 `cvt`) or is already near the
  bandwidth or latency floor.
- *(Superseded by section 13, which covers every CTA, all positions and bit-exactness.)* **Volta proofs are concrete-instance, CTA-0 proofs over the reals.** The scope is in section 5. In particular,
  positions are concretized and only the listed head and stride configurations are proven. IEEE equality relies on GPU tests.
- The secondary relu result relies on a non-default dtype flag. Its single-CTA proof scope (section 6b) is superseded by section 13.
- vLLM's Python tests were run against the subset extension. Tests whose imports need ops outside the subset could not be
  collected (relu, replaced by a replica). No end-to-end model run.
- Shared machine: the A/A pair and the A/B pairs of the rope run were on different GPUs (5 vs 7). Small rope shapes stay
  within ±10% A/A noise.
- The rope MLP idea patch was reconstructed after the measurement. Its numbers (340 vs 275 us) come from the session run
  and were not re-measured with that exact file.

## 11. Round 2 (coordinator follow-up): survey, Volta extension, default-dtype relu²

### 11a. Survey of the remaining official scripts

The per-script table is in [`survey-2.md`](survey-2.md). In summary, **no default official script that times a csrc kernel has
≥1.5x geomean headroom.** The largest per-shape opportunity found is `per_token_group_fp8_quant` at `group_size=64`.
That path takes the shared-memory kernel, while `group_size=128` has a register fast path, and it is 2.7x slower than
gs128 at 8192 rows. Its baseline is outside any narrow Volta extension. With `griddepcontrol` modeled as a no-op and
`cvta.shared` as an address window, the baseline smem kernel still fails on `prmt` byte permutes, and the register
kernel fails at evaluation with `guard predicate is symbolic`, because c10's software fp8 conversion branches on data.
The per-tensor fp8 path is also blocked: it is a memset + atomic-max + quant pipeline, and Volta has no atomics and
checks single kernels only. Those two experimental extensions were therefore **reverted** and are not part of the final patch.

### 11b. Volta extension (copy in `volta-ext/`; `cuda/repos/volta` untouched)

[`volta-ext.patch`](volta-ext.patch) (+93 lines, 3 files) models exactly two PTX forms. **Results that depend on it are labeled `[VOLTA-EXT]`.**

- `mov.b32 {lo, hi}, r` (**Unpack16**). Accepted only when `r` is a packed pair: Volta's existing representation of two
  16-bit memory granules read as one 32-bit word. The result is exactly `(lo, hi)`. A scalar word, concrete or symbolic,
  is rejected, so there is no bit-level float modeling.
- `mov.b32 r, {lo, hi}` (**Pack16**). Two symbolic halves become a packed pair. Upstream instead lowers this to
  `Shl`/`Or` bit terms that cannot be stored to 16-bit arrays. Two concrete halves give the exact integer `lo | hi<<16`,
  as before. A mixed concrete/symbolic pair is rejected.

Validation ([`scripts/validate_ext.sh`](scripts/validate_ext.sh), outputs in [`volta/ext-validation/`](volta/ext-validation)):
- Volta's own test suite: 489 passed, 0 failed, 2 ignored. That is identical to the upstream sources built with the same toolchain
  ([`logs/volta-ext-tests.log`](logs/volta-ext-tests.log), [`logs/volta-upstream-tests.log`](logs/volta-upstream-tests.log)).
- Paper corpus (`volta-bench all --iterations 1 --sample 1`): the **39/39 verdicts are identical** for the upstream and
  extended binaries ([`corpus-verdict-diff.txt`](volta/ext-validation/corpus-verdict-diff.txt)).
- All 15 rope instances re-run under the extension give identical verdicts (`EQUIVALENT`, race-free), and the rope negative
  controls behave identically.
- Lowering probe over the 6 baseline modules: **0** entries accepted upstream are rejected by the extension. 26 newly lower,
  for example 16-bit `rms_norm` VEC=8 and bf16/fp16 `relu²` vec128 ([`lowering-diff.json`](volta/ext-validation/lowering-diff.json)).
- Extension negative controls ([`volta/relu16-ext-negative/summary.json`](volta/relu16-ext-negative/summary.json)):
  swapping the unpack halves, swapping the pack halves, or `mul`→`add` all give **NOT EQUIVALENT**. Declaring the input
  as 4-byte elements, so that words are not pairs, makes the unpack fail with `non-pair symbolic word`.

### 11c. [VOLTA-EXT] `benchmark_relu_squared.py` at its default bf16 setting

Candidate: [`candidate-relu-flat-all-dtypes.patch`](candidate-relu-flat-all-dtypes.patch), on local branch `veriop-relu-sq-16bit`
and worktree `vllm-cand-relu16/`. It is the section 6b flat path enabled for all float dtypes, with the same
`d/vec > 1024 && tokens ≤ 256` dispatch.
- **Volta [VOLTA-EXT]**: 10 instances (bf16 and fp16 × d 9728/12288 separate/in-place, plus 16384), all `EQUIVALENT` and race-free
  ([`volta/relu16-ext/summary.json`](volta/relu16-ext/summary.json)). The scope is the same as 6b: `num_tokens=1` with a single CTA.
  Upstream Volta cannot check either side.
- **Bitwise:** 0/270 cases differ from the baseline build. **Reference test replica:** 120/120 pass.
- **SASS:** proof PTX and the benchmarked `.so` match instruction for instruction for the baseline bf16/fp16/fp32 vec kernels and the candidate flat kernels
  ([`results/ptx-audit/relu-sass-correspondence.json`](results/ptx-audit/relu-sass-correspondence.json)).
- **Official ABBA** (5 pairs plus A/A, all on GPU 7, monitored, no exclusions): **geomean 1.058x**
  (pairs 1.056–1.059). A/A is 1.0009, with per-shape ratios between
  0.982 and 1.048. The best shapes are 1.37x and 1.33x (single token, d = 12288/9728).
  Raw: [`bench/relu-bf16-official-abba/`](bench/relu-bf16-official-abba).

| Shape (batch x seq x d) | Baseline us | Candidate us | Paired speedup, median | min–max | A/A |
|---|---:|---:|---:|---:|---:|
| 1x1x3072 | 1.283 | 1.283 | **0.999** | 0.997–1.003 | 0.998 |
| 1x1x9728 | 1.958 | 1.467 | **1.334** | 1.329–1.340 | 1.000 |
| 1x1x12288 | 2.015 | 1.466 | **1.374** | 1.372–1.379 | 0.998 |
| 1x16x3072 | 1.530 | 1.529 | **0.999** | 0.999–1.002 | 0.999 |
| 1x16x9728 | 2.059 | 1.575 | **1.307** | 1.301–1.309 | 0.997 |
| 1x16x12288 | 2.145 | 1.608 | **1.330** | 1.328–1.341 | 0.999 |
| 1x64x3072 | 1.579 | 1.577 | **1.000** | 0.996–1.004 | 0.996 |
| 1x64x9728 | 2.191 | 1.928 | **1.137** | 1.128–1.141 | 1.011 |
| 1x64x12288 | 2.321 | 2.032 | **1.137** | 1.110–1.143 | 1.019 |
| 1x1024x3072 | 3.374 | 3.374 | **1.001** | 1.000–1.002 | 1.001 |
| 1x1024x9728 | 12.142 | 12.141 | **1.000** | 0.973–1.001 | 0.999 |
| 1x1024x12288 | 18.213 | 18.294 | **1.000** | 0.995–1.000 | 0.998 |
| 16x1x3072 | 1.538 | 1.538 | **1.000** | 0.997–1.001 | 1.000 |
| 16x1x9728 | 2.063 | 1.580 | **1.306** | 1.303–1.327 | 0.992 |
| 16x1x12288 | 2.146 | 1.612 | **1.330** | 1.324–1.335 | 0.989 |
| 16x16x3072 | 1.800 | 1.801 | **0.999** | 0.997–1.006 | 0.994 |
| 16x16x9728 | 3.144 | 3.101 | **1.009** | 1.007–1.030 | 0.984 |
| 16x16x12288 | 3.524 | 3.444 | **1.021** | 1.008–1.037 | 1.048 |
| 16x64x3072 | 3.343 | 3.376 | **0.999** | 0.986–1.000 | 0.988 |
| 16x64x9728 | 12.311 | 12.530 | **1.000** | 0.980–1.000 | 0.982 |
| 16x64x12288 | 18.295 | 18.293 | **1.000** | 1.000–1.007 | 1.007 |
| 16x1024x3072 | 68.454 | 68.451 | **1.000** | 1.000–1.004 | 1.005 |
| 16x1024x9728 | 219.095 | 219.107 | **1.000** | 1.000–1.000 | 1.000 |
| 16x1024x12288 | 266.923 | 266.951 | **1.000** | 1.000–1.000 | 0.999 |
| 128x1x3072 | 1.653 | 1.653 | **1.003** | 0.997–1.004 | 0.999 |
| 128x1x9728 | 2.460 | 2.416 | **1.012** | 0.995–1.032 | 1.008 |
| 128x1x12288 | 2.630 | 2.575 | **1.021** | 1.000–1.028 | 1.013 |
| 128x16x3072 | 5.255 | 5.253 | **1.004** | 0.996–1.012 | 1.007 |
| 128x16x9728 | 29.749 | 29.750 | **1.000** | 0.999–1.004 | 0.999 |
| 128x16x12288 | 35.988 | 35.941 | **1.001** | 1.000–1.004 | 1.002 |
| 128x64x3072 | 35.315 | 35.311 | **1.000** | 0.999–1.001 | 1.001 |
| 128x64x9728 | 110.946 | 110.948 | **1.000** | 1.000–1.001 | 1.000 |
| 128x64x12288 | 135.497 | 135.512 | **1.000** | 1.000–1.000 | 1.000 |
| 128x1024x3072 | 529.099 | 529.200 | **1.000** | 1.000–1.000 | 1.000 |
| 128x1024x9728 | 1731.395 | 1731.498 | **1.000** | 1.000–1.000 | 1.000 |
| 128x1024x12288 | 2119.568 | 2119.861 | **1.000** | 0.999–1.001 | 1.001 |

### 11d. Bottom line after round 2

There is still **no ≥1.5x geomean** on any official default benchmark. The verified results are: rope 1.069x (upstream
Volta), relu² bf16 default 1.058x ([VOLTA-EXT]), and relu² fp32 1.080x (upstream Volta, needs `--dtype float`). Per-shape
results reach 1.17x, 1.37x and 1.63x respectively. The opportunities with 2–3x headroom are fp8 group/per-tensor quant. They
are blocked by Volta model limits (data-dependent control flow in software fp8 conversion, atomics, multi-kernel pipelines,
byte permutes) that are not narrow front-end gaps, so they were not attempted.

### 11e. Round 3: group_size=64 ceiling (stopped)

If every gs=64 config of `benchmark_per_token_group_quant.py` ran at the gs=128 speed, the default-config geomean would be
only **1.27x** (70 configs; 1.62x within the 35 gs=64 configs). Small configs are bound by Python/launch overhead in the
script's unsynchronized eager loop. 1.5x is unreachable even in this best case, so the attempt stopped at step 1. Details
are in [`survey-2.md`](survey-2.md#round-3-ceiling-check-per_token_group_quant-group_size64-stopped-at-step-1).

## 12. Layout

- `vllm/` is the pinned upstream checkout. `vllm-candidate/`, `vllm-cand-relu/` and `vllm-cand-emb/` are local worktrees (branches not pushed).
- `ext/`, `scripts/`: the subset bindings, build, PTX, Volta, benchmark and test scripts. `scripts/record.py` is copied from `cuda/record.py`: it records command, cwd, exit code and log sha256 for every Volta and benchmark run.
- `ptx/`: baseline and candidate PTX used by every proof. `volta/`: probe, proofs, negative controls and findings logs.
- `bench/`: official-benchmark raw logs, parsed JSON, GPU state and summaries. `bench/explore/` holds single-run exploration data.
- `volta-ext/`: patched copy of Volta (its git diff is `volta-ext.patch`). `vllm-cand-relu16/`: bf16/fp16 relu² candidate worktree. `build/baseline2|3*`, `pkg/baseline2|3`: survey-only builds with extra ops and the CUTLASS capability shim. They are not used by any reported A/B.
- `build/`, `pkg/`, `venv/`: build products (`.so` sha256 in `pins.json`) and environment.
- `volta-final/` and `final-verification/`: the combined checker and the final per-CTA verification (section 13).
- `vllm-cand-rc/`, `volta/rc-sweep/`, `volta-cta-ix/`: an unrelated round-3 `reshape_and_cache` candidate that a previous agent started. It was **abandoned unverified**: it is not part of any result, and it was neither continued nor checked.

## 13. Final verification

This wrap-up adds no new optimizations and no new benchmarks. It decides, for each existing result, whether it
meets the binary standard. To be VERIFIED, a result must satisfy three conditions:
- Equivalence covers every CTA of every default config that the official script times, all input values, and all
  valid `positions`.
- The checker is either unmodified, or its modifications pass its own test suite with unchanged verdicts.
- There are no unproved assumptions beyond the checker's trusted semantics.

Everything is in [`final-verification/`](final-verification/). The overall record is
[`summary.json`](final-verification/summary.json). No GPU was used.

| Result | Verdict | Official configs covered | CTAs checked | Outputs bit-identical |
|---|---|---|---|---|
| rope `benchmark_rope.py` (defaults, bf16) | **VERIFIED** | 32/32 | 163,200 / 163,200 CTAs, each for all positions in [0, 8192) | 417,792,000 |
| relu² `benchmark_relu_squared.py --dtype float` | **VERIFIED** | 36/36: 12 take the flat path, 24 run unchanged code | flat path: all 962 baseline CTAs and all 7,755 candidate CTAs, in 20,683 pair windows; unchanged path: 479,713 CTAs run identical code | flat path: 10,589,696 |
| relu² `benchmark_relu_squared.py` (default bf16) [VOLTA-EXT] | **VERIFIED** | 36/36: 12 flat, 24 unchanged | flat path: 962 baseline and 6,310 candidate CTAs, in 10,582 windows; unchanged path: 479,713 CTAs | flat path: 10,589,696 |

### 13.1 Checker: `volta-final/`

`volta-final/` is a local clone of Volta `5d7530c`; `cuda/repos/volta` is untouched. It has three commits:
1. The llama.cpp `volta-cta.patch`, byte-identical: `--cta`, `compare --syntactic`, and `FOOTPRINT`.
2. `volta-ext.patch` (Pack16/Unpack16; the same +/- lines). Only bf16 relu² uses it. Neither rope kernel nor the
   fp32 relu kernels contain the `mov.b32 {..}` forms it lowers.
3. A new layer, [`volta-final-ranged-restrict.patch`](final-verification/volta-final-ranged-restrict.patch):
   - `--index-range NAME=LO:HI` handles ranged integer inputs (section 13.2). It is opt-in and inert otherwise.
   - `compare --cta2` and `--param2` give the optimized kernel its own CTA and parameters.
   - `compare --restrict NAME=LO:HI` compares only an index window. It first prints both kernels' full per-CTA
     footprints as `FOOTPRINT-RANGES`.

The full diff is [`volta-final.patch`](final-verification/volta-final.patch). Binary sha256: `7d4a05d8…dc32f3`.

No-regression evidence:
- **Volta's own test suite:** 489 passed, 0 failed, 2 ignored, with per-test outcomes identical to pristine
  `5d7530c` ([`testsuite-volta-final.log`](final-verification/volta-final-evidence/testsuite-volta-final.log)).
- **Replay:** all 98 recorded CTA-0 runs of the earlier rounds were replayed
  ([`replay-cta0/summary.json`](final-verification/replay-cta0/summary.json)). These are the rope runs, rope
  negatives and fp32 relu runs (upstream Volta), and the bf16/fp16 relu and extension negatives (volta-ext). Each
  was run with unchanged flags and again with an explicit `--cta 0,0,0`. All 196 outputs are byte-identical to the
  recorded logs after masking wall-clock times, with the same exit codes. The earlier verdicts are therefore
  unchanged.

### 13.2 rope: every CTA and every position

**Positions.** `positions[t]` selects the cos/sin cache row, so the kernels' addresses depend on data. Upstream
Volta requires concrete addresses. The earlier runs used Volta's `index` kind, which fixes `positions[t] = t`, so
each run checked one position only. The new `--index-range pos=0:8192` mode instead keeps `pos[t]` as a symbolic
integer that is known only to lie in [0, 8192). One symbolic run per CTA then covers every valid position. Global
loads whose address is an exact affine function `c0 + c1*pos[t]` become uninterpreted reads `cache[k0 + k1*pos[t]]`.

The soundness argument is in the header of `crates/volta_analysis/src/eval/ranged.rs`. Each point below is enforced
by the checker:
- **pos only forms load addresses.** A value derived from `pos` may only form global-load addresses. Storing such a
  value is rejected, and so are guards and other control values that depend on it (upstream already rejects those).
- **Only exact integer arithmetic.** The address may be built only from nodes created by integer add, sub, mul,
  shl-by-constant or neg instructions of width ≥ 32. Float arithmetic, sub-32-bit integer arithmetic or conversions,
  bit operations, division, min/max and select are all rejected.
- **No wrap-around.** Every intermediate value lies in [0, 2^31) for all pos in range. Width changes and wrap-around
  therefore cannot make the typeless expression differ from the hardware's register values.
- **Address safety for every pos.** For every pos in range, the access stays inside one declared `in` array and is
  naturally aligned and element-aligned.
- **The cache is read-only.** The array is never written in the run, which is checked in both orders. The read
  therefore returns the initial cache content at that index. Volta compares uninterpreted reads only by
  syntactically equal canonical indices, which is sound.

Both kernels compute exactly `cache[32*pos[t] + j]`, as the `SYNTACTIC` identity of the outputs, including the
index expressions, confirms.

**Per-CTA runs** ([`scripts/sweep_rope.py`](final-verification/scripts/sweep_rope.py)): one `volta compare --cta t`
per token t, over the real grid of B·S CTAs. The blocks are 512 (baseline) and 256 (candidate), as the host code
dispatches. The rest of the launch model:
- The cache is [8192, 32] bf16, NeoX, with `rope_dim_offset=0` and `inverse=0`. These were recorded on the CPU from
  the benchmark's own `get_rope` call ([`launch-params-rope.json`](final-verification/launch-params-rope.json)).
- `positions` is the whole int64 array.
- For `q` and `k`, only token t's row is declared, while the kernel pointer parameters are the real tensor bases.
  Any access by CTA t outside its own row is therefore an out-of-bounds error. A passing run thus also proves that
  CTA t reads and writes only its own rows; it reads `positions` and the cache, which are never written.
- The CTAs are therefore independent, and the kernel output is the union of the per-CTA results.

A CTA passes only if all of the following hold:
- exit 0;
- `EQUIVALENT` over all n = 2·nh·32 written elements;
- `SYNTACTIC n/n`;
- both footprints are n=nh·32 within the row.

**Result:** 32/32 configs and **163,200/163,200 CTAs pass**, in about 4 min wall time
([`sweep-rope/summary.json`](final-verification/sweep-rope/summary.json); one TSV row per CTA, resumable).

**Negative controls** ([`negatives/rope/summary.json`](final-verification/negatives/rope/summary.json)) run through
the same driver and criteria. Every mutant is rejected exactly where expected:

| Mutant | Result |
|---|---|
| CTA 37 only computes cos·x + sin·y (config 1x64x32) | only CTA 37 fails (NOT EQUIVALENT); the other 63 pass |
| the same mutation at CTA 31000 (64x512x48, 32,768 CTAs) | only CTA 31000 fails |
| reads cache row pos+1 | every CTA errors: the access leaves the cache for pos = 8191 |
| reads `cache[16*pos + j]` (always in range) | every CTA NOT EQUIVALENT |
| reads `positions[t+1]` | every CTA NOT EQUIVALENT, or out of bounds at the last CTA |
| branches on `pos == 1234` (a single-position bug) | every CTA errors: symbolic guard |
| adds `float(pos)` to an output | rejected (float conversion of a ranged value) |
| round-trips pos through 16 bits | rejected (narrow conversion) |
| address arithmetic through `add.f64` | rejected |
| writes the cache (symbolic or concrete address) | rejected |
| unfused `sin*x + cos*y` (equal over the reals, different in IEEE) | `EQUIVALENT`, but `SYNTACTIC` 1792/2048, so every CTA fails |

### 13.3 relu²: every CTA of both kernels

The official script calls `_C.relu_squared(out, x)` with T = batch·seq rows and d ∈ {3072, 9728, 12288}. With the
candidate patch, the host takes the flat path only when d/vec > 1024 and T ≤ 256; the fp32 patch additionally
requires dtype float. That holds for 12 of the 36 configs per dtype. The flat launch is G = min(⌈T·d/vec/128⌉,
8·132 SMs) CTAs of 128 threads; "NVIDIA H100 80GB HBM3" is the 132-SM SXM part. In every other config, the candidate
`.so` launches the **unchanged** `activation_kernel<T, relu², true, false>` with the unchanged launch.

- **Unchanged path** (24 configs per dtype, 479,713 CTAs): the entry's PTX in the candidate module equals the
  baseline's after renaming the function-local `$L__BB<f>_` labels, because nvcc numbers them module-wide.
  [`sass-unchanged-relu-kernels.json`](final-verification/sass-unchanged-relu-kernels.json) also confirms that
  this entry's SASS is identical in the baseline `.so` and in both candidate `.so` files. Identical code with an
  identical launch is equivalent on every CTA and every input.
- **Flat path** (12 configs per dtype; [`scripts/sweep_relu.py`](final-verification/scripts/sweep_relu.py)): the
  two kernels map CTAs to elements differently. The baseline uses one row per CTA; the candidate uses grid-stride
  128-vector chunks. The sweep therefore runs one
  `volta compare --cta a --cta2 c --restrict out=lo:hi` for every pair (baseline CTA a, candidate CTA c) whose
  footprints intersect, restricted to exactly that intersection.

  `x` is declared `inout` and checked, so "x is never written" is verified for every CTA of both kernels.

  A window passes only if all of the following hold:
  - `EQUIVALENT` and `SYNTACTIC` over its hi-lo+1 elements;
  - `RESTRICT` shows ref_n = opt_n = hi-lo+1;
  - both kernels' **full** per-CTA footprints (`FOOTPRINT-RANGES`) equal the footprints predicted from the launch;
  - `x` is unwritten.

  The summary then checks three more properties:
  - The windows partition [0, T·d).
  - Every CTA of both grids occurs in some window, so every CTA's observed footprint matched the prediction.
  - The predicted footprints of each kernel are pairwise disjoint and cover the output.

  Neither kernel reads `out`: in the PTX, the only load is from `x`. A read of another CTA's cell would be
  `Undefined` in Volta and could not pass. Neither kernel uses shared memory. So the CTAs are independent, and
  the output is the union of the windows.

  **Result:**
  - fp32: 20,683/20,683 windows pass.
  - bf16 [VOLTA-EXT]: 10,582/10,582 windows pass.
  - Both dtypes: all 12 configs pass every coverage check, with about 2 min total wall time
    ([`sweep-relu-fp32/summary.json`](final-verification/sweep-relu-fp32/summary.json),
    [`sweep-relu-bf16/summary.json`](final-verification/sweep-relu-bf16/summary.json)).

**Negative controls** ([`negatives/relu/summary.json`](final-verification/negatives/relu/summary.json)):

| Mutant | Config | Result |
|---|---|---|
| fp32, CTA 700 only outputs 2·relu(x) for lane 0 | 16x16x9728, G = 1056 | exactly the 4 windows of CTA 700 fail |
| bf16, the same mutation at the last CTA (1055) | 16x16x12288 | exactly its 2 windows fail |
| fp32, grid stride (G−1)·128 instead of G·128 (per-element values unchanged, but the CTAs overlap) | 16x16x9728 | all 4,864 windows fail the footprint check |

### 13.4 Bit-exactness

Volta reasons over the reals, so every passing CTA or window additionally requires `SYNTACTIC n/n`: each output's
expression tree must be identical node for node. [`scripts/ieee_audit.py`](final-verification/scripts/ieee_audit.py)
([`ieee-audit.json`](final-verification/ieee-audit.json)) checks the compared PTX, and all three pairs conform:
- **One opcode per node kind.** The only float operations are `mul.f32`, `sub.f32`, `fma.rn.f32` and `max.f32`.
  Each Volta node kind comes from exactly one opcode string across both kernels, so there is no hidden
  `.ftz`/`.sat`/rounding variant. No operand is ever constant-folded.
- **Conversions.** The only conversions are exact `cvt.f32.bf16` and `cvt.rn.bf16.f32`. The widening is applied
  only to loaded (or unpacked loaded) values. The rounding result goes only to stores, directly or through a pack.
  So there is no intermediate rounding that Volta's identity model of `cvt` could hide.
- **Self-test.** The audit flags a planted intermediate bf16 round-trip and a `mul.ftz.f32`.

Identical trees therefore mean the same IEEE operations on the same operands. The output bits are identical for
every input bit pattern, including NaN, Inf and subnormals.

### 13.5 Trust base

The following remain trusted rather than machine-checked. The llama.cpp result relies on items 1–3 in the same way.
1. **Volta's PTX semantics, including the three extension layers.** Layers 1–2 are as validated in their own
   rounds. Layer 3 adds real semantics only for `--index-range`, which only rope uses. Its soundness rests on the
   argument in section 13.2: it is enforced in code and validated by the test suite, the replay and the 12 rope
   negatives, but it is not a mechanized proof. `--cta2`, `--param2` and `--restrict` only choose kernel 2's CTA and
   parameters and filter which output indices are compared.
2. **The launch model.** This covers grid, block, kernel parameters, array shapes and the dispatch condition. It
   was derived from the reviewed host C++ (baseline and patched), plus the CPU-only `get_rope` probe for rope and
   the 132-SM count of the H100 SXM for the relu² flat grid. The host code itself is not formally verified.
3. **The checked PTX is the code that runs.** `ptxas` of the proof PTX gives SASS identical to the benchmarked
   `.so` (sections 5 and 11c, and `sass-unchanged-relu-kernels.json`); nvcc, ptxas and the driver are trusted.

Resources: CPU only, at most 96 processes, affinity 0–159 and 192–351, and a pause if the load exceeded 300 (the
observed load stayed between 76 and 113).

Reproduce:

```bash
cd final-verification/scripts
python3 replay_cta0.py && python3 ieee_audit.py
python3 sweep_rope.py && python3 negatives_rope.py
python3 sweep_relu.py fp32 && python3 sweep_relu.py bf16 && python3 negatives_relu.py
# volta-final: cargo build --release && cargo test --workspace --release (489 passed, 2 ignored)
```
