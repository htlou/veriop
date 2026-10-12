#!/usr/bin/env python3
"""Record reviewed intent and checker scope for source-available samples."""

from collections import Counter
import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
ledger_path = root / "history-eq/results/llama.cpp-pinned-sample-audit.json"
manifest = json.loads((here / "source_manifest.json").read_text())
ledger = json.loads(ledger_path.read_text())
entries = {entry["commit"]: entry for entry in ledger["entries"]}

# Only categorize a commit after reading the exact diff archived by materialize.py.
# unsupported: the changed backend/host path cannot be input to Volta's NVIDIA-PTX checker.
decisions = {
    "7ca5991d": ("excluded_non_optimization", "Adds Emscripten WebGPU build and runtime compatibility, including single-thread fallback without pthreads; the archived diff does not introduce a faster path for an existing supported execution.", None),
    "96fdca04": ("excluded_non_optimization", "Adds Vulkan support for the previously unsupported CONV_TRANSPOSE_2D operation; existing CONV_2D remains its own path, so this is new capability rather than an old/new performance optimization.", None),
    "8d94219a": ("excluded_non_optimization", "Adds a new SET_ROWS operation. The changed F32-to-F32 duplicate branch is unreachable through its sole dispatcher, so the local Alive2 model is not an optimization result.", None),
    "01ad35e6": ("excluded_non_optimization", "Moves a redundant CANN boolean declaration outside mutually exclusive preprocessor branches; build/cleanup change with no performance goal.", None),
    "02a6a82a": ("confirmed_optimization", "Replaces the Metal im2col kernel and dispatch geometry to restore performance; Volta accepts NVIDIA PTX, not Metal source.", "UNSUPPORTED"),
    "02e409a5": ("excluded_non_optimization", "Changes macOS failure backtrace printing to avoid terminal crashes; diagnostic correctness, not a runtime optimization.", None),
    "03ea0417": ("confirmed_optimization", "Adds vectorized WebGPU set_rows shader/dispatch and Dawn performance toggles; Volta accepts NVIDIA PTX, not WGSL/WebGPU.", "UNSUPPORTED"),
    "043fb27d": ("confirmed_optimization", "Enables Vulkan MUL_MAT_ID subgroup shader paths on non-coopmat devices; Volta accepts NVIDIA PTX, not Vulkan GLSL/SPIR-V.", "UNSUPPORTED"),
    "053b1539": ("confirmed_optimization", "Disables Windows CPU thread power throttling at normal or higher priority to improve multi-thread performance; OS scheduling is outside Volta's GPU-kernel semantics.", "UNSUPPORTED"),
    "0a423800": ("confirmed_optimization", "Removes an RDNA1 HIP launch-bounds attribute after an upstream 25-token/s perplexity performance regression; this AMD compile-time attribute is outside Volta's NVIDIA-PTX model.", "UNSUPPORTED"),
    "0a8b29a6": ("excluded_non_optimization", "Adds activation rescaling to fix NaNs beyond f16 range in Metal MUL_MAT_ID; correctness fix, without a performance optimization claim.", None),
    "0be84685": ("confirmed_optimization", "Rewrites Hexagon SSM_CONV HVX code to remove gathers while fixing large-prompt handling; Hexagon HVX is outside Volta's NVIDIA-PTX input domain.", "UNSUPPORTED"),
    "0c6ee1ca": ("confirmed_optimization", "Re-enables the table-based fast CPU GELU_QUICK_F16 path; historical IR compiles, but bidirectional Alive2 rejects newly introduced non-constant global tables.", "UNSUPPORTED"),
    "0e148a57": ("confirmed_optimization", "Raises SYCL system-USM threshold from 1 GiB to 4 GiB; source-extracted Alive2 helper check gives a bidirectional 2 GiB allocation-policy counterexample.", "NOT_EQUIV"),
    "00681dfc": ("confirmed_optimization", "Exact historical old/new CUDA PTX builds and parses succeed; Volta cannot lower the optimized uint3 parameter's nonzero-offset load in a selected k_bin_bcast specialization.", "UNSUPPORTED"),
    "077c94d0": ("confirmed_optimization", "Fuses a historical five- or nine-operation CUDA graph into one top-K MoE kernel; Volta's one-reference-kernel versus one-optimized-kernel interface cannot represent the old graph composition.", "UNSUPPORTED"),
    "0ed235ea": ("confirmed_optimization", "Adds a CUDA runtime cudaMemcpy2DAsync path for same-type strided copies, plus an OpenVINO correctness guard; Volta checks PTX kernels and cannot model this runtime copy path.", "UNSUPPORTED"),
    "2a53ace3": ("confirmed_optimization", "Replaces sequential SYCL cross-device copies with pinned-host staging and parallel outgoing copies for allreduce; Volta accepts NVIDIA PTX, not SYCL runtime communication.", "UNSUPPORTED"),
    "2b562109": ("confirmed_optimization", "Adds GPU- and quantization-specific MMVQ/MMQ dispatch thresholds; this host-side kernel-selection policy is outside Volta's PTX kernel relation.", "UNSUPPORTED"),
    "3737e413": ("excluded_non_optimization", "Adds a null check after Metal buffer allocation to avoid an out-of-memory crash; correctness fix without a performance optimization claim.", None),
    "904837e0": ("excluded_non_optimization", "Selects the correct CANN device before destroying an event, fixing a multi-device benchmark crash rather than improving the runtime path.", None),
    "d63aa398": ("excluded_non_optimization", "Enables -O2 for HIP debug builds specifically to avoid a compiler bug; build compatibility, not a measured optimized runtime path.", None),
    "4265a87b": ("excluded_non_optimization", "Guards cuGetErrorString with GGML_CUDA_NO_VMM to avoid a compile/link issue; error-reporting compatibility change.", None),
    "e2f56017": ("excluded_non_optimization", "Disables the existing SYCL Q4_0 reorder optimization by changing its default flag; no new performance optimization is introduced.", None),
    "55945d2e": ("excluded_non_optimization", "Corrects the CUDA grid-limit guard for large block_nums.y to prevent an invalid launch; correctness fix.", None),
    "a970515b": ("excluded_non_optimization", "Adds two ggml tensor-type assertions for interpolation and masked attention; API precondition checks.", None),
    "8b7d340b": ("excluded_non_optimization", "Ignores an optional HIP memory-advice error on incompatible APUs so allocation can proceed; compatibility fix.", None),
    "9ef7523e": ("confirmed_optimization", "Historical CUDA PTX comparison proves 128/4096 selected CTA outputs equal under Volta's model; full-output check stops on undefined values, while a direct Z3 lemma proves the changed loop's iteration/index arithmetic.", "EQUIV_PARTIAL"),
    "6cc504a2": ("excluded_non_optimization", "Catches a SYCL no-device exception and reports zero devices instead of aborting; error-handling fix.", None),
    "f549b000": ("confirmed_optimization", "Routes Vulkan cross-device buffer copy through the host-visible-memory optimized write_2d path; Vulkan runtime copy is outside Volta's NVIDIA-PTX kernel relation.", "UNSUPPORTED"),
    "41e3f026": ("excluded_non_optimization", "Reverts the earlier CUDA launch-queue override because it hangs on Jetson Orin; regression/correctness rollback, not a new performance optimization.", None),
    "a83c73a1": ("confirmed_optimization", "Sets CUDA_SCALE_LAUNCH_QUEUES=4x to reduce CPU-side pipeline stalls; this environment/runtime configuration is outside Volta's PTX-kernel relation.", "UNSUPPORTED"),
    "e9e661bd": ("confirmed_optimization", "Exact historical f16/f32 PTX builds and parses succeed, but Volta rejects an unmodeled cvt integer-rounding modifier in both selected reference kernels.", "UNSUPPORTED"),
    "892e3c33": ("confirmed_optimization", "Disables Vulkan MMVQ on Intel's proprietary Windows driver due to worse performance; Vulkan host dispatch is outside Volta's PTX-kernel relation.", "UNSUPPORTED"),
    "3ff67eb4": ("excluded_non_optimization", "Falls back from a PowerVR-incompatible Vulkan subgroup shader so model execution no longer fails; compatibility fix.", None),
    "43919b7f": ("excluded_non_optimization", "Avoids mutating the CUDA compute graph while forming fused ADDs; correctness/state-management fix.", None),
    "96892952": ("confirmed_optimization", "Tunes AMD RDNA MMQ-versus-rocBLAS switching to recover a performance regression; HIP/host dispatch is outside Volta's NVIDIA-PTX kernel relation.", "UNSUPPORTED"),
    "3d07caa9": ("excluded_non_optimization", "Adds shape details to the Vulkan flash-attention performance logger; diagnostics only, not an optimized execution path.", None),
    "cb000205": ("excluded_non_optimization", "Raises the Vulkan subgroup warptile minimum to avoid undefined behavior on small warps; correctness fix.", None),
    "3bcfeb70": ("confirmed_optimization", "Adds precompiled headers to reduce CMake build time; compile-time optimization is outside Volta's runtime PTX-kernel relation.", "UNSUPPORTED"),
    "5c0d1888": ("confirmed_optimization", "In-scope ggml CMake change enables ARMv9 SVE2/SME CPU backend variants for Android; build/runtime variant selection is outside Volta's PTX-kernel relation.", "UNSUPPORTED"),
    "fd895565": ("excluded_non_optimization", "Adds SYCL GET_ROWS support for BF16 inputs that previously had no case; feature extension rather than replacement of an existing optimized path.", None),
    "739393be": ("excluded_non_optimization", "Propagates disabled-compute flags across delayed AllReduce nodes with zero-sized slices; correctness fix for existing graph execution.", None),
    "f7c9429c": ("confirmed_optimization", "On Windows SYCL, removes the mmap workaround's host malloc/memcpy staging before device copy; SYCL runtime transfer is outside Volta's NVIDIA-PTX relation.", "UNSUPPORTED"),
    "b044a0fe": ("confirmed_optimization", "Adds Vulkan host-memory preference policy via environment variable to avoid VRAM allocation; Vulkan memory selection is outside Volta's PTX relation.", "UNSUPPORTED"),
    "a7724480": ("excluded_non_optimization", "Repairs propagation of cached Vulkan cooperative-matrix capability checks into compile definitions; build configuration fix.", None),
    "c3c15053": ("confirmed_optimization", "Relaxes WebGPU matmul vectorization eligibility and selects the vectorized matmul-id shader variant; WebGPU shader/dispatcher is outside Volta's PTX input domain.", "UNSUPPORTED"),
    "bef69f13": ("confirmed_optimization", "Separates pinned-memory locking from Vulkan device locking and uses shared reads to reduce host contention; host concurrency is outside Volta's kernel relation.", "UNSUPPORTED"),
    "b47ab7b8": ("confirmed_optimization", "Preserves scheduler cur_copy for already allocated graphs so CUDA or other graphs stay usable; host graph-state optimization is outside Volta's PTX relation.", "UNSUPPORTED"),
    "b387ddfd": ("excluded_non_optimization", "Adds Vulkan view-alias dependencies before graph reorder to prevent missing read/write hazards; correctness fix.", None),
    "6ad70c5a": ("confirmed_optimization", "Replaces scalar-lane Q4_K scale construction with ARM NEON vdup/vcombine operations; source-extracted changed block is bidirectionally equal for all four enclosing column-pair values under Alive2.", "EQUIV_PARTIAL"),
    "41f47787": ("excluded_non_optimization", "Updates CUDA graph when SCALE op parameters change and clears stale graph nodes/params; stale-graph correctness fix.", None),
    "13731766": ("confirmed_optimization", "Adds PPC64LE MMA GEMV forwarding for single-row or single-column FP32 matrix multiplication; queue an Alive2 comparison of the changed PowerPC path.", None),
    "740a447f": ("confirmed_optimization", "Changes Vulkan graphics/transfer queue selection based on driver and environment to improve scheduling; Vulkan host queue policy is outside Volta's PTX relation.", "UNSUPPORTED"),
    "d7be4618": ("confirmed_optimization", "Adds NVIDIA Turing-specific MMVQ launch parameters; exact historical PTX builds and parses succeed, but Volta rejects a nonzero-offset struct-parameter load in the selected reference kernel.", "UNSUPPORTED"),
    "1a5631be": ("excluded_non_optimization", "Turns Metal command-buffer failure aborts into error state and GGML_STATUS_FAILED; failure handling rather than an optimized successful path.", None),
    "553a5c3a": ("confirmed_optimization", "Removes the empty RPC_CMD_SET_TENSOR response and client wait to reduce per-token network latency; multi-process socket protocol is outside Volta's kernel relation.", "UNSUPPORTED"),
    "1725e316": ("confirmed_optimization", "In-scope Metal graph reorder admits SUB and CUDA graph policy recognizes DeltaNet nodes; host graph scheduling is outside Volta's PTX-kernel relation.", "UNSUPPORTED"),
    "581650b7": ("confirmed_optimization", "Rewrites Vulkan im2col shader indexing to increment coordinates and hoist repeated divisions; GLSL/SPIR-V is outside Volta's NVIDIA-PTX input domain.", "UNSUPPORTED"),
    "bf5a81df": ("excluded_non_optimization", "Disables unsupported Arm NEON/SVE assembly branches for MSVC on Snapdragon X; build-compatibility fix.", None),
    "66c4f9de": ("confirmed_optimization", "Vectorizes HIP LDS loads in q4 MMQ kernels to generate ds_read_b128 instead of ds_read_b32; AMD HIP machine instructions are outside Volta's NVIDIA-PTX model.", "UNSUPPORTED"),
    "d23a5599": ("excluded_non_optimization", "Exposes ggml_is_view as a public API and redirects internal calls to the same predicate; API addition without a performance rewrite.", None),
    "1eeb523c": ("confirmed_optimization", "Uses deferred host memset for Vulkan UMA host-visible buffers instead of GPU fillBuffer; Vulkan runtime memory operations are outside Volta's PTX relation.", "UNSUPPORTED"),
    "39eab74a": ("confirmed_optimization", "Routes large Q6_K OpenCL lm_head weights to flat GEMV to avoid a slow noshuffle path; OpenCL dispatch is outside Volta's NVIDIA-PTX relation.", "UNSUPPORTED"),
    "92366df3": ("excluded_non_optimization", "Fixes Q6_K OpenCL non-128-multiple row handling and pool carve size to avoid wrong values or overlap; correctness fix.", None),
    "0320ac52": ("confirmed_optimization", "The commit explicitly describes Metal v2 as refactor plus optimization and rewrites existing graph/context/ops paths; its broad Metal backend transformation is outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "082b326f": ("excluded_non_optimization", "Introduces the entirely new ET backend and its kernels; no parent-version ET execution path exists to optimize.", None),
    "0a0bba05": ("excluded_non_optimization", "Enables Hexagon SWIGLU_OAI and repairs HVX min/clamp behavior; new operation support and correctness, not a performance rewrite.", None),
    "0a524f24": ("excluded_non_optimization", "Templatizes CPU/CUDA CONV_TRANSPOSE_2D to add F32 kernel weights alongside F16; feature/type coverage rather than speedup of an existing case.", None),
    "0eb874d3": ("confirmed_optimization", "Moves Vulkan mul_mm ALIGNED from compiled shader variants to a specialization constant to shrink shader binaries; Vulkan shader/build size is outside Volta's NVIDIA-PTX kernel relation.", "UNSUPPORTED"),
    "0f1a39f3": ("confirmed_optimization", "Adds optimized AArch64 Q4/Q8 GEMV and GEMM kernels and dispatch alongside generic functions; changed source contains inline AArch64 assembly that needs a checker scope audit.", None),
    "1548a240": ("confirmed_optimization", "Alongside new OpenCL operation coverage, replaces row-mapped contiguous F32 copy with a whole-device flat-copy path for long single-row tensors; OpenCL kernels are outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "15bff84b": ("excluded_non_optimization", "Introduces the WebGPU flash-attention implementation and related shader machinery; first backend support for the operation rather than an existing implementation's optimization.", None),
    "167d0576": ("confirmed_optimization", "Skips padded half/quarter MoE GEMM tiles in existing OpenCL kernels and adds an opt-out; OpenCL kernels are outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "177c7585": ("excluded_non_optimization", "Adds Metal CONV_3D support and a new kernel where the parent has no corresponding Metal operation.", None),
    "1bacb9f6": ("confirmed_optimization", "Reworks Vulkan mul_mat_vec shader loads, dequantization, and pipeline robustness to reduce ALU and memory overhead; GLSL/SPIR-V is outside Volta's PTX domain.", "UNSUPPORTED"),
    "1c398dc9": ("excluded_non_optimization", "Extends CPU repack mat_mul to 3D/batched tensors and corrects work-buffer and chunk indexing; shape coverage and correctness, not a speed claim.", None),
    "1e1aca09": ("confirmed_optimization", "Changes existing WebGPU quantized matmul shared-memory loading to improve prefill speed; WGSL is outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "1e436302": ("excluded_non_optimization", "Removes AArch64 optimized-kernel asserts and falls back when offline requantization does not fit the target; compatibility/fallback behavior rather than a faster existing path.", None),
    "2025fa67": ("excluded_non_optimization", "Kompute changes implement ALiBi/RoPE/permutted type support and reject unsupported cases to pass backend tests; feature/correctness work.", None),
    "225e7a14": ("confirmed_optimization", "Adds high-throughput multi-stream mode and changes CUDA flash-attention kernel/launch paths for that mode; selected historical CUDA comparison remains pending.", None),
    "230d1169": ("confirmed_optimization", "Adds a shared-memory CUDA transposed-copy kernel for higher bandwidth; Volta proves all outputs equal for 18 selected one-CTA F32/F16/BF16 shape comparisons.", "EQUIV_PARTIAL"),
    "264f1b51": ("excluded_non_optimization", "Reorganizes zDNN backend files and documentation without an identified faster existing execution path.", None),
    "2759916d": ("confirmed_optimization", "Replaces repeated division in Vulkan unary/copy index decoding with precomputed multiply-and-shift constants; GLSL/SPIR-V is outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "2dd84169": ("confirmed_optimization", "Rewrites existing x86 AVX2 Q6_K dot-product accumulation; source-extracted nibble unpack expressions pass eight bidirectional Alive2 checks, while complete-function checks time out.", "UNKNOWN"),
    "3f81b4e9": ("excluded_non_optimization", "Adds Vulkan GET_ROWS support and dequantization shaders for Q2_K through Q6_K; the shader generator's old-type behavior is retained, so this is type coverage rather than an optimization of a parent path.", None),
    "434b2a1f": ("excluded_non_optimization", "Adds Q1_0 WebGPU shader and dispatch cases; the two changed branches special-case only this newly supported type and preserve prior type paths.", None),
    "8d4d2be1": ("excluded_non_optimization", "Moves LoongArch LSX helpers under the correct guard and adds casts to fix 128-bit SIMD compilation; this is a build fix, not an execution-speed change.", None),
    "9ad4f193": ("excluded_non_optimization", "Adds Metal CONV_TRANSPOSE_2D dispatch, pipeline, and kernel; no parent Metal implementation of that operation is replaced.", None),
    "9eaa51e7": ("excluded_non_optimization", "Adds CUDA CONV_2D_DW kernel and dispatch case; no existing CUDA implementation of this operation is changed.", None),
    "ca7f7b7b": ("excluded_non_optimization", "Adds the WebGPU CONV_2D shader, pipeline, and dispatch case without changing existing operation paths.", None),
    "ad8d36be": ("excluded_non_optimization", "Adds SYCL SSM_CONV kernel and dispatch support; the parent has no corresponding SYCL implementation to optimize.", None),
    "efb6ae96": ("excluded_non_optimization", "Adds the Metal ARGMAX unary kernel and dispatch case; no existing Metal operation path is replaced.", None),
    "a31cf36a": ("excluded_non_optimization", "Adds Metal OPT_STEP_ADAMW and SUM kernels and dispatch cases; no previous Metal implementation of those operations is rewritten.", None),
    "4db56412": ("confirmed_optimization", "Adds an OpenCL Adreno KQ/KQV matmul kernel and routes the existing attention matmul path through it; OpenCL source is outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "67e3f6f6": ("confirmed_optimization", "Fuses existing CANN ADD and RMS_NORM graph nodes into one backend operation; CANN graph execution is outside Volta's NVIDIA-PTX relation.", "UNSUPPORTED"),
    "b62b3509": ("confirmed_optimization", "Routes long-token CUDA SSM_SCAN to a new sequence of SSD preparation kernels and cuBLAS calls; Volta's one-kernel-per-side interface cannot compare the old scan with the new composed execution graph.", "UNSUPPORTED"),
    "baad9488": ("confirmed_optimization", "Adds x86 Q2_K interleaved repacking and GEMV/GEMM functions for an existing quantized matmul operation; an Alive2 relation for the historical CPU path remains to be attempted.", None),
    "bc81d47a": ("confirmed_optimization", "Changes CUDA/HIP host dispatch so batch>=4 quantized matmul uses MMQ on AMD MFMA devices; Volta's PTX-kernel relation cannot compare the host path-selection policy.", "UNSUPPORTED"),
    "9bd4c09e": ("excluded_non_optimization", "Separates CUDA shared-memory scratch spaces and adds synchronization to remove block_reduce data races in group norm and softmax; correctness fix, not a speed optimization.", None),
    "a0f3897d": ("excluded_non_optimization", "Corrects Vulkan TOP_K output when cutoff values tie by reserving only the needed equal-value slots; this repairs wrong results rather than optimizing an existing correct path.", None),
    "f728adab": ("excluded_non_optimization", "Widens CUDA binary-broadcast dimensions and address arithmetic and guards loop-index overflow; integer-overflow correctness fix without a speedup claim.", None),
    "5ba36f61": ("excluded_non_optimization", "Centralizes CUDA/HIP scalar casts and updates HIP bfloat16 declarations and version guards to repair hipification; compatibility/refactor change without a speedup claim.", None),
    "750cb3e2": ("excluded_non_optimization", "Renames CUDA compute-capability macros to GGML_CUDA_CC_* to avoid WinAPI macro conflicts; preprocessor compatibility fix with unchanged threshold values.", None),
    "f9af9be2": ("excluded_non_optimization", "Removes or guards unsupported MUSA paths and fixes architecture-specific operator failures; backend compatibility/correctness, not an optimization of a valid parent path.", None),
    "f3061116": ("confirmed_optimization", "Batches OpenCL profiling event reads to reduce profiling overhead while fixing event release; host-side OpenCL profiling is outside Volta's NVIDIA-PTX relation.", "UNSUPPORTED"),
    "d1e35564": ("confirmed_optimization", "Removes a CUDA init_offsets kernel launch and supplies lazy strided iterators to CUB segmented sort; Volta cannot compare the old two-stage graph with the new CUB invocation through its one-kernel-per-side interface.", "UNSUPPORTED"),
    "a97123e4": ("confirmed_optimization", "Switches SYCL host-buffer allocations to pinned USM host memory for faster host-to-device transfers; allocation and transfers are outside Volta's PTX-kernel relation.", "UNSUPPORTED"),
    "5c200e0c": ("confirmed_optimization", "Changes Vulkan GDN shader pipeline choices to improve Intel performance; Vulkan shader/dispatch execution is outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "ece0f5c1": ("confirmed_optimization", "Adds fast division to existing OpenCL set_rows kernels and dispatch; OpenCL kernels are outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "fa882fd2": ("excluded_non_optimization", "Replaces Metal gpuAddress with synthetic IDs for compatibility and passes explicit RoPE src2 presence to repair alias-sensitive behavior; no existing-path speedup claim.", None),
    "c328acc9": ("confirmed_optimization", "Avoids slow oneDNN reference matmul and flash-attention paths by changing SYCL device dispatch; SYCL host/library selection is outside Volta's PTX-kernel relation.", "UNSUPPORTED"),
    "8af1f5f4": ("confirmed_optimization", "Reworks existing Hexagon flash-attention HVX loop for performance; Hexagon instructions are outside Volta's NVIDIA-PTX domain.", "UNSUPPORTED"),
    "b9332895": ("confirmed_optimization", "Raises the SYCL register-file setting for D=512 flash-attention vector kernels to reduce spills; SYCL/Intel GPU compilation is outside Volta's PTX domain.", "UNSUPPORTED"),
    "83078fec": ("confirmed_optimization", "Exact historical SM80 PTX builds parse, but Volta rejects the reference im2col kernel's 64-bit mul.hi before an old/new relation; the child self-pair lowers.", "UNSUPPORTED"),
    "305ba519": ("confirmed_optimization", "Exact historical SM80 PTX builds parse, but Volta rejects both scalar and vector get_rows kernels on a nonzero-offset uint3 parameter load before any equivalence decision.", "UNSUPPORTED"),
    "76614f35": ("confirmed_optimization", "Caches the SVE byte length at ggml_init; source-audited Alive2 shows a changed GEMV assertion outcome after a valid post-init vector-length change, while stable-length projections are bidirectionally equal.", "NOT_EQUIV"),
    "be876204": ("confirmed_optimization", "Binds existing f16 KV cache directly to SYCL oneDNN SDPA with explicit strides instead of copying it into dense buffers; SYCL graph and memory operations are outside Volta's PTX interface.", "UNSUPPORTED"),
    "40c6d79f": ("confirmed_optimization", "Selects the NVIDIA oneMKL cuBLAS backend at compile time for existing SYCL GEMM calls to remove runtime selection latency; SYCL/oneMKL calls are outside Volta's PTX interface.", "UNSUPPORTED"),
    "f9f33654": ("confirmed_optimization", "Rewrites existing Vulkan Q4_K/Q5_K scale extraction to use coalesced packed loads; GLSL/SPIR-V is outside Volta's PTX input domain.", "UNSUPPORTED"),
    "9f5e1edb": ("confirmed_optimization", "Selects CUB segmented radix sort during CUDA graph capture while retaining faster segmented sort in immediate mode; CUDA runtime/CUB graph composition is outside Volta's one-kernel PTX relation.", "UNSUPPORTED"),
    "50b7f076": ("confirmed_optimization", "Routes existing Vulkan batched expert matmul with up to eight rows through the faster mat-vec path and changes shader indexing; Vulkan dispatch and GLSL are outside Volta's PTX input domain.", "UNSUPPORTED"),
    "74d4f5b0": ("confirmed_optimization", "Changes existing Vulkan graph synchronization to an early fence followed by spinning to reduce wakeup latency; Vulkan fence operations are outside Volta's PTX model.", "UNSUPPORTED"),
    "9b260fc9": ("confirmed_optimization", "Adds an optional large-buffer SYCL USM system-allocation path to an existing allocation API; SYCL host allocation is outside Volta's PTX model.", "UNSUPPORTED"),
    "c37052ab": ("confirmed_optimization", "Changes existing Vulkan coopmat2 matmul_id shader tile and scale-load paths for smaller matrices; GLSL/SPIR-V is outside Volta's PTX input domain.", "UNSUPPORTED"),
    "5c3d0f18": ("confirmed_optimization", "The complete historical x86 AVX Q4_0 dot-product function returns 32 before and 64 after on the same four valid blocks; full-function Alive2 times out, while local Alive2 refutes the concrete lane recurrence.", "NOT_EQUIV"),
    "856c3ada": ("confirmed_optimization", "Replaces scalar loads and splats in existing Hexagon HVX attention/matmul kernels with vector loads and replication; Hexagon HVX is outside Volta's PTX input domain.", "UNSUPPORTED"),
    "b9102008": ("confirmed_optimization", "Adds a tiled PowerPC MMA BF16 GEMM path for aligned dimensions, retaining the existing mnpack fallback; a historical Alive2 relation remains pending.", None),
    "5a460dea": ("confirmed_optimization", "Fuses an existing CUDA gated-delta-net kernel and strided state-copy graph step into a direct cache write; the full old/new graph is outside Volta's one-kernel-per-side interface.", "UNSUPPORTED"),
    "af148c93": ("confirmed_optimization", "Rewrites existing Vulkan binary-operation shaders and dispatch with no-repeat specializations and faster index arithmetic; GLSL/SPIR-V is outside Volta's PTX input domain.", "UNSUPPORTED"),
    "3dc7397a": ("confirmed_optimization", "Repairs CANN RoPE cache behavior on multiple devices while caching parameter-stable values and changing first-layer detection; CANN runtime execution is outside Volta's PTX domain.", "UNSUPPORTED"),
    "9ed6e19b": ("confirmed_optimization", "Replaces existing SYCL device allocations with Level Zero allocation where available, eliminating system-RAM mirroring for multi-GPU inference; SYCL/Level Zero allocation is outside Volta's PTX model.", "UNSUPPORTED"),
    "bf0a29cc": ("excluded_non_optimization", "Adds split-state and backend handling for newly supported DeepSeek 4 model tensors and fixes associated operations; no existing valid model path is identified as faster.", None),
    "64e9bceb": ("confirmed_optimization", "Fuses existing Vulkan unary GELU/SIGMOID/SILU/SOFTPLUS followed by MUL into a single shader/dispatch; GLSL/SPIR-V and the old two-op graph are outside Volta's one-kernel PTX relation.", "UNSUPPORTED"),
    "db9d8aa4": ("confirmed_optimization", "Replaces BF16-to-F16 staging on the existing CUDA flash-attention vector path with native BF16 loads and a new vector specialization; old preprocessing plus kernel is outside Volta's one-kernel relation.", "UNSUPPORTED"),
    "34c9d765": ("excluded_non_optimization", "Adds attention-sink behavior to tile/WMMA CUDA kernels for a new input feature; the parent has no corresponding sink-enabled behavior to optimize.", None),
}

for short, (screen, reason, verdict) in decisions.items():
    commit = next(commit for commit in entries if commit.startswith(short))
    archived = (here / f"{short}.source.diff").read_bytes()
    assert hashlib.sha256(archived).hexdigest() == manifest["commits"][commit]["diff_sha256"]
    entry = entries[commit]
    assert entry["source_status"] == "changed_blobs_available"
    entry["screen"] = screen
    entry["reason"] = reason
    entry["evidence"] = f"history-eq/gpu/llama.cpp/source-screening/{short}.source.diff"
    if screen == "excluded_non_optimization":
        entry["checker_status"] = "not_run"
        entry.pop("verdict", None)
        entry.pop("checker_target", None)
        if short == "8d94219a":
            reachability = (root / "history-eq/gpu/llama.cpp/8d94219a/reachability.log").read_text()
            assert "old/new dispatchers are text-identical; F32->F32 modeled branch is unreachable here" in reachability
            entry["evidence"] = "history-eq/gpu/llama.cpp/8d94219a/README.md"
    elif verdict == "UNSUPPORTED":
        if short == "00681dfc":
            result = json.loads((root / "history-eq/gpu/llama.cpp/00681dfc/volta-result.json").read_text())
            assert result["compare"]["returncode"] != 0
            assert "param loads with nonzero offsets are not supported" in result["compare"]["stderr"]
            for side in ("old", "new"):
                ptx = root / f"history-eq/gpu/llama.cpp/00681dfc/{side}.ptx"
                assert hashlib.sha256(ptx.read_bytes()).hexdigest() == result["builds"][side]["ptx_sha256"]
        if short == "d7be4618":
            result = json.loads((root / "history-eq/gpu/llama.cpp/d7be4618/volta-result.json").read_text())
            assert result["compare"]["returncode"] != 0
            assert "param loads with nonzero offsets are not supported" in result["compare"]["stderr"]
            for side in ("old", "new"):
                ptx = root / f"history-eq/gpu/llama.cpp/d7be4618/{side}.ptx"
                assert result["builds"][side]["compile"]["returncode"] == 0
                assert result["builds"][side]["parse"]["returncode"] == 0
                assert hashlib.sha256(ptx.read_bytes()).hexdigest() == result["builds"][side]["ptx_sha256"]
        if short == "305ba519":
            result = json.loads((root / "history-eq/gpu/llama.cpp/305ba519/volta-result.json").read_text())
            for tag in ("historical_scalar_pair", "new_vector_lowering_probe"):
                check = result["checks"][tag]
                assert check["returncode"] != 0
                assert "param loads with nonzero offsets are not supported" in check["stderr"]
            for side in ("old", "new"):
                ptx = root / f"history-eq/gpu/llama.cpp/305ba519/{side}.ptx"
                assert result["builds"][side]["parse"]["returncode"] == 0
                assert hashlib.sha256(ptx.read_bytes()).hexdigest() == result["builds"][side]["ptx_sha256"]
        if short == "83078fec":
            result = json.loads((root / "history-eq/gpu/llama.cpp/83078fec/volta-result.json").read_text())
            assert result["lowering_probes"]["old"]["returncode"] != 0
            assert "mul.hi at width 64" in result["lowering_probes"]["old"]["stderr"]
            assert result["lowering_probes"]["new"]["returncode"] == 0
            for side in ("old", "new"):
                ptx = root / f"history-eq/gpu/llama.cpp/83078fec/{side}.ptx"
                assert result["builds"][side]["parse"]["returncode"] == 0
                assert hashlib.sha256(ptx.read_bytes()).hexdigest() == result["builds"][side]["ptx_sha256"]
        if short == "e9e661bd":
            result = json.loads((root / "history-eq/gpu/llama.cpp/e9e661bd/volta-result.json").read_text())
            for variant in ("f16", "f32"):
                compared = result["variants"][variant]["compare"]
                assert compared["returncode"] != 0
                assert "integer-rounding modifier (floor/ceil/trunc/rint not modeled)" in compared["stderr"]
                for side in ("old", "new"):
                    ptx = root / f"history-eq/gpu/llama.cpp/e9e661bd/{variant}-{side}.ptx"
                    assert hashlib.sha256(ptx.read_bytes()).hexdigest() == result["variants"][variant][side]["ptx_sha256"]
        if short == "0c6ee1ca":
            result = json.loads((root / "history-eq/gpu/llama.cpp/0c6ee1ca/alive2-result.json").read_text())
            for tag, table in (("forward", "ggml_table_gelu_quick_f16"),
                               ("reverse", "ggml_table_f32_f16")):
                output = result["checks"][tag]["stdout"]
                assert f"non-constant global variable @{table} is introduced in target" in output
                assert "0 incorrect transformations" in output
            for side in ("old", "new"):
                ir = root / f"history-eq/gpu/llama.cpp/0c6ee1ca/{side}.ll"
                assert hashlib.sha256(ir.read_bytes()).hexdigest() == result["builds"][side]["ir_sha256"]
        entry["checker_status"] = "checked"
        entry["verdict"] = verdict
        entry["coverage"] = (
            "selected k_bin_bcast float op_repeat PTX pair; optimized uint3 parameter load rejected by Volta"
            if short == "00681dfc" else
            "selected D=128 f16/f32 flash-attention PTX pairs; reference cvt rounding rejected by Volta"
            if short == "e9e661bd" else
            "selected Q4_0, one-column SM75 MMVQ PTX pair; reference struct-parameter offset load rejected by Volta"
            if short == "d7be4618" else
            "historical five-/nine-op CUDA graph to one fused top-K kernel; Volta accepts only one kernel per side"
            if short == "077c94d0" else
            "historical CUDA SSM scan to multiple SSD kernels plus cuBLAS; Volta accepts only one kernel per side"
            if short == "b62b3509" else
            "historical CUDA offset-init kernel plus CUB sort to lazy iterator plus CUB sort; Volta accepts only one kernel per side"
            if short == "d1e35564" else
            "historical F32 scalar get_rows pair and new vector lowering probe; uint3 nonzero-offset parameter load rejected by Volta before comparison"
            if short == "305ba519" else
            "historical F32 im2col parent lowering rejected by Volta at 64-bit mul.hi; child self-pair is only a lowering probe"
            if short == "83078fec" else
            "historical one-element CPU Quick GELU IR pair; Alive2 cannot relate introduced non-constant global lookup tables"
            if short == "0c6ee1ca" else
            "changed backend/host performance path; Volta input format or kernel relation not applicable"
        )
        entry["checker_target"] = "Alive2" if short == "0c6ee1ca" else "Volta"
        if short in ("00681dfc", "e9e661bd", "d7be4618", "077c94d0", "0c6ee1ca", "305ba519", "83078fec"):
            entry["evidence"] = f"history-eq/gpu/llama.cpp/{short}/README.md"
    elif verdict == "EQUIV_PARTIAL":
        if short == "9ef7523e":
            result = json.loads((root / "history-eq/gpu/llama.cpp/9ef7523e/verification-result.json").read_text())
            sampled = result["comparisons"]["sample_128_numeric"]
            full = result["comparisons"]["full_output"]
            assert sampled["returncode"] == 0 and "elements: 128/4096" in sampled["stdout"]
            assert sampled["stdout"].rstrip().endswith("EQUIVALENT")
            assert full["returncode"] != 0 and "cannot check equivalence of undefined values" in full["stderr"]
            assert result["load_loop_lemma"]["stdout"].splitlines() == ["unsat"] * 3
            for side in ("old", "new"):
                ptx = root / f"history-eq/gpu/llama.cpp/9ef7523e/{side}.ptx"
                assert hashlib.sha256(ptx.read_bytes()).hexdigest() == result["builds"][side]["ptx_sha256"]
        elif short == "6ad70c5a":
            proof_dir = root / "history-eq/gpu/llama.cpp/6ad70c5a"
            result = json.loads((proof_dir / "alive2-result.json").read_text())
            assert result["commit"] == commit
            for cp in range(4):
                case = result["specialized"][str(cp)]
                for direction in ("forward", "reverse"):
                    checked = case["checks"][direction]
                    assert checked["returncode"] == 0
                    assert "1 correct transformations" in checked["stdout"]
                    assert "0 incorrect transformations" in checked["stdout"]
                    assert "0 failed-to-prove transformations" in checked["stdout"]
                    assert "0 Alive2 errors" in checked["stdout"]
                for side in ("old", "new"):
                    for suffix, key in (("cpp", "cpp_sha256"), ("ll", "ir_sha256"),
                                        ("alive.ll", "alive_ir_sha256")):
                        artifact = proof_dir / f"cp{cp}-{side}.{suffix}"
                        assert hashlib.sha256(artifact.read_bytes()).hexdigest() == case["builds"][side][key]
        elif short == "230d1169":
            proof_dir = root / "history-eq/gpu/llama.cpp/230d1169"
            result = json.loads((proof_dir / "volta-result.json").read_text())
            assert result["commit"] == commit and len(result["comparisons"]) == 18
            for side in ("old", "new"):
                build = result["builds"][side]
                assert build["compile"]["returncode"] == 0 and build["parse"]["returncode"] == 0
                ptx = proof_dir / f"{side}.ptx"
                assert hashlib.sha256(ptx.read_bytes()).hexdigest() == build["ptx_sha256"]
            for dtype in ("f32", "f16", "bf16"):
                for ne00, ne01 in ((8, 8), (7, 9), (16, 4), (4, 16), (32, 2), (2, 32)):
                    checked = result["comparisons"][f"{dtype}_{ne00}x{ne01}"]
                    assert checked["returncode"] == 0
                    assert f"elements: {ne00 * ne01}" in checked["stdout"]
                    assert checked["stdout"].rstrip().endswith("EQUIVALENT")
        else:
            raise AssertionError(short)
        entry["checker_status"] = "checked"
        entry["verdict"] = verdict
        entry["coverage"] = (
            "unfused d_conv=3, n_t=64 long-token CUDA kernel: 128/4096 CTA outputs under Volta real model; changed loop arithmetic separately proved by Z3"
            if short == "9ef7523e" else
            "exact changed ARM NEON scale/accumulator block, all cp=0..3, arbitrary four int8 scales and six int32x4 accumulator inputs; full historical function unproved"
            if short == "6ad70c5a" else
            "old cpy_flt versus new cpy_flt_transpose: all output elements for six one-CTA shapes in F32/F16/BF16; larger grids and dispatcher unproved"
        )
        entry["checker_target"] = ("Volta; direct Z3 local lemma" if short == "9ef7523e"
                                   else "Alive2" if short == "6ad70c5a" else "Volta")
        entry["evidence"] = f"history-eq/gpu/llama.cpp/{short}/README.md"
    elif verdict == "NOT_EQUIV":
        proof_dir = root / f"history-eq/gpu/llama.cpp/{short}"
        if short == "0e148a57":
            result = json.loads((proof_dir / "alive2/result.json").read_text())
            assert result["verdict"] == "NOT_EQUIV" and not result["bounded"]
            assert result["functions"]["target_check_usm_system"] == {
                "verdict": "NOT_EQUIV", "fwd": "incorrect", "bwd": "incorrect"
            }
            for tag in ("fwd", "bwd"):
                log = (proof_dir / "alive2" / f"{tag}.log").read_text()
                assert "2147483648" in log and "Value mismatch" in log
        elif short == "5c3d0f18":
            result = json.loads((proof_dir / "verification-result.json").read_text())
            assert result["commit"] == commit
            assert result["builds"]["old"]["native_output"] == "32 0x1p+5"
            assert result["builds"]["new"]["native_output"] == "64 0x1p+6"
            assert result["checks"]["full_forward"]["timed_out"]
            local = (proof_dir / "ReductionFixed.alive.log").read_text()
            assert "1 incorrect transformations" in local
            assert "Source value: #x40800000 (4)" in local
            assert "Target value: #x41000000 (8)" in local
        elif short == "76614f35":
            result = json.loads((proof_dir / "alive2/result.json").read_text())
            assert result["verdict"] == "NOT_EQUIV" and not result["bounded"]
            for name in ("q8_gate", "gemv_gate", "gemv_assert_survives"):
                assert result["functions"][f"target_{name}"]["verdict"] == "NOT_EQUIV"
                assert result["functions"][f"target_{name}_stable"]["verdict"] == "EQUIV"
            log = (proof_dir / "alive2/fwd.log").read_text()
            assert "i32 noundef %#0 = #x00000010 (16)" in log
            assert "i32 noundef %#1 = #x00000020 (32)" in log
            assert "i32 noundef %#2 = #x00000001 (1)" in log
        else:
            raise AssertionError(short)
        entry["checker_status"] = "checked"
        entry["verdict"] = verdict
        entry["coverage"] = (
            "source-extracted check_usm_system allocation decision, 2 GiB supported-device counterexample; model outputs unchecked"
            if short == "0e148a57" else
            "complete historical x86 AVX ggml_vec_dot_q4_0_q8_0 native function at n=128; local fixed-lane Alive2 counterexample; other IQ4_NL sgemm code unchecked"
            if short == "5c3d0f18" else
            "source-derived ggml_gemv_q4_0_4x4_q8_0 assertion outcome when current SVE VL is 16 bytes but ggml_init cached 32 bytes; complete matrix operation unchecked"
        )
        entry["checker_target"] = "Alive2" if short in ("0e148a57", "76614f35") else "native exact-source witness; Alive2 local reduction"
        entry["evidence"] = f"history-eq/gpu/llama.cpp/{short}/README.md"
    elif verdict == "UNKNOWN":
        assert short == "2dd84169"
        proof_dir = root / "history-eq/gpu/llama.cpp/2dd84169"
        result = json.loads((proof_dir / "alive2-result.json").read_text())
        assert result["commit"] == commit
        raw = result["checks"]["raw_forward"]
        assert raw["returncode"] != 0 and "Unsupported attribute: noalias" in raw["stdout"]
        for direction in ("forward", "reverse"):
            assert result["checks"][direction].get("timed_out") is True
        for side in ("old", "new"):
            for suffix, key in (("ll", "ir_sha256"), ("alive.ll", "alive_ir_sha256")):
                artifact = proof_dir / f"{side}.{suffix}"
                assert hashlib.sha256(artifact.read_bytes()).hexdigest() == result["builds"][side][key]
        nibble = json.loads((proof_dir / "nibble-result.json").read_text())
        assert nibble["commit"] == commit and nibble["verdict"] == "EQUIV_PARTIAL"
        assert len(nibble["checks"]) == 8 and all(
            "1 correct transformations" in c["output"] and "0 Alive2 errors" in c["output"]
            for c in nibble["checks"])
        assert all(nibble[side + "_model_sha256"] == hashlib.sha256(
            (proof_dir / f"{side}-nibbles.c").read_bytes()).hexdigest() for side in ("old", "new"))
        entry["checker_status"] = "checked"
        entry["verdict"] = "EQUIV_PARTIAL"
        entry["coverage"] = "four source-extracted AVX2 nibble-unpack vectors for arbitrary 256-bit inputs; bsums relation and full dot-product remain unverified after bidirectional 45-second timeouts"
        entry["checker_target"] = "Alive2"
        entry["evidence"] = "history-eq/gpu/llama.cpp/2dd84169/README.md"
    else:
        entry["checker_status"] = "pending"
        entry.pop("verdict", None)
        entry["checker_target"] = "Volta" if short in ("00681dfc", "077c94d0", "9ef7523e", "e9e661bd", "d7be4618", "225e7a14", "83078fec", "305ba519") else "Alive2"

# Case reports completed after the initial source screen.
later_reviews = {
    "0f1a39f3": ("UNKNOWN", "Alive2", "exact historical generic and AArch64 source audit plus cross-compiler prerequisite check",
                 "The parent generic and child specialized sources are available, but the installed AArch64 compiler cannot resolve a required target libc header. No exact historical IR or Alive2 output verdict was produced."),
    "13731766": ("NOT_EQUIV", "Alive2", "Source-audited Alive2 gate projection: internal llamafile_sgemm handled flag for Power10 MMA FP32, n=1, k=8. Parent false, child true; full matrix-output equality unproved.",
                 "The Power10 MMA change intentionally enables the FP32 GEMV path for n=1. Both directions of Alive2 gate comparison give the same valid input counterexample. The full PPC matrix implementation was not compared."),
    "225e7a14": ("UNSUPPORTED", "Volta", "One-sequence flash_attn_combine_results<64> selected at one CTA and parallel_blocks=2; full high-throughput multi-sequence path and other changed kernels unchecked.",
                 "Exact historical fattn-tile-f32 CUDA versions compile to PTX and parse, but Volta stops while lowering the parent result-combine kernel at unsupported Ex2(Float32, ftz=true). The new multi-sequence mode is outside the old launcher valid-input domain."),
    "b9102008": ("UNKNOWN", "Alive2", "exact historical PPC source audit and cross-compiler prerequisite check",
                 "Both exact sgemm.cpp blobs are local, but the installed powerpc64le C++ cross compiler cannot resolve the historical source's <array> dependency. No PPC LLVM IR or Alive2 matrix-output verdict was produced."),
    "baad9488": ("NOT_EQUIV", "native exact-source witness", "bitwise FP32 output for one valid eight-row, 256-column x86 AVX2 Q2_K x Q8_K GEMV; tolerance, other shapes, dispatcher, and whole commit unchecked",
                 "On identical reference-quantized Q2_K/Q8_K input bytes, exact historical parent scalar dot and child interleaved x86 AVX2 GEMV yield different FP32 output bits in all eight rows."),
}
for short, (verdict, checker, coverage, reason) in later_reviews.items():
    matches = [entry for commit, entry in entries.items() if commit.startswith(short)]
    assert len(matches) == 1 and (root / f"history-eq/gpu/llama.cpp/{short}/README.md").is_file()
    matches[0].update({"checker_status": "checked", "verdict": verdict, "checker_target": checker,
                       "coverage": coverage, "reason": reason,
                       "evidence": f"history-eq/gpu/llama.cpp/{short}/README.md"})

screens = Counter(entry["screen"] for entry in ledger["entries"])
confirmed = [entry for entry in ledger["entries"] if entry["screen"] == "confirmed_optimization"]
verdicts = Counter(entry.get("verdict") for entry in confirmed)
ledger["summary"] = {
    "confirmed_optimizations": len(confirmed),
    "checked_optimizations": len(confirmed) - verdicts[None],
    "pending_checker_optimizations": verdicts[None],
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_or_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger_path.write_text(json.dumps(ledger, indent=2, ensure_ascii=False) + "\n")
print(ledger["summary"])
