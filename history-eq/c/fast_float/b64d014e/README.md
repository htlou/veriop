# `b64d014e`: integer digit-scan unroll

**Verdict: EQUIV_PARTIAL.** The sampled performance commit peels five iterations of the integer-part digit scan in `include/fast_float/ascii_number.h`. [`source-scoped.diff`](source-scoped.diff) is its complete source change. The commit message reports upstream `simple_fastfloat_benchmark` improvements; this workspace has not measured an official before/after score for the historical pair.

The identical [`wrap.cpp`](wrap.cpp) on both revisions calls `parse_number_string<false,char>` with **exactly five arbitrary bytes** and default parse options. Eleven scalar wrappers return every field of `parsed_number_string_t<char>`, representing its three pointers by null-aware offsets into the same local input array. There are no byte-value constraints, so the check quantifies over all 2^40 five-byte patterns within Alive2's defined-behavior model. Clang 20.1.8 compiled both historical `include/` trees at C++17 `-O2`; the [old](old.ll) and [new](new.ll) LLVM IR differ.

Alive2 rejected Clang's loop, TBAA, and noalias metadata on the inlined parser. The [checker IR](old-tv.ll) and [candidate checker IR](new-tv.ll) remove only those metadata attachments, identically on both sides; instruction and attribute text is unchanged. This weakens optimizer hints and alias assumptions rather than adding a behavior assumption. The fixed-size input bounds all parser loops. Both directions of the main check reported [21 correct, 1 timed out, 0 incorrect](fwd.log) and [21 correct, 1 timed out, 0 incorrect](bwd.log) at 10 seconds per SMT query. The timed-out `mantissa` field was then checked separately at 60 seconds: [old→new](mantissa-fwd.log) and [new→old](mantissa-bwd.log) each report **1 correct, 0 failed-to-prove, 0 errors**. Together these establish equality of all eleven returned fields for the stated input scope.

This is a bounded parser result. Other input lengths, character types, JSON specialization, the public `from_chars` chain, and an official before/after performance delta remain unchecked.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-b64-old /tmp/ff-b64-new
git -C benchmarks/repos/fast_float archive b64d014e^ include | tar -x -C /tmp/ff-b64-old
git -C benchmarks/repos/fast_float archive b64d014e include | tar -x -C /tmp/ff-b64-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b64-old/include history-eq/c/fast_float/b64d014e/wrap.cpp -o history-eq/c/fast_float/b64d014e/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b64-new/include history-eq/c/fast_float/b64d014e/wrap.cpp -o history-eq/c/fast_float/b64d014e/new.ll
sed -E 's/, !(llvm.loop|tbaa|noalias) ![0-9]+//g' history-eq/c/fast_float/b64d014e/old.ll > history-eq/c/fast_float/b64d014e/old-tv.ll
sed -E 's/, !(llvm.loop|tbaa|noalias) ![0-9]+//g' history-eq/c/fast_float/b64d014e/new.ll > history-eq/c/fast_float/b64d014e/new-tv.ll
alive2/build/alive2/alive-tv --smt-to=10000 --always-verify history-eq/c/fast_float/b64d014e/old-tv.ll history-eq/c/fast_float/b64d014e/new-tv.ll
alive2/build/alive2/alive-tv --smt-to=10000 --always-verify history-eq/c/fast_float/b64d014e/new-tv.ll history-eq/c/fast_float/b64d014e/old-tv.ll
alive2/build/alive2/alive-tv --smt-to=60000 --func=_Z11parse_fieldILi0EEmm --always-verify history-eq/c/fast_float/b64d014e/old-tv.ll history-eq/c/fast_float/b64d014e/new-tv.ll
alive2/build/alive2/alive-tv --smt-to=60000 --func=_Z11parse_fieldILi0EEmm --always-verify history-eq/c/fast_float/b64d014e/new-tv.ll history-eq/c/fast_float/b64d014e/old-tv.ll
```
