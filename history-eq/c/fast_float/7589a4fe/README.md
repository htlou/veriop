# `7589a4fe`: four-digit SWAR follow-up

**Verdict: EQUIV_PARTIAL.** The [complete source change](source-scoped.diff) adds a Clang-only four-digit fast scan after the eight-digit loop. The identical [wrapper](wrap.cpp) calls the real historical `parse_number_string<false,char>` on exactly six arbitrary bytes with default options. Six bytes permit one integer digit, a decimal point, and four fractional digits, so the new path is reachable. The wrapper returns each of the eleven result fields separately; pointer fields use null-aware offsets into the local input array.

Clang 20.1.8, C++17 `-O2` generated distinct [parent IR](old.ll) and [child IR](new.ll) from the exact historical `include/` trees. The [checker IR](old-tv.ll) and [candidate checker IR](new-tv.ll) symmetrically remove only `llvm.loop`, `tbaa`, and `noalias` metadata attachments that Alive2 cannot parse; LLVM 20 verifies both modules. Alive2 checked the **defined bodies** of all eleven `parse_field` instantiations, not their thin external wrappers. Every [old→new](field-0-fwd.log) and [new→old](field-0-bwd.log) field log reports one correct transformation, no incorrect or failed-to-prove transformation, and no Alive2 error. The files `field-0` through `field-10` for both directions preserve all 22 logs.

This proves equality of the returned parser fields for this fixed six-byte `char` scope under Alive2's LLVM semantics. Other lengths, JSON/other character types, the public `from_chars` conversion, and an official locally measured before/after performance score remain outside the result. The upstream commit message reports a benchmark improvement, which is not counted as a measurement in this study.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-758-old /tmp/ff-758-new
git -C benchmarks/repos/fast_float archive 7589a4fe^ include | tar -x -C /tmp/ff-758-old
git -C benchmarks/repos/fast_float archive 7589a4fe include | tar -x -C /tmp/ff-758-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-758-old/include history-eq/c/fast_float/7589a4fe/wrap.cpp -o history-eq/c/fast_float/7589a4fe/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-758-new/include history-eq/c/fast_float/7589a4fe/wrap.cpp -o history-eq/c/fast_float/7589a4fe/new.ll
sed -E 's/, !(llvm.loop|tbaa|noalias) ![0-9]+//g' history-eq/c/fast_float/7589a4fe/old.ll > history-eq/c/fast_float/7589a4fe/old-tv.ll
sed -E 's/, !(llvm.loop|tbaa|noalias) ![0-9]+//g' history-eq/c/fast_float/7589a4fe/new.ll > history-eq/c/fast_float/7589a4fe/new-tv.ll
for field in 0 1 2 3 4 5 6 7 8 9 10; do
  alive2/build/alive2/alive-tv --always-verify --smt-to=30000 --func="_Z11parse_fieldILi${field}EEmm" history-eq/c/fast_float/7589a4fe/old-tv.ll history-eq/c/fast_float/7589a4fe/new-tv.ll
  alive2/build/alive2/alive-tv --always-verify --smt-to=30000 --func="_Z11parse_fieldILi${field}EEmm" history-eq/c/fast_float/7589a4fe/new-tv.ll history-eq/c/fast_float/7589a4fe/old-tv.ll
done
```
