# `8b7a55a0`: reuse the rounding-mode load

**Verdict: UNSUPPORTED by the installed Alive2.** The [historical source diff](source-scoped.diff) changes only `detail::rounds_to_nearest()`: it copies the `volatile float` to a local and reuses that value. The same [wrapper](wrap.cpp) was compiled against the exact parent and child `include/` trees with Clang 20.1.8, C++17 `-O2`. In the saved [old IR](old.ll), the function contains two `load volatile float` instructions; in the [new IR](new.ll), it contains one. Both IR modules pass LLVM 20 verification.

Alive2's [old→new](fwd.log) and [new→old](bwd.log) runs each report `Unsupported instruction: load volatile float` and one translation error, before an SMT query or semantic comparison. This is a checker support boundary. The changed number of volatile accesses prevents treating the programs as syntactically identical; no equality or inequality verdict is claimed. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-8b-old /tmp/ff-8b-new
git -C benchmarks/repos/fast_float archive 8b7a55a0^ include | tar -x -C /tmp/ff-8b-old
git -C benchmarks/repos/fast_float archive 8b7a55a0 include | tar -x -C /tmp/ff-8b-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-8b-old/include history-eq/c/fast_float/8b7a55a0/wrap.cpp -o history-eq/c/fast_float/8b7a55a0/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-8b-new/include history-eq/c/fast_float/8b7a55a0/wrap.cpp -o history-eq/c/fast_float/8b7a55a0/new.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 --func=target_rounds_to_nearest history-eq/c/fast_float/8b7a55a0/old.ll history-eq/c/fast_float/8b7a55a0/new.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 --func=target_rounds_to_nearest history-eq/c/fast_float/8b7a55a0/new.ll history-eq/c/fast_float/8b7a55a0/old.ll
```
