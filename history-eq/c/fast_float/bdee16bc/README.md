# `bdee16bc`: fast eight-digit integer scan

**Verdict: EQUIV_PARTIAL.** The [complete historical diff](source-scoped.diff) adds `loop_parse_if_eight_digits` to base-ten `parse_int_string` and adjusts an MSVC warning pragma. The identical [wrapper](wrap.cpp) calls the real parent and child integer parsers on exactly eight arbitrary `char` bytes, with a ninth NUL sentinel because the historical leading-zero loop may read at `pend`. It checks both `uint64_t` and `int64_t` results, each as output value, error code, and consumed offset. The initial output value is 123 so unchanged-on-error behavior is observable.

Clang 20.1.8, C++17 `-O2 -msse2` compiled the exact historical `include/` trees into distinct [old](old.ll) and [new](new.ll) LLVM IR. The six named functions contain the inlined parser bodies, rather than calls to an unexpanded shared parser. The [checker IR](old-tv.ll) and [candidate checker IR](new-tv.ll) symmetrically remove only unsupported `llvm.loop`, `tbaa`, and `noalias` metadata attachments; LLVM 20 verifies both modules. Alive2 reports [6/6 correct old→new](fwd.log) and [6/6 correct new→old](bwd.log), with no incorrect, failed-to-prove, or error result.

The result covers all eight-byte patterns in the stated x86-64/LLVM defined-behavior model and includes strings that trigger the new fast path. Other lengths, integer/character types, bases, the MSVC pragma branch, and an official locally measured historical performance delta remain outside this proof.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-bdee-old /tmp/ff-bdee-new
git -C benchmarks/repos/fast_float archive bdee16bc^ include | tar -x -C /tmp/ff-bdee-old
git -C benchmarks/repos/fast_float archive bdee16bc include | tar -x -C /tmp/ff-bdee-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -msse2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-bdee-old/include history-eq/c/fast_float/bdee16bc/wrap.cpp -o history-eq/c/fast_float/bdee16bc/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -msse2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-bdee-new/include history-eq/c/fast_float/bdee16bc/wrap.cpp -o history-eq/c/fast_float/bdee16bc/new.ll
sed -E 's/, !(llvm.loop|tbaa|noalias) ![0-9]+//g' history-eq/c/fast_float/bdee16bc/old.ll > history-eq/c/fast_float/bdee16bc/old-tv.ll
sed -E 's/, !(llvm.loop|tbaa|noalias) ![0-9]+//g' history-eq/c/fast_float/bdee16bc/new.ll > history-eq/c/fast_float/bdee16bc/new-tv.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/c/fast_float/bdee16bc/old-tv.ll history-eq/c/fast_float/bdee16bc/new-tv.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/c/fast_float/bdee16bc/new-tv.ll history-eq/c/fast_float/bdee16bc/old-tv.ll
```
