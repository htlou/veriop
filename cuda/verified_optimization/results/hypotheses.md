# Ranked RMSNorm hypotheses, before implementation

Baseline evidence: `bench/baseline-summary.json`, production `norm.cu`, the
emitted PTX, and `volta/llama-self-4096.log`. 4096 x 128 takes 6.259 us median;
4096 x 2048 takes 64.027 us. 8192 x 2048 takes 109.793 us. Single-row timings
are about 5-6 us. There are two scalar input-load passes, one output-store pass,
one block barrier and two levels of warp reduction. Both compiled block sizes
use 32 registers/thread and 128 bytes of dynamic shared memory, with no local
memory and 100% theoretical occupancy. A 1024-thread CTA permits two active
blocks/SM, versus eight for 256 threads.

The large-row measurements scale approximately with data volume, consistent
with memory throughput limiting that regime. Small shapes have a substantial
launch/scheduling floor. This is a hypothesis from timings and code, not an
achieved-occupancy or DRAM-counter result. Nsight counter access was denied.
All GPUs are shared and busy; the 8192 x 128 run has conspicuous dispersion.

| Rank | Mechanism and hypothesis | Target and expected performance effect | Expected PTX change | Expected Volta difficulty |
|---|---|---|---|---|
| 1 | Launch configuration: use existing 256-thread kernel through 8192 columns | Fewer warps/reduction participants per row; more independent row CTAs resident. Could hurt single-row latency. | Select existing 256 specialization rather than 1024, different loop strides and shared reduction size. No arithmetic expression change. | Moderate: compare different block dimensions, same complete row footprint; sum reassociation should canonicalize under the real model. |
| 2 | Register reuse: retain each thread's inputs between reduction and output | Remove the second input-load pass; avoid repeated L1/L2 requests. Fixed-size tiles for selected public dimensions, generic fallback for others. Register pressure may offset the gain. | Additional live registers; fewer global loads; possible spill loads if too large. | Moderate: fixed register arrays easy, spills/local memory may challenge lowering; no smaller valid domain. |
| 3 | Vectorized memory access: process aligned float4 groups | Reduce global-memory instruction count while preserving coalescing; contiguous/aligned fast path with existing scalar fallback. | ld/st.global.v4 and reorganized scalar reduction operands. | Moderate: vector operations and permutations must be supported; output and alias footprint must stay complete. |
| 4 | Reduction work sharing: perform cross-warp reduction in one warp and broadcast | Avoid each warp repeating the same final reduction. Extra shared load and barrier may cost more than saved shuffles. | Fewer shfl.sync instructions, one shared result store, extra bar.sync and shared loads. | Higher: barrier placement and race checking are central; same output footprint remains expressible. |

First experiment: rank 1, restricted to the unscaled, non-fused RMSNorm launch
path. Keep all other APIs and fallback paths. Require repository tests and
complete 4096/8192-column cross-block-size Volta equivalence before timing the
candidate. Held-out timing shapes include 256 and 16384 columns and one-row
launches. Add intermediate column counts when evaluating the changed range.

No candidate is accepted from these hypotheses or from baseline-only timings.
