Project 1. A Benchmark for Verified Optimization of Real-World Software
Motivation & goal
Pitch. Agents already make real repositories faster, but every benchmark that measures this accepts a patch when its tests pass, and agents exploit the tests. We build the first benchmark in which a speedup counts only with a machine-checked proof that the new code behaves exactly like the old code, on deployed code in cryptography, ML kernels, smart contracts, language runtimes and systems software, and across the formal systems where such code already lives.
Tests are broken as the judge. GSO, SWE-Perf and SWE-fficiency all score correctness with tests. GSO and SWE-fficiency document memoization, caching and environment-detection hacks, and a 2026 audit found that only 39 of 102 GSO tasks and 11 of 140 SWE-Perf tasks stay valid across machines.
A proof fixes the judge and keeps the task open. Correctness is fixed by the original code, while speedup is continuous, so the benchmark does not saturate as agents improve.
Accepted results are real contributions. A verified speedup on a real repository is a pull request that maintainers can merge without re-reviewing its correctness.
Problem definition
A task is a repository at a pinned commit, a target (one function or the whole repository), a checker from an existing formal system, and the repository's own benchmarks as hidden workloads. The agent returns a patch replacing f by f' and evidence that f' is equivalent to f, which the checker accepts with f unchanged. The original implementation is the specification, so no task needs a written specification. Scores are verified speedups, and each result carries a guarantee tier.
Tier 1. Kernel-checked proof for all inputs.
Tier 2. Unbounded proof checked by an SMT-based verifier rather than a proof kernel.
Tier 3. Bounded equivalence, for all inputs up to a size or loop bound.
Tier 0. Tests only. This is the control condition and never counts as verified.
Scope, impact and open-endedness
Diverse domains, not puzzles. Tasks come from code that is deployed or widely depended on. This includes cryptography (HACL*, libjade, SymCrypt, AWS-LC), ML kernels (Triton kernels such as FlashAttention), smart contracts (Solady, OpenZeppelin), language runtimes and standard libraries (Lean core, Rust std, Isabelle and ACL2 libraries), authorization engines (Cedar), hardware models (ACL2 x86isa), and the compression, archiving, build and parsing tools that Aqueduct migrates.
Every task can make impact. A task is admitted only if its code is deployed or widely used, its target lies on a hot path measured by the repository's own benchmarks, and an accepted result has an upstream path. A solved task is therefore a mergeable pull request with its proof attached, and merged pull requests are a reported metric.
Open-ended by construction. A task is scored by its speedup over the best verified result so far, with no maximum, so it is never finished. Human performance commits are baselines to beat rather than answers. New tasks arrive with every release and every new performance commit, which also limits contamination.
Graded difficulty. Tasks range from single-function replacements in a standard library, to repository-level targets where the agent picks the functions and must improve application benchmarks, to data-representation changes across a module.
Which systems can use the original as the specification

System
How the original becomes the specification
Guarantee
Real-world code and main limits
Lean 4
Stated directly as @f = @g and registered as a csimp replacement.
Tier 1 (kernel)
Few real applications, which Aqueduct ports fill. Lean core has 61 csimp, 165 unchecked implemented_by and 980 extern annotations.
Isabelle/HOL, ACL2
Stated directly. Isabelle uses proven code equations, and ACL2 mbe proves the :exec body equal to the :logic body.
Tier 1 (kernel)
AFP (1,034 entries), ACL2 x86isa and industrial hardware books. Code extraction is trusted.
Dafny, Liquid Haskell
Only when the original is a pure function (Dafny function by method, Liquid Haskell reflect). Dafny methods cannot appear in specifications.
Tier 2 (SMT)
AWS cryptographic libraries in Dafny and ordinary Haskell libraries.
Rust to Lean (Aeneas, also behind hax)
Both versions become Lean functions, so f = f' is a plain equation.
Tier 1, translator trusted
Safe Rust only, without unsafe, interior mutability or concurrency. Used for SymCrypt in Windows.
C to Isabelle (AutoCorres2)
Both versions become monadic HOL functions with correspondence proofs.
Tier 1
C subset without address-of locals, floating point, goto or varargs.
EVM to Lean (EVMYulLean, EquiVM)
Bytecode refinement is proved in Lean.
Tier 1, ignores gas, logs and revert data
Experimental (2026). Case studies include WETH9 and OpenZeppelin.
Triton kernels in Lean (VeriTile)
Kernels are ported by hand into a Lean DSL, and ComputeRefine proves that one kernel refines another (same writes).
Tier 1 over real arithmetic, rounding abstract
173 of 184 TritonBench-G kernels ported, FlashAttention proved. The port is not proved to match the Python kernel, and IEEE-754 is out of scope.
SAW
Extracts both implementations and proves the terms equal by dual symbolic execution.
Tier 3 in practice (bounded loops), Rocq export for full proofs
C/LLVM, Java and Rust MIR. Used for AWS-LC and s2n-tls.
Kani, CBMC, Alive2, hevm, halmos
An equivalence harness asserts f(x) = f'(x).
Tier 3, unbounded only with loop contracts
Rust, C, LLVM IR and EVM. Solady has already been checked against OpenZeppelin with halmos.
Verus, Frama-C WP, Creusot, Prusti
Not directly. Executable code cannot appear in specifications, so a specification twin must be written. Frama-C RPP (relational) is a prototype.
Tier 1 or 2, against the twin
Existing postconditions are usually partial. Why3 has no Lean driver.
HACL*, libjade, CryptOpt, s2n-bignum
Reference and optimized code are already proved equivalent, or both are proved against one specification.
Tier 1
Cryptography only, with mostly manual proofs. Ready-made tasks with human baselines.


Primary tracks (Tier 1). Lean, Isabelle and ACL2 state f = f' directly. Aeneas (Rust to Lean) and AutoCorres2 (C to Isabelle) bring real Rust and C code into the same form, with the translator trusted and a language subset enforced. VeriTile gives the same form for Triton GPU kernels, over real arithmetic and a hand-written port.
Widest reach (Tier 3). SAW, Kani, CBMC and hevm check equivalence of real C, Rust, LLVM and EVM code by dual symbolic execution or bounded model checking, with no proof engineering. We report them as a separate tier and never mix them with proofs.
More limited than they look. In Verus, Frama-C/ACSL, Creusot and Prusti, executable code cannot appear in specifications, so the original cannot be the specification without a hand-written twin. Their existing postconditions are usually partial, and keeping them does not rule out behavior changes. Frama-C has no route to Lean, since Why3 has no Lean driver, and we do not build one.
List of Contributions
A cross-system study of where verified optimization can be stated today, with its guarantee and coverage.
A benchmark of tasks from real repositories in five tracks (Lean, Rust through Aeneas, C through AutoCorres2 and SAW/CBMC, EVM through hevm/halmos and Lean EVM semantics, GPU kernels through VeriTile), with human baselines.
Harnesses that reuse each system's checker and the Aqueduct acceptance and timing protocol.
Baseline agent results and upstreamed performance pull requests.
Proposed Approach
Task sources. (1) Historical performance commits, where the old version is f and the human change is a baseline. (2) Existing reference and optimized pairs, which are tasks by construction: Lean csimp pairs, Isabelle code equations, ACL2 mbe, HACL* portable and vectorized code, libjade reference and AVX2 code, OpenZeppelin and Solady. (3) Hot functions found by profiling current releases, with no known answer.
Real-world targets with upstream potential. Lean core has 165 unchecked implemented_by substitutions next to 61 proved csimp replacements (v4.35.0-rc1). Those on pure code are tasks whose accepted result is a Lean pull request. Other targets are Rust crates within the Aeneas subset, AWS-LC and s2n-tls where SAW specifications exist, Solady and OpenZeppelin where gas is the cost, executable AFP entries, and Triton kernels from TritonBench-G, 173 of which VeriTile has already ported to Lean.
Existing infrastructure only. Each track uses the system's own checker. On top we add a fresh-environment acceptance check (unchanged reference, audited axioms, no unverified native substitutions) and paired timing on fixed hardware.
Settings. Function-level (target given) and repository-level (the agent selects targets), measured by microbenchmarks and application-level macrobenchmarks.
Questions/hypothesis
H1. Requiring a proof eliminates reward hacking while keeping most of the speedup that agents find under tests.
H2. A large share of test-accepted optimizations are wrong. We measure this by running the Tier 0 condition and checking its patches with the provers.
H3. The bottleneck differs by track. It is the proof in Lean and Isabelle, and finding the optimization in bounded checkers.
H4. Bounded checkers invite optimizations that are correct only up to the bound, which we detect by testing beyond it.
H5. Agents match or beat human performance commits on a measurable fraction of tasks.
Related Work
Test-based optimization benchmarks. PIE, ECCO, EffiBench, KernelBench, GSO, SWE-Perf and SWE-fficiency use real or realistic tasks but judge correctness with tests, and several document reward hacking.
Equivalence benchmarks. EqBench (272 small synthetic C and Java pairs) and UC-KLEE (150 libc routine pairs, inputs up to 8 bytes) test equivalence checking without an optimization objective.
Verified optimization in practice. HACL*, libjade, CryptOpt (1.74x over GCC with a Coq-checked equivalence) and s2n-bignum are narrow and mostly human-driven, and all are in cryptography.
Verified code generation benchmarks. Verina, Vero, VeriCoding and similar benchmarks measure correctness, not speed.
Evaluation
Verified speedup (geometric mean, median, vfast_p) at the function and application levels, per guarantee tier.
Acceptance rate and cost (tokens, wall-clock time, proof size).
Wrong-under-tests rate for the Tier 0 condition.
Ratio to the human baseline, and the number of merged upstream pull requests.
Results
Pilot in Lean (Aqueduct). 156 of 189 Verina functions became faster with proofs (geometric mean 1.851x). On 17 migrated repositories, 92 proved rewrites gave 1.864x at the function level and 1.120x at the application level, with 47 of 51 scenarios faster.


我看了几个库以及我们的task，我的理解是ours采用的benchmark需要尽量满足以下标准：
是公认有价值/在使用的仓库，进行optimization有academic & industry value
有可复用的执行语义或代码导入路径，能机器检查原程序与优化后程序的行为等价／明确的refinement；不要求预先有人工功能spec，已有spec/proof是可复用资产
在性能（execution time，GPU memory etc）方面已经有现成的benchmark，不需要额外构造（或者没benchmark但是有使用的数据集合etc构造起来比较容易）
有优化的可能性&必要（这个是最不重要的，而且我觉得如果证明verified optimization能够比专家优化的code还强那contribution应该更大）
分别对应表格里的U、C（等价验证路径完整度）、E、F；C不按已有spec覆盖率评分。

GPT对现有提供的仓库和额外的仓库进行调研，结果如另一个page里的大表

对GPTsuggest的top-tier repo进行复核：
Cranelift / VeriISLE：Rust，wasm的编译代码，ISLE是其中给IR匹配对应机器码的部分，VeriISLE 用 SMT 检查 rule / rule chain 的 semantic refinement，ISA semantics 部分是 handwritten、部分可来自 AArch64 ASL，有专门的Sightglass性能优化的benchmark
BoringSSL / Bedrock2 P-256：C/C++/Assembly，谷歌的openSSL fork，其中P-256 point add / multiply的部分有specification，ECDH和ECDSA里有性能benchmark，其实全仓库都有性能benchmark；没有现成spec的部分仍可按函数建立旧/新等价检查
SymCrypt：Rust，Microsoft的crypto library，verification release（2026）里有rust formal specs，old/new rust都可以通过aeneas翻译成lean，性能方面unit tests提供完整的性能report并且和openSSL etc 比较
s2n-bignum：AWS的crypto code library，function level HOL Light proof，repo内也有性能benchmark（但是似乎headroom低，有superoptimizer）
HACL* / EverCrypt：verified crypto library，部署在linux kernel，HACL用Low* (F*)验证之后编译成C，per-item spec且有memory safety等check，有project everest写过测试，似乎headroom很低，已经经过多轮优化了，倾向于是现有的spec
EverParse / EverCBOR：project everest的verified parser generation ecosystem，F*，functional spec+proof，EverCBOR 2025 paper有benchmark并且和QCBOR等比较efficiency
Vest：基于verus的Rust parser，research project for usenix，没有什么部署，function/memory spec，DSL and ASN.1前端没有形式化，有Bitcoin，WASM和TLS的benchmark
Solady：web3用的Solidity library，已有很多测试；没有预存功能spec不构成排除理由，但测试不能替代旧/新等价证明，需逐函数核验Halmos等工具对可观察行为的覆盖。
Kuiper：F*-based的GPU programming，编译后生成CUDA，function level spec，但是repo readme里说还有admitted proof，有benchmark，在各种chip上跑并且和手写cuda和cublas比较，是GPU里比较好的candidate？
Lean4Lean kernel：verified implementation，但似乎并不在现在的lean core里？可以使用Mathlib的checker来看性能
lean-zip：verified DEFLATE/zlib/gzip implementation，有per-item lean spec，有各种gzip，zlib，压缩解压缩etc的benchmark，optimization空间比较大（比product level zip algorithms还是差了不少）
Verified-memory-allocator：Rust + Verus 写的 mimalloc-style memory allocator，有完整的spec和minialloc的benchmark，但是没啥product-level usage
Verified-storage：Verus verified storage systems repository，有完整的spec和benchmark（本身是paper）同样没什么product level usage
Cedar SymCC：lean formalized Cedar，per-item spec，但是没啥benchmark管性能，且symcc本身不是real-world software，相当于是formalized cedar
VeriTile：主要是性能测试比较困难，proved artifact 和 timed executable 之间存在 correspondence gap，且没有wire float相关的证明
Alive2 series: https://github.com/AliveToolkit/alive2，直接验证 old/new LLVM IR refinement
AWS Database Encryption SDK for DynamoDB：Dafny，编译到 Java、.NET 和 Rust的，有专门的performance benchmark db-esdk-performance-testing/benchmarks，需要筛选可以reference as spec的non-method的部分（？）

On alive2: 主要的问题或许是我们不知道哪些item需要equivalence，所以没把


First stage
With spec: Lean4Lean kernel, lean-zip, kuiper, vest
w/o spec: libdivide, xxHash, fast_float, rust-base64, lz4_flex, miniz_oxide
