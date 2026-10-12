# `6ede0387`: long-digit truncation relocation

**Verdict: verified unequal for unrestricted header clients.** The [historical diff](source-scoped.diff) removes `exp_number` from the header-defined `parsed_number_string_t<char>` and moves truncation into `parse_number_string`. This changes the structure's size and member offsets, which C++ clients can observe through `sizeof` and `offsetof`.

The [wrapper](wrap.cpp) compiles against each exact historical header. Parent and child [LLVM IR](old.ll) [modules](new.ll) pass LLVM verification. Alive2 reports all three layout observables unequal [parent→child](fwd.log) and [child→parent](bwd.log), with no failed proofs or checker errors. The [parent native result](native-old.log) is `size=72 lastmatch=24 fraction=56`; the [child native result](native-new.log) is `size=64 lastmatch=16 fraction=48`.

This is an intentional representation difference, not evidence of a numerical parsing regression. The equivalence of the relocated long-digit truncation and `from_chars` output remains unproved. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-6ede-old /tmp/ff-6ede-new
git -C benchmarks/repos/fast_float archive 6ede038789^ include | tar -x -C /tmp/ff-6ede-old
git -C benchmarks/repos/fast_float archive 6ede038789 include | tar -x -C /tmp/ff-6ede-new
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/6ede0387/old.ll history-eq/c/fast_float/6ede0387/new.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/6ede0387/new.ll history-eq/c/fast_float/6ede0387/old.ll
```
