# `2606bcdf`: inline conversion entry points

**Verdict: partial equivalence.** The [exact diff](source-scoped.diff) adds `fastfloat_really_inline` to five existing conversion entry points; no function body changes. At this revision the macro expands to `inline __attribute__((always_inline))` under Clang/GCC.

The [wrapper](wrap.cpp) calls the actual historical `from_chars_advanced<uint64_t,char>` on exactly eight arbitrary bytes followed by a safe ninth sentinel, with default base-ten options and initial output 123. The two [LLVM IR modules](old.ll) and [LLVM IR modules](new.ll) differ because the floating-point call chain is inlined in the child. Alive2 proves [error old→new](target_int_error-fwd.log), [error new→old](target_int_error-bwd.log), [value old→new](target_int_value-fwd.log), and [value new→old](target_int_value-bwd.log). Its consumed-position checks [time out](target_int_consumed-fwd.log) [both ways](target_int_consumed-bwd.log).

For the integer path, a separate [structural IR check](check_int_ir.py) confirms that all three complete wrappers, their `from_chars_int_advanced<uint64_t,char>` callee, and all four referenced lookup constants are identical across versions after canonicalizing semantically identical `range`/`noundef` metadata and symmetrically dropping loop/TBAA/noalias attachments. The [check output](int-structural-check.log) includes each compared definition. This supports equality of the three integer results in that compiled scope despite Alive2's consumed-position timeout.

The attempted floating-point [Alive2 check](target_double_error-fwd.log) stops before solving: the installed translator does not support a `volatile float` load in `rounds_to_nearest`. The float path and full commit are not proved here. No official historical before/after benchmark score was measured.

From the project root, rerun the structural check and two completed Alive2 relations:

```sh
python3 history-eq/c/fast_float/2606bcdf/check_int_ir.py
alive2/build/alive2/alive-tv --func=target_int_error --always-verify history-eq/c/fast_float/2606bcdf/old-tv.ll history-eq/c/fast_float/2606bcdf/new-tv.ll
alive2/build/alive2/alive-tv --func=target_int_value --always-verify history-eq/c/fast_float/2606bcdf/old-tv.ll history-eq/c/fast_float/2606bcdf/new-tv.ll
```
