# Survey 2: the remaining official kernel benchmarks

Each row is one unmodified official script at its **default flags**, run once on an idle GPU from 7..4 with GPU state recorded
(`bench/survey2/*.gpu-before.txt` / `*.gpu-after.txt`). The vLLM subset extension is `pkg/baseline2`, or `pkg/baseline3`,
which adds the fp8/int8 quant ops plus an import-time shim that makes the CUTLASS capability queries return False.
Volta status comes from per-entry lowering probes (`volta/probe/*.json`). "Upstream Volta" is cuda/repos/volta @ 5d7530c.
"ext1" is the copy in `volta-ext/` with only `griddepcontrol` modeled as a no-op, used here only to find the next blocker.

| Script (default flags) | What the default run times | Headroom (measured) | Volta on the baseline PTX | Verdict |
|---|---|---|---|---|
| `benchmark_reshape_and_cache_flash.py` | csrc `reshape_and_cache_flash_kernel` (bf16, kv auto), NHD + HND, 2..65536 tokens; cudagraph replay + sync each iteration | NHD reaches 2.93 TB/s (88% of 3.35) at 65536 tokens and HND 2.68 TB/s. Up to 128 tokens it sits at a 9.5–12.8 us sync/graph floor (bandwidth 27–1550 GB/s, but not kernel-bound). Best case is about 1.25x on the large HND shapes only. | accepted (all 3 non-fp8 dtypes) | no 1.5x headroom |
| `benchmark_vocab_parallel_embedding.py` | csrc `vocab_parallel_embedding_kernel<int,uint4>` (eager, `do_bench`) | about 5.5 us latency floor for ≤64 tokens. Large shapes reach 2.4–2.5 TB/s (≤1.3x). An unroll-4 candidate gave no gain (README section 3). | accepted | no |
| `benchmark_cp_gather.py` | csrc `cp_gather_cache`, `cp_gather_and_upconvert_fp8_kv_cache`, `gather_and_maybe_dequant_cache` (default dtype fp8) | the script reports 2.16–2.88 TB/s. The worst case is 60k tokens at 2.16–2.22 TB/s, so ≤1.4x even at roofline. | gather (byte copy) not probed. Upconvert and dequant use fp8 `cvt`, which upstream Volta does not parse. | no |
| `benchmark_mla_k_concat.py` | **PyTorch only** (`torch.cat` vs direct copy). No csrc kernel. | – | – | not applicable |
| `bench_concat_mla_q.py` | csrc `ConcatMLAQKernel` (v8 path) | 8192 tokens reach 2.98 TB/s. 8 tokens take 2.8 us (launch floor). 128 tokens are L2-resident at 3.25 TB/s. | not probed (already ≤1.15x headroom) | no |
| `benchmark_mrope.py` | MRoPE `forward_cuda`, which is Triton (`triton_mrope`), not csrc | – | – | not applicable |
| `benchmark_vit_bilinear_pos_embed.py` | native PyTorch vs **Triton**. No csrc kernel. | – | – | not applicable |
| `benchmark_moe_align_block_size.py` | csrc `moe_align_block_size` (`_moe_C`) | not measured. The script's import of `vllm.model_executor.layers.fused_moe` pulls in `vllm.vllm_flash_attn` and CUTLASS ops that the subset build does not provide. | **rejected**: the large-batch kernel uses `atom.add` (Volta has no atomics). The small-batch kernel lowers, but its shared-memory addresses depend on `topk_ids` values, which Volta can only concretize (`index` arrays), so a proof would cover one concrete input. | not checkable |
| `benchmark_moe_permute_unpermute.py` | `_moe_C` permute/unpermute + `fused_topk` | not run: needs `ray`, a Mixtral HF config and `_moe_C` permute kernels | `topk_softmax` (inside `fused_topk`) is rejected for `ex2` (150 entries) and b16 unpack. Permute is a data-dependent scatter. | not checkable |
| `benchmark_relu_squared.py` (bf16 default) | csrc `activation_kernel<bf16, relu², vec128>` | large shapes reach 3.04 TB/s. Single- and 16-token shapes with d=9728/12288 take 1.96–2.12 us vs Triton's 1.45–1.88 us (≤1.38x). Everything else is at roofline or the 1.3 us launch floor. By analogy with the fp32 flat kernel, the projected geomean is about 1.07–1.08x. | **rejected**: b16 unpack `mov.b32 {%rs,%rs}` | no 1.5x geomean headroom |
| *(extra)* `benchmark_per_token_quant_fp8.py` | QuantFP8 `forward_cuda`, which is csrc fp8 quant, plus `x.clone()`; cudagraph | **per-tensor**: 7.1 us at batch 1 vs 2.7 us for torch.compile. That is 3 GPU ops (memset, atomic absmax, quant). **Group (1,64)**: 2x slower than (1,128) at large shapes (7168x1024: 40.1 vs 21.9 us). The script's geomean summary crashes upstream (pandas `KeyError 'Torch (Compiled)'`, see the log). | **rejected**: atomics (`atom.global.min`) in the absmax reduction, fp8 `cvt` forms not parsed, b16 unpack. Per-tensor is also a 3-op pipeline that a single-kernel equivalence check cannot cover. | large per-shape headroom, but not checkable |
| *(extra)* `benchmark_per_token_group_quant.py` | csrc `per_token_group_fp8_quant` (eager loop without sync, so small shapes are CPU-bound at 15–20 us) | **group_size 64 is 2.7x slower than group_size 128**: 8192x6144 takes 206 vs 77 us (0.75 vs 2.0 TB/s), 8192x7168 takes 240 vs 88 us. gs=128 uses a register fast path; gs=64 falls back to a shared-memory kernel with 16 threads per group. 1024-row gs64: 27–35 us vs 17–22 us. Projected whole-script geomean over 56 configs ≈1.15–1.2x, because small configs are CPU-bound. | gs64 baseline (`per_token_group_quant_8bit_kernel<bf16,e4m3>`) is **rejected** by upstream Volta for `griddepcontrol.wait` (PDL), then (ext1) `cvta.shared` generic shared addressing and b16 unpack. The bf16 register kernel is rejected for `griddepcontrol` then b16 unpack. Float-input register kernels lower. | **highest per-shape headroom (2.7x)**, blocked by front-end gaps |

**Conclusion of the survey.** No default official script that times a csrc kernel has ≥1.5x **geomean** headroom.
Large shapes run at 75–90% of HBM bandwidth, and small shapes sit at launch, sync or CPU floors that a kernel change cannot
remove. The largest per-shape opportunity is `per_token_group_fp8_quant` at `group_size=64` (2.7x at 8192 rows), which
the register fast path covers for `group_size=128` but not 64. Verifying it needs Volta front-end extensions:
`griddepcontrol` as a no-op, b16x2 unpacking of 32-bit words, and generic addressing of shared memory.

## Round 3 ceiling check: `per_token_group_quant` group_size=64 (stopped at step 1)

Question: under the official `benchmark_per_token_group_quant.py` defaults, what is the geomean if every gs=64 case ran at
the measured gs=128 speed for the same shape, col_major, ue8m0 and dtype? Data: the single default survey run
(`bench/survey2/benchmark_per_token_group_quant.txt`, 70 configs = 56 fp8 + 14 int8, GPU 5 idle before and after). The
computation is in [`bench/survey2/ptgq_gs64_ceiling.json`](bench/survey2/ptgq_gs64_ceiling.json).

- **Ceiling geomean over all 70 default configs: 1.27x, below 1.5x.** Among the 35 gs=64 configs alone it would be 1.62x
  (max 3.34x at 8192x6144).
- The reason: the script times an eager loop with no sync, so the 52 configs with ≤1024 rows sit at a 12–35 us
  Python/launch floor. There gs64 and gs128 differ by ≤1.4x and the kernel is not the bottleneck. Only the 18
  8192-row configs are kernel-bound.
- Per the stop rule, no PTX/arch change, Volta extension (fp8 `cvt`, `prmt`, PDL, `cvta.shared`) or kernel work was done
  for this lead.
