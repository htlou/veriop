# xxHash `b8c3176`: constructor-based dispatch initialization

**Selected-tool verdict: `UNSUPPORTED`; whole-commit behavior: `UNKNOWN`.** This commit moves `XXH_setDispatch` to a constructor and removes lazy initialization from the dispatch entry points. The before/after source copies under `old/` and `new/` hash to the blob IDs in the commit's parent and child trees, including the changed `xxh_x86dispatch.c` blobs `b509035d` and `cb9aa004`.

The archived harness replaces only the CPUID and XGETBV inline assembly with explicit CPU models. With `XXH_g_dispatch.update != NULL` assumed, the update entry point passes bidirectional Alive2 for symbolic CPU features and for an AVX2 CPU: each of `r_entry_t7_cpu{0,2}/recheck-{fwd,bwd}.log` reports one correct transformation. This checks behavior **after** dispatch initialization. It does not establish that the new constructor runs, selects the same backend, or leaves the table initialized before every public API call. In this entry-point IR the relevant call is through an unconstrained, non-null function pointer, so the proof does not cover the changed initialization mechanism.

Without that assumption, `r_entry_t6_cpu2` reports an Alive2 mismatch under arbitrary initial global state. It is not a valid public-behavior counterexample because the new program relies on constructor initialization. The historical child IR contains `@llvm.global_ctors` calling `XXH_setDispatch`, absent from the parent IR. A [minimal C control](ctor-control.c) compiled at `-O0` likewise has a constructor only in the child IR; both native executables return 7 ([parent](ctor-control-old-native-O0.log), [child](ctor-control-new-native-O0.log)), but [Alive2's per-function check](ctor-control-alive2-O0.log) reports an incorrect transformation. [`ctor-boundary.json`](ctor-boundary.json) pins the historical source IDs and these artifacts. This demonstrates that the installed direct function-pair relation does not incorporate constructor execution. The no-init digest checks remain unresolved. Neither a verified public inequality nor whole-commit equivalence follows; `UNSUPPORTED` applies only to the selected Alive2 relation.

Recheck the control from the project root with Clang 20 and the installed Alive2:

```sh
for side in OLD NEW; do alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O0 -D"$side" -S -emit-llvm history-eq/c/xxHash/b8c3176/ctor-control.c -o "/tmp/veriop-ctor-${side}.ll"; done
alive2/build/alive2/alive-tv --func=target --always-verify --quiet /tmp/veriop-ctor-OLD.ll /tmp/veriop-ctor-NEW.ll
```
