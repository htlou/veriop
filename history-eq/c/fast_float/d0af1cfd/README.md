# `d0af1cfd`: uint16 parser fast path

**Verdict: verified public behavior difference for wide-character input.** The [exact historical diff](source-scoped.diff) adds a decimal `uint16_t` fast path that narrows non-`char` code units to eight bits before checking whether they are digits. In the parent, `U+0130` is invalid; in the child its low byte is `'0'`.

The [public witness](public_witness.cpp) was compiled separately against the parent `36d3441d` and child `d0af1cfd` headers. For `char16_t`, `char32_t`, and `wchar_t` input `0x0130`, [parent output](native-old-clang23.log) is `invalid_argument` (22), zero units consumed, output still 123; [child output](native-new-clang23.log) is success, one unit consumed, output 0. The `char('0')` control succeeds on both. [ASan/UBSan parent](san-old-system.log) and [child](san-new-system.log) runs reproduce the results without diagnostics.

The [symbolic parser wrapper](checker_wrap.cpp) compares the actual `parse_int_string<uint16_t,char16_t>` bodies on one arbitrary code unit. The historical [parent IR](old.ll) and [child IR](new.ll) differ and pass LLVM verification. After symmetrically removing only loop, TBAA, and noalias metadata attachments, Alive2 [parent→child](fwd.log) and [child→parent](bwd.log) each report **two incorrect transformations** for error code and consumed position. The value-field check is **unproved** because Alive2 approximated a large constant initializer; it is not counted as a verified checker result. The public API witness establishes the full observed result.

Both versions build under Clang 20 C++23. GCC 11 C++20 and C++23 fail to compile the child header due to a `static constexpr` array inside a `constexpr` function ([diagnostic](compile-new-cxx23.log)); this does not affect the Clang C++23 comparison. The witness uses a non-ASCII code unit, so it does not establish a difference for valid ASCII decimal strings. No official before/after benchmark score was measured.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-d0-old /tmp/ff-d0-new
git -C benchmarks/repos/fast_float archive d0af1cfd^ include | tar -x -C /tmp/ff-d0-old
git -C benchmarks/repos/fast_float archive d0af1cfd include | tar -x -C /tmp/ff-d0-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-d0-old/include history-eq/c/fast_float/d0af1cfd/public_witness.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-d0-old/public_witness
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-d0-new/include history-eq/c/fast_float/d0af1cfd/public_witness.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-d0-new/public_witness
/tmp/ff-d0-old/public_witness
/tmp/ff-d0-new/public_witness
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/c/fast_float/d0af1cfd/old-tv.ll history-eq/c/fast_float/d0af1cfd/new-tv.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/c/fast_float/d0af1cfd/new-tv.ll history-eq/c/fast_float/d0af1cfd/old-tv.ll
```
