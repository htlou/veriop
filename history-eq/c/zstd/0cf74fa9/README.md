# zstd `0cf74fa9`: pool allocation by one fewer slot

**Selected label: `NOT_EQUIV` for pool-constructor success under a bounded allocator; whole-commit verdict: `UNKNOWN`.** The historical commit `0cf74fa95751d2ce7e61f394243d5f5e19329927` changes two `calloc` request sizes in `lib/compress/zstdmt_compress.c`. `old-source.c`, `new-source.c`, and `source.diff` are exact historical Git objects; `source-manifest.json` records their hashes. The public caller `ZSTDMT_createCCtx` rejects thread counts outside 1..128 before calling either pool constructor.

`prepare.py` copies the historical `ZSTDMT_createBufferPool` and `ZSTDMT_createCCtxPool` bodies verbatim into two small check programs. The only substitution is `calloc`: one recorder returns `NULL` and reports the requested byte count; a second allocator returns an initially zero-initialized static region when the request fits a specified budget. Each check calls one constructor once. The wrappers constrain `nbThreads` to the caller's valid 1..128 range. This tests allocation behavior, not the whole compression implementation.

For `nbThreads=2` on the checked 64-bit ABI, the buffer-pool request changes from **120 to 104 bytes**, and the context-pool request from **32 to 24 bytes**. Alive2 refutes equality of both request-size wrappers (`buffer-forward.log`, `cctx-forward.log`). With budgets of 112 and 24 bytes respectively, Alive2 also refutes equality of the constructor success flags: the old constructor returns `NULL` and the new one succeeds (`buffer-budget-forward.log`, `cctx-budget-forward.log`). Both revisions' generated LLVM modules pass `opt -passes=verify`.

The new allocation matches the source's one-element trailing array: `sizeof(pool)` already includes slot zero, and `totalBuffers`/`totalCCtx` bounds later writes. This local test does not establish complete `ZSTDMT_createCCtx` behavior or an unrestricted refinement relation: thread-pool creation, cleanup, and all later compression operations are outside the harness. No official historical performance score was measured.

The [compiled layout probes](layout_driver.c) enumerate every caller-valid thread count, 1–128, against both exact constructors ([old requests](allocation-old.log), [new requests](allocation-new.log)). On this 64-bit ABI, the new buffer and context pools each request exactly one slot less: 16 and 8 bytes respectively. The [Z3 resource-order query](allocation-order.smt2) returns [`unsat`, `unsat`, `sat`, `sat`](allocation-order.log): under the same deterministic 5000-byte bounded allocator, old success always implies new success, and at two threads budgets of 104 or 24 bytes make only the corresponding new allocation succeed. This proves a **one-way allocation-success property in that model**, not semantic refinement of the complete zstd program or equality of its allocator calls. Z3 is invoked directly; its location inside the Kuiper package does not make this a Kuiper proof. The whole-commit verdict remains `UNKNOWN`; the selected `NOT_EQUIV` label applies only to the two constructor success flags under the stated allocator.

Reproduce the local check from the project root:

```sh
python3 history-eq/c/zstd/0cf74fa9/prepare.py
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -S -emit-llvm history-eq/c/zstd/0cf74fa9/old-budget.c -o history-eq/c/zstd/0cf74fa9/old-budget.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -S -emit-llvm history-eq/c/zstd/0cf74fa9/new-budget.c -o history-eq/c/zstd/0cf74fa9/new-budget.ll
alive2/build/alive2/alive-tv --func=target_buffer_success --always-verify history-eq/c/zstd/0cf74fa9/old-budget.ll history-eq/c/zstd/0cf74fa9/new-budget.ll
alive2/build/alive2/alive-tv --func=target_cctx_success --always-verify history-eq/c/zstd/0cf74fa9/old-budget.ll history-eq/c/zstd/0cf74fa9/new-budget.ll
alive2/toolchain/usr/bin/clang-20 -std=c11 -O0 -DOLD history-eq/c/zstd/0cf74fa9/layout_driver.c -o /tmp/zstd-0cf-layout-old
alive2/toolchain/usr/bin/clang-20 -std=c11 -O0 -DNEW history-eq/c/zstd/0cf74fa9/layout_driver.c -o /tmp/zstd-0cf-layout-new
/tmp/zstd-0cf-layout-old
/tmp/zstd-0cf-layout-new
benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 history-eq/c/zstd/0cf74fa9/allocation-order.smt2
```
