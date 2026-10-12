#!/usr/bin/env python3
"""Screen FlashAttention source-gap candidates from local commit metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/flash-attention"
ledger = root / "history-eq/results/flash-attention-pinned-sample-audit.json"
evidence = root / "history-eq/gpu/flash-attention/metadata-source-gap-screening.md"

performance = {
    "0658e320": ("UNSUPPORTED", "Adds build switches for faster, smaller binaries; Volta does not compare build artifacts."),
    "073afd59": ("UNSUPPORTED", "Reduces PyTorch header includes for build cost, alongside CI changes."),
    "0b4cb4e6": ("UNSUPPORTED", "Fixes AMD CK split-KV dispatch and reports shape-dependent speedups; Volta accepts NVIDIA PTX."),
    "0dfb2817": ("UNSUPPORTED", "Avoids saving inference input buffers in the Python autograd wrapper."),
    "0e60e394": ("UNKNOWN", "Tries R2P masking in an SM90 kernel; the message reports no speed gain."),
    "11b32fd2": ("UNKNOWN", "Improves the paged cp.async kernel path."),
    "13cdceb3": ("UNSUPPORTED", "Adds BERT last-layer subset execution in model-level Python code."),
    "16d78bb2": ("UNKNOWN", "Adds a fast block-sparsity computation kernel and benchmarks."),
    "179f793b": ("UNSUPPORTED", "Tests a CuTe interface change intended to reduce CPU dispatch overhead."),
    "1879e089": ("UNSUPPORTED", "Reduces template instantiations for large head dimensions at build time."),
    "199401d3": ("UNSUPPORTED", "Sorts variable-length work and swizzles heads across kernel launches and CTAs."),
    "1fb12afd": ("UNKNOWN", "Removes a memcpy from the Triton backward kernel."),
    "22f7daab": ("UNKNOWN", "Removes LSE/dPsum shuffles and backward-kernel state variables."),
    "294cfb35": ("UNKNOWN", "Recomputes sparse-MLA probabilities and chunks backward work to reduce memory and runtime."),
    "2a92225a": ("UNKNOWN", "Adds a 1-CTA MLA path and dispatch heuristic for dense and sparse attention."),
    "2c7177d0": ("UNKNOWN", "Reduces synchronization in the SM100 backward kernel."),
    "2ee80234": ("UNSUPPORTED", "Stabilizes Python CuTe JIT compile keys to avoid recompilation."),
    "321c57d0": ("UNKNOWN", "Changes the SM75 forward block size; upstream reports a 1.5x speedup."),
    "38ddafeb": ("UNKNOWN", "Optimizes SM100 HD256 variable-length scheduling and epilogues."),
    "40fa35ac": ("UNSUPPORTED", "Forces PackGQA for paged KV to reduce compile time and binary size."),
    "41789154": ("UNKNOWN", "Enables split-KV work partitioning for block-sparse attention."),
    "43617dea": ("UNSUPPORTED", "Removes a kernel template instantiation to speed compilation."),
    "47e91f1f": ("UNKNOWN", "Loads backward accumulators directly into registers to reduce shared memory."),
    "5018ac6a": ("UNKNOWN", "Adds an FP8 kernel with in-kernel V transposition and pipeline tuning."),
    "55778193": ("UNKNOWN", "Parallelizes CUDA backward over KV sequence to reduce atomic additions."),
    "5c1627a7": ("UNSUPPORTED", "Changes cross-CTA scheduling for faster deterministic causal backward."),
    "5dcdfcc6": ("UNKNOWN", "Changes SM100 R2P masking to process 32 elements per step with inline PTX."),
    "6328432b": ("UNSUPPORTED", "Updates AMD CK kernels for performance; Volta accepts NVIDIA PTX."),
    "65f723bb": ("UNSUPPORTED", "Splits backward CUDA translation units to speed compilation."),
    "672381f7": ("UNKNOWN", "Switches CuTe kernels to a newer fast division implementation."),
    "6b5f271c": ("UNSUPPORTED", "Avoids a Python einops repeat allocation by using Tensor.expand."),
    "6ba57efe": ("UNSUPPORTED", "Reduces Alibi specialization count to shorten compilation."),
    "7108d1c8": ("UNKNOWN", "Adds an efficient dual-bound R2P mask for local attention."),
    "751c762c": ("UNSUPPORTED", "Removes hdim-224 specialization to speed compilation."),
    "85d6dfe3": ("UNKNOWN", "Moves hd256 onto the general forward with ping-pong and chunked SplitKV support."),
    "8790c6ec": ("UNKNOWN", "Removes an mbarrier from SM100 backward dQ reduction."),
    "88d1657a": ("UNSUPPORTED", "Fixes AMD KV-cache behavior and updates its performance path."),
    "8d3a3b80": ("UNKNOWN", "Changes FA4 kernel code and reports upstream before/after throughput numbers."),
    "8dd0b479": ("UNSUPPORTED", "Forces PackGQA on SM8x to reduce compilation and binary size."),
    "908511b2": ("UNSUPPORTED", "Splits CUDA translation units to speed compilation."),
    "98eb7998": ("UNKNOWN", "Preserves hd256 alignment for vectorized output stores."),
    "98edb0d2": ("UNSUPPORTED", "Updates AMD ROCm backend for performance; Volta accepts NVIDIA PTX."),
    "a00ddeb2": ("UNKNOWN", "Fixes a performance regression in the SM100 hdim-128 2-CTA backward path."),
    "a512bd8c": ("UNKNOWN", "Adds efficient dual-bound R2P masking for local attention."),
    "b17c6fe2": ("UNKNOWN", "Cuts backward Q/dO shared-memory buffers from 4 KiB to 2 KiB each."),
    "b32efb1a": ("UNKNOWN", "Removes an unnecessary row-sum reduction in online softmax."),
    "b4bf9cc1": ("UNKNOWN", "Fixes a causal attention performance regression."),
    "c46b8144": ("UNSUPPORTED", "Adds a dynamic persistent scheduler and preparation kernel across CTAs."),
    "c4d8b063": ("UNKNOWN", "Adds vectorized score-mod evaluation to the forward kernel."),
    "cbbab839": ("UNKNOWN", "Tunes FP8 causal SM100 exp2-emulation frequency."),
    "ce088ab9": ("UNSUPPORTED", "Speeds CuTe scalar-mask JIT compilation."),
    "ce212720": ("UNSUPPORTED", "Removes hdim-160 specialization to shorten compilation."),
    "d380e87f": ("UNKNOWN", "Removes backward shared-memory dP-sum storage on SM75."),
    "d78c84a7": ("UNKNOWN", "Uses lower-latency named barriers for SM100 forward warp signaling."),
    "d86dabd8": ("UNKNOWN", "Speeds SM100 hdim-64 backward with separate TMEM slots and per-warp signaling."),
    "d95ee1a9": ("UNSUPPORTED", "Splits CUDA translation units to speed compilation."),
    "e724e258": ("UNKNOWN", "Adds a split-KV performance path to SM100 forward attention."),
    "e94f7e89": ("UNSUPPORTED", "Forces PackGQA for split attention to reduce compilation and binary size."),
    "e9515d5d": ("UNKNOWN", "Overlaps QK with softmax using SM100 S/P ping-pong scheduling."),
    "ed4959b2": ("UNKNOWN", "Force-inlines CUDA helpers and uses grid-constant parameters."),
    "ee77b931": ("UNSUPPORTED", "Swaps MQA sequence and head grid mapping for speed; whole-grid dispatch exceeds Volta's CTA-0 relation."),
    "f219c89c": ("UNKNOWN", "Adds a sparse MLA top-k kernel and scheduling path."),
    "f6a16e1b": ("UNSUPPORTED", "Allows compact block-sparse index tensors to avoid quadratic input-index memory."),
    "f98d345f": ("UNKNOWN", "Improves CuTe block-sparsity computation."),
    "fe5fb1b8": ("UNKNOWN", "Vectorizes mask-mod application for existing signatures."),
    "fffabc3d": ("UNKNOWN", "Distributes paged-KV address calculation across threads."),
}
excluded = {
    "0251105a": "Relaxes CuTe DSL version requirements.",
    "03729756": "Adds paged-KV support to the SM90 attention API.",
    "08f4c802": "Adds FLOPS reporting to a benchmark script.",
    "0bbb25a3": "Clamps staging to prevent shared-memory overflow.",
    "0cb66b41": "Refactors mask construction for subclassing.",
    "0d943f82": "Extends benchmark coverage to differing head dimensions.",
    "0f3fb00d": "Adds support for seqused and paged-KV input shapes.",
    "143b0ba2": "Adds block-sparsity and mask-mod functionality.",
    "1b2a6cde": "Adds a reference implementation to a benchmark.",
    "20cda05e": "Adds deterministic mode and fixes backward races.",
    "22a72234": "Fixes lint failures.",
    "2409214a": "Fixes FP8 numerical saturation.",
    "2715c539": "Deletes an old decode kernel without an existing-path speed claim.",
    "27b4eb98": "Adds head-dimension 256 support.",
    "27f501db": "Avoids an autotuning error on non-32-wide devices.",
    "2e6ae05b": "Restores a clamp to prevent Python integer overflow.",
    "3451a2a6": "Exposes an already-deterministic backward mode.",
    "34a3656b": "Adds more benchmark sequence lengths.",
    "35e5f00f": "Adds an AMD Triton backend.",
    "3669b252": "Adds a backward benchmark and unspecified small fixes.",
    "3da76cdb": "Fixes a Python ABI wheel tag.",
    "3f6ff1c1": "Fixes GCC 12 compilation compatibility.",
    "48b3acbc": "Combines attention benchmark cases into one script.",
    "4bc0ab1f": "Adds FA4 GPU CI infrastructure.",
    "4f892461": "Fixes FlexAttention expand behavior.",
    "50ca2348": "Adds a Triton implementation for benchmarking only.",
    "5183de43": "Refactors code to enable FlexAttention behavior.",
    "5301a359": "Adds AMD RDNA hardware support.",
    "53a4f341": "Fixes an upstream API compatibility change.",
    "55797f32": "Avoids an import error when rotary embedding is absent.",
    "5639535e": "Extends benchmark head-dimension coverage without a stated kernel speed change.",
    "5639b9d2": "Updates an MLA decode benchmark script.",
    "5678dd90": "Fixes non-local window-size handling.",
    "5d079fdd": "Fixes a Triton benchmark and its version note.",
    "5d2cd3bc": "Adds paged-attention support.",
    "60499abc": "Adds a benchmark script.",
    "62892fe4": "Adds attention-sink functionality to MLA.",
    "6865e601": "Fixes index-width overflow.",
    "6aed835d": "Adds an MLA decode benchmark script.",
    "6c4f74fb": "Fixes architecture-family feature checks.",
    "6c87fac4": "Updates benchmark scheduler metadata calls.",
    "6dba0373": "Refactors MLA forward and adds page-table support without a speed claim.",
    "701ebe05": "Adds the AMD Triton backend.",
    "7052e212": "Fixes integer overflow in a tile scheduler.",
    "71dbd937": "Improves sparse-MLA gradient accuracy at a stated forward-time cost.",
    "76d93310": "Adds tests and begins a backward-kernel unification without a speed claim.",
    "7ed0898c": "Updates a dependency to avoid a segfault.",
    "7fcd3e6a": "Adds model checkpoint format conversion.",
    "812cb1c9": "Updates CUTLASS to avoid a compilation warning.",
    "8166063a": "Changes block size to avoid shared-memory overflow.",
    "83b8b8f0": "Works around a CUDA 12 code-generation regression.",
    "83e41b3c": "Adds custom-op compatibility with PyTorch compilation.",
    "83f9e450": "Fixes CI jobs.",
    "849f660f": "Changes FP8 numerical behavior.",
    "86dcb5d6": "Writes defined zeros for empty sparse tiles.",
    "91917b40": "Updates a split-KV benchmark script.",
    "93c9acac": "Improves sparse-MLA softmax numerical accuracy.",
    "940cd968": "Adds a new sparse-MLA backward feature.",
    "94345b45": "Adds non-multiple-of-32 head-dimension support.",
    "94e22c90": "Fixes an incorrect MLA forward compilation cache key.",
    "9505c743": "Adjusts an MLA decode benchmark input.",
    "97951590": "Fixes Triton launch-device selection.",
    "97e13de2": "Avoids a compiler warning.",
    "9c531bdc": "Serializes CI compilation to avoid an out-of-memory failure.",
    "9d242ba2": "Refactors benchmark argument parsing.",
    "9d61d35b": "Fixes an SM90 backward crash.",
    "9d871f9f": "Enables head-dimension 96 backward support.",
    "9dbc491a": "Renames files and adds a benchmark script.",
    "a01d1213": "Adds a FasterTransformer reference kernel for benchmarking.",
    "a941b76d": "Refactors softmax scale and fast-divmod helpers without a speed claim.",
    "af049674": "Adds SM103a instruction support.",
    "b2fc79d1": "Updates a benchmark script.",
    "b518517c": "Adds an AMD Triton backend.",
    "b54df166": "Adds variable-length score-mod behavior to backward attention.",
    "b62d93f3": "Fixes integer overflow.",
    "b65ae6b1": "Adds FP8 e4m3/e5m2 support.",
    "b86e0cc1": "Fixes a scheduling request bug.",
    "bc58abc6": "Adds dynamic auxiliary scalar support.",
    "c7f20a2d": "Adds a cuDNN comparison benchmark.",
    "c984208d": "Avoids an NVCC compilation crash.",
    "cb213fce": "Adds paged-KV support to an hd256 forward kernel.",
    "cdaf2de6": "Adds more attention variants to a benchmark.",
    "d15f1531": "Adds sparse-MLA support for more query-head counts.",
    "d51a4a16": "Adds FA4 publishing configuration.",
    "d8f104e9": "Adds AMD ROCm support.",
    "d904855e": "Adds FlashMLA to a benchmark if installed.",
    "de79b136": "Reduces CI NVCC threads to avoid out-of-memory failures.",
    "dfe1a59e": "Adds variable-sequence-length support.",
    "e065bf1b": "Recommends a CUDA package extra in documentation.",
    "e2182cc2": "Adds AMD ROCm paged-KV support.",
    "e4d25a43": "Renames flex auxiliary tensors and fixes bugs.",
    "e4f726fc": "Adds ALiBi functionality.",
    "ea3ecea9": "Adds a benchmark parameter and unrelated small code changes.",
    "ecccf022": "Refactors softmax helpers without a stated speed objective.",
    "ed553e92": "Adds a Megatron implementation for benchmarking.",
    "f2682b6c": "Adds fake-tensor compile-only testing support.",
    "f3423a8a": "Simplifies per-warp pipeline signaling while accepting a stated small speed loss.",
    "f6a294a2": "Adds GLA cases to a benchmark.",
    "f816dee6": "Adds unpadded LSE layout support.",
    "fa5b632d": "Fixes noisy logger output.",
    "fb88e5e4": "Moves benchmark utilities and adds AMP benchmark support.",
    "fc8cbad6": "Fixes FP8 compatibility with newer CuTe DSL.",
    "fd8d5eb3": "Adds variable-length score-mod support.",
    "fec3a6a1": "Fixes a kernel hang on empty tiles.",
}
assert len(performance) + len(excluded) == 170
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 179
lines = [
    "# FlashAttention fixed-sample metadata screen", "",
    "All 170 source-gap candidates were screened from local commit messages and changed-path "
    "trees. Intent and checker scope are metadata classifications, not a Volta or Kuiper proof. "
    "Every target here lacks at least one exact historical changed source blob.", "",
    "`UNKNOWN` means an NVIDIA kernel could potentially be compiled and compared if exact source "
    "were recovered. `UNSUPPORTED` means the performance change targets AMD, host/build code, "
    "or a multi-kernel scheduling relation outside Volta's selected one-PTX-kernel interface.", "",
    "Reproduce with `git -C benchmarks/repos/flash-attention cat-file -p <commit>` and "
    "`git -C benchmarks/repos/flash-attention diff-tree --no-commit-id --name-only -r <commit>`.", "",
    "| Commit | Subject | Classification | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix in sorted(performance.keys() | excluded.keys()):
    item = items[prefix]
    assert item["source_status"] == "missing_changed_blob"
    assert item["screen"] in ("intent_pending", "confirmed_optimization", "excluded_non_optimization")
    obj = subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-p", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout
    assert "\n\n" in obj and item["subject"] in obj.split("\n\n", 1)[1]
    paths = subprocess.run(
        ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", item["commit"]],
        check=True, capture_output=True, text=True,
    ).stdout.splitlines()
    assert paths
    if prefix in performance:
        verdict, reason = performance[prefix]
        item.update({
            "screen": "confirmed_optimization", "checker_status": "not_run", "verdict": verdict,
            "reason": reason,
            "coverage": "historical commit message and changed-path screen; no source-matched GPU comparison run",
            "evidence": str(evidence.relative_to(root)),
        })
        label = f"performance; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/Dao-AILab/flash-attention/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (72, 107, 0)
assert (verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (2, 38, 32)
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(verdicts.values()),
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
