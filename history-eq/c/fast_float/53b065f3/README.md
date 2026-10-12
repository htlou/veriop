# `53b065f3`: reuse the SSE2 input load

**Verdict: EQUIV_PARTIAL.** The sampled performance commit `53b065f38dcd5fdfdcf92139c68344e235b12475` changes only `include/fast_float/ascii_number.h`. On x86-64 with SSE2, its changed 8-digit helpers are equivalent for every input bit pattern in the checked wrappers. This does not establish equivalence for other architectures, compilation modes, or the public `from_chars` call chain.

[`source-scoped.diff`](source-scoped.diff) records the complete historical source change. The identical [`wrap.cpp`](wrap.cpp) is compiled against the parent and child historical `include/` trees with Clang 20.1.8, `-std=c++20 -O2 -msse2`. Two 64-bit parameters enumerate all eight `char16_t` code units; a third covers every initial integer accumulator. The wrappers independently return the `char16_t` parser's success flag and updated accumulator, its packed-digit helper result, and both corresponding `char` outputs. The generated [old IR](old.ll) and [new IR](new.ll) differ and both contain the SSE2 packing intrinsic.

Alive2 checks all five named wrapper functions in [old→new](fwd.log) and [new→old](bwd.log) directions: each log reports `5 correct transformations, 0 incorrect, 0 failed-to-prove, 0 Alive2 errors`. Separate checks of the success flag and accumulator together cover both observable outputs of each parsing helper under this fixed-length input contract. The [machine-readable entry](entry.json) records the precise scope.

Reproduce from the project root after extracting the historical `include/` trees:

```sh
mkdir -p /tmp/ff-53b-old /tmp/ff-53b-new
git -C benchmarks/repos/fast_float archive 53b065f3^ include | tar -x -C /tmp/ff-53b-old
git -C benchmarks/repos/fast_float archive 53b065f3 include | tar -x -C /tmp/ff-53b-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++20 -O2 -msse2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-53b-old/include history-eq/c/fast_float/53b065f3/wrap.cpp -o history-eq/c/fast_float/53b065f3/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++20 -O2 -msse2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-53b-new/include history-eq/c/fast_float/53b065f3/wrap.cpp -o history-eq/c/fast_float/53b065f3/new.ll
alive2/build/alive2/alive-tv --smt-to=30000 --always-verify history-eq/c/fast_float/53b065f3/old.ll history-eq/c/fast_float/53b065f3/new.ll
alive2/build/alive2/alive-tv --smt-to=30000 --always-verify history-eq/c/fast_float/53b065f3/new.ll history-eq/c/fast_float/53b065f3/old.ll
```

No official before/after benchmark score has been measured for this historical commit.
