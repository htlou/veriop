# CUTLASS fixed-sample source-gap screening

All 47 sampled keyword candidates were screened using upstream commit pages, the [CUTLASS 2.0 pull request](https://github.com/NVIDIA/cutlass/pull/62) for the oversized release commit, and the local changed-path audit. The 23 optimization commits below lack at least one exact historical changed blob locally. They are `UNKNOWN`: neither Volta nor Kuiper has compared their historical before/after kernels. Release commits are included only where the upstream release message explicitly describes performance work. This does not imply every changed path is an optimization.

| Optimization commit | Intent evidence | Missing changed blobs |
|---|---|---:|
| [`06e560d9`](https://github.com/NVIDIA/cutlass/commit/06e560d98a5fe8acb975db2c4c26817b6c90acb1) | Blockwise/groupwise kernel improvement and dependent-launch path. | 4 |
| [`08101d9d`](https://github.com/NVIDIA/cutlass/commit/08101d9d0ca68fbdd4ed8833a9fa66dc3948b77d) | Changes an existing SM90 mixed-dtype GEMM kernel for improvement. | 12 |
| [`0dc3ba60`](https://github.com/NVIDIA/cutlass/commit/0dc3ba60b310a7e8915d235613e88bdbf5bf21b5) | Adds a vectorized fast-tanh sigmoid path while refactoring existing epilogues. | 9 |
| [`1e64f153`](https://github.com/NVIDIA/cutlass/commit/1e64f153b311ab91b52c2d47dfbde2fa6d9cacad) | Improves Stream-K work distribution and load balance. | 4 |
| [`1fc71b3e`](https://github.com/NVIDIA/cutlass/commit/1fc71b3ed1cab3541f7482c68ee19d0e40ef69d3) | Changes SM100 MMA descriptor offsetting to fix a stated performance regression. | 2 |
| [`2b78c2fe`](https://github.com/NVIDIA/cutlass/commit/2b78c2fe31d4adb4770f3ca226a7b4acc4e85e2b) | Changes Hopper blockwise implementation under an explicitly optimized branch. | 18 |
| [`2e07c4cc`](https://github.com/NVIDIA/cutlass/commit/2e07c4cc2fc94f4cd396ecf1e9132caf1efba50e) | CUTLASS 2.7 release includes optimized strided-DGRAD iterators and GEMM tuning. | 58 |
| [`39b352fa`](https://github.com/NVIDIA/cutlass/commit/39b352fa9341cd39e5e0fa90721e6f09c751c8ff) | CUTLASS 4.6 development update bundles kernel improvements with other changes. | 239 |
| [`4c42f73f`](https://github.com/NVIDIA/cutlass/commit/4c42f73fdab5787e3bb57717f35a8cb1b3c0dc6d) | Changes existing mixed-dtype GEMM implementation for improvement. | 7 |
| [`6c2f8f2f`](https://github.com/NVIDIA/cutlass/commit/6c2f8f2fb877415685f06f53b9c6d82105a6c5e9) | CUTLASS 2.6.1 release explicitly includes strided-DGRAD performance enhancements. | 72 |
| [`764b840d`](https://github.com/NVIDIA/cutlass/commit/764b840d6fbf2840cc3ca5f36025eac2593616ae) | Tunes Stream-K performance as part of its example update. | 6 |
| [`7a7796af`](https://github.com/NVIDIA/cutlass/commit/7a7796afaeb1986bb50b44ab35fefaca75394528) | Avoids branches and adds unrolling in the existing is_zero path, alongside a fix. | 2 |
| [`7d8317a6`](https://github.com/NVIDIA/cutlass/commit/7d8317a63e0a978a8dbb3c1fb7af4dbe4f286616) | Speeds mixed-input conversion and removes a shuffle from the existing TensorOp path. | 25 |
| [`957eb921`](https://github.com/NVIDIA/cutlass/commit/957eb92128c047937e5674e87377249fad2a1728) | Avoids NumPy round trips for in-range CuTe DSL integer scalars; upstream measured constructor latency. | 2 |
| [`be60a0b2`](https://github.com/NVIDIA/cutlass/commit/be60a0b27204078dc0f3f1d6ed4a95cdb2114111) | CUTLASS 3.5.1 release explicitly includes optimizations alongside fixes. | 337 |
| [`c008b4ae`](https://github.com/NVIDIA/cutlass/commit/c008b4aea869adac8cd77ecf663d93a09e776bf3) | CUTLASS 3.3.0 release explicitly includes performance improvements alongside features. | 316 |
| [`c53f3339`](https://github.com/NVIDIA/cutlass/commit/c53f3339bb95ba52c5571134b1b3407e95a2546b) | CUTLASS 2.3 release explicitly includes performance enhancements alongside new kernels. | 84 |
| [`ca4fdbea`](https://github.com/NVIDIA/cutlass/commit/ca4fdbea708ad940c905359788372b8add9f85e0) | Improves existing Hopper blockwise/groupwise GEMM while adding Blackwell support. | 29 |
| [`d0d941ef`](https://github.com/NVIDIA/cutlass/commit/d0d941efc79ee9d26660bd5a82e015c4da93d62c) | Optimizes FP32/FP16x2 Hardswish paths within a mixed correction/feature change. | 21 |
| [`dceabd4c`](https://github.com/NVIDIA/cutlass/commit/dceabd4c5a2aa8cb29ce5a05311a57519baadddc) | Adds a vectorized fast-tanh sigmoid implementation. | 4 |
| [`e5fcd125`](https://github.com/NVIDIA/cutlass/commit/e5fcd125a5cc1bd3e3a0063373e343b9beab6b14) | Replaces six extra MLIR operations with one Boolean and operation. | 2 |
| [`ecbd2456`](https://github.com/NVIDIA/cutlass/commit/ecbd24566ce9f120273daa38805be26739eaa3e7) | Enables Clang shared-memory and ldmatrix intrinsics to eliminate a stated latency regression. | 6 |
| [`fb335f6a`](https://github.com/NVIDIA/cutlass/commit/fb335f6a5fe19d22a834b19706707f4489427482) | CUTLASS 2.0 release targets better Turing Tensor Core performance and optimized device types. | 154 |

The other sampled commits below are excluded from the optimization denominator because they add functionality, repair behavior/builds, or change documentation without a faster existing path. Exclusion is based on the upstream change, not on a checker outcome.

| Excluded commit | Reason |
|---|---|
| [`012c62c7`](https://github.com/NVIDIA/cutlass/commit/012c62c748bdd5b2badc3ebe83e0891dee7c4e31) | GEMM reduce-K correctness fixes and device-interface addition, no speed claim. |
| [`04a9777b`](https://github.com/NVIDIA/cutlass/commit/04a9777b87cc89f2f7056cfeff739ec1f4950da3) | Softmax example and epilogue functionality revision, no documented faster existing path. |
| [`0ce648f5`](https://github.com/NVIDIA/cutlass/commit/0ce648f53f9573b398e4f065a0b65e30463e9fac) | Adds a new SM120 pointer-array TMA collective for previously unsupported grouped GEMM cases. |
| [`1732ed7d`](https://github.com/NVIDIA/cutlass/commit/1732ed7da3b81d9f28b0130370ba70755a7e6dda) | Adds CuTe DSL struct flattening across control flow to make programs traceable. |
| [`1b4e2447`](https://github.com/NVIDIA/cutlass/commit/1b4e24470a369fc0dfc12987c2a43036207b4f04) | Adds and updates a DualGemm example; the only performance note calls a mode slower. |
| [`1e739482`](https://github.com/NVIDIA/cutlass/commit/1e7394829291360bdcf07036cbe5411631d2d33b) | CUTLASS 4.6.1 version and documentation link correction. |
| [`2052fd38`](https://github.com/NVIDIA/cutlass/commit/2052fd388535cdfee5f853aa296fb544e54d1a24) | Adds a new blockscaled grouped GEMM for MoE use cases. |
| [`288af365`](https://github.com/NVIDIA/cutlass/commit/288af365db7c665a251c0dc2b556d2d5ade1fd77) | Adds synchronization to repair a write-after-read hazard. |
| [`2a9fa23e`](https://github.com/NVIDIA/cutlass/commit/2a9fa23e06b1fc0b7fab7a3e29ff1b17e325da7f) | Avoids a compiler warning in cute::print. |
| [`86cae03c`](https://github.com/NVIDIA/cutlass/commit/86cae03cea301817232290d231092ef2c18961d7) | Exposes a StoreT template parameter for possible later speed, without an implemented speedup. |
| [`96a11a1e`](https://github.com/NVIDIA/cutlass/commit/96a11a1ef33f5612b6450c49fe8f261432d02fd5) | Removes copy constructors to enable device-side kernel launch. |
| [`982748aa`](https://github.com/NVIDIA/cutlass/commit/982748aa7356fa838c2ea4994ddcb0b2a4b4cefa) | Adds a new grouped GEMM persistent kernel and its tests. |
| [`a49a78ff`](https://github.com/NVIDIA/cutlass/commit/a49a78ffefc86a87160dfe0ccc3a3a2d1622c918) | CUTLASS 4.2 version release and profiler-default correction. |
| [`a75b4ac4`](https://github.com/NVIDIA/cutlass/commit/a75b4ac483166189a45290783cb0a18af5ff0ea5) | Corrects Stream-K epilogue reduction with broadcast. |
| [`add4ba62`](https://github.com/NVIDIA/cutlass/commit/add4ba622f1cdebc145d1df0e9620c3c84c00a52) | Works around a GCC 8/CUDA 11.4 build failure. |
| [`b7508e33`](https://github.com/NVIDIA/cutlass/commit/b7508e337938137a699e486d8997646980acfc58) | Fixes invalid inline PTX escaping under Clang. |
| [`d1ef0e87`](https://github.com/NVIDIA/cutlass/commit/d1ef0e87f2f3d68cf5ad7472cadc1152a8d3857c) | Fixes DistGEMM workspace and parameter bugs. |
| [`dd571f0e`](https://github.com/NVIDIA/cutlass/commit/dd571f0edb3e85b43d3d9bc590c163c38bfd7e47) | Documentation, comments, and indentation only. |
| [`df18f5e4`](https://github.com/NVIDIA/cutlass/commit/df18f5e4f5de76bed8be1de8e4c245f2f5ec3020) | Fixes groupwise FP8 kernel edge cases and reference layout, without a stated speedup. |
| [`e1483d5f`](https://github.com/NVIDIA/cutlass/commit/e1483d5fa0c9eeee4589d11978d5908314b4bb56) | Fixes Clang build errors. |
| [`ffa119a1`](https://github.com/NVIDIA/cutlass/commit/ffa119a1255d78998536107466cc7097ecefa393) | Adds an optional fastmath flag for future callers, without changing existing reductions. |

No official before/after CUTLASS benchmark score or whole-commit equivalence verdict follows from this source screen.
