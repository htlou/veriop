# `fe5e97ee`: parsed-number field reordering

**Verdict: verified difference for unrestricted clients of the installed header.** The [historical diff](source-scoped.diff) moves `error` ahead of three booleans in `parsed_number_string_t`. The [native C++ witness](layout_witness.cpp) compiled against the two exact header revisions reports [old](native-old.log) `size=72 error=64 negative=24` and [new](native-new.log) `size=64 error=24 negative=28`. These are ordinary `sizeof` and `offsetof` expressions, so the representation change is observable. It is the intended size optimization, not evidence of a numerical parsing bug.

The [Alive2 wrapper](wrap.cpp) checks those three layout observables and all eleven fields of `parse_number_string<false,char>` on exactly five arbitrary bytes. The historical [old IR](old.ll) and [new IR](new.ll) differ; both pass LLVM verification. The checker inputs [old→new](fwd.log) and [new→old](bwd.log) symmetrically remove only loop, TBAA, and noalias metadata attachments ([old](old-tv.ll), [new](new-tv.ll)). Each direction reports **22 correct generated functions** (the eleven field functions and eleven forwarding wrappers), **3 incorrect layout observables**, no failed proofs, and no Alive2 errors.

The result proves representation inequivalence for a program that inspects the header type and partial fieldwise parser equality for the five-byte input scope. It does not prove numerical equality for other lengths or the public `from_chars` path. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-fe5-old /tmp/ff-fe5-new
git -C benchmarks/repos/fast_float archive fe5e97ee^ include | tar -x -C /tmp/ff-fe5-old
git -C benchmarks/repos/fast_float archive fe5e97ee include | tar -x -C /tmp/ff-fe5-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-fe5-old/include history-eq/c/fast_float/fe5e97ee/layout_witness.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-fe5-old/layout_witness
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-fe5-new/include history-eq/c/fast_float/fe5e97ee/layout_witness.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-fe5-new/layout_witness
/tmp/ff-fe5-old/layout_witness
/tmp/ff-fe5-new/layout_witness
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/fe5e97ee/old-tv.ll history-eq/c/fast_float/fe5e97ee/new-tv.ll
```
