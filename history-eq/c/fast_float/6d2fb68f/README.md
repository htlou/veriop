# `6d2fb68f`: right-sized `to_float` bit assembly

**Verdict: EQUIV_PARTIAL.** The sampled performance commit `6d2fb68f5c928f75642762b235875cfbbd807687` changes only `to_float` in `include/fast_float/float_common.h`. Its commit message says the new width and sign-shift structure improves code generation. On the checked little-endian x86-64 target, the old and new functions produce identical output bits for every `uint64_t mantissa`, `int32_t power2`, and Boolean sign, for both `float` and `double`.

[`source-scoped.diff`](source-scoped.diff) records the entire source change. The identical [`wrap.cpp`](wrap.cpp) calls each historical `to_float` template specialization and returns the raw output bits. Clang 20.1.8 compiles the two historical `include/` trees with `-std=c++20 -O2`; the resulting [old IR](old.ll) and [new IR](new.ll) differ. Alive2 checks both named functions in [old→new](fwd.log) and [new→old](bwd.log) directions. Each log reports `2 correct transformations, 0 incorrect, 0 failed-to-prove, 0 Alive2 errors`. The [entry](entry.json) records the checked scope.

The proof covers the changed function on this target; it does not cover the old big-endian branch or the public `from_chars` call chain. No official before/after benchmark score has been measured for this historical commit.

Reproduce from the project root after extracting the historical headers:

```sh
mkdir -p /tmp/ff-6d-old /tmp/ff-6d-new
git -C benchmarks/repos/fast_float archive 6d2fb68f^ include | tar -x -C /tmp/ff-6d-old
git -C benchmarks/repos/fast_float archive 6d2fb68f include | tar -x -C /tmp/ff-6d-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++20 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-6d-old/include history-eq/c/fast_float/6d2fb68f/wrap.cpp -o history-eq/c/fast_float/6d2fb68f/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++20 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-6d-new/include history-eq/c/fast_float/6d2fb68f/wrap.cpp -o history-eq/c/fast_float/6d2fb68f/new.ll
alive2/build/alive2/alive-tv --smt-to=30000 --always-verify history-eq/c/fast_float/6d2fb68f/old.ll history-eq/c/fast_float/6d2fb68f/new.ll
alive2/build/alive2/alive-tv --smt-to=30000 --always-verify history-eq/c/fast_float/6d2fb68f/new.ll history-eq/c/fast_float/6d2fb68f/old.ll
```
