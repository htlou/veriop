# `7e45de0c`: restore the small inf/nan comparison loop

**Verdict: EQUIV_PARTIAL for the production parser path; verified difference for an unrestricted raw helper call.** The [full source diff](source-scoped.diff) changes only `float_common.h` and `parse_number.h`. The old three- and five-character SWAR helpers are replaced by the generic loop at the three `parse_infnan` call sites. A source search at the parent revision found no other library calls of these helpers. The commit cites upstream per-commit benchmark regressions from the SWAR version; this workspace has not measured an official before/after score for this pair.

The identical [literal-comparison wrapper](wrap.cpp) compiles those three actual call-site comparisons against `nan`, `inf`, and the five-character `inity` suffix. It covers every input code-unit value for each of the five supported types: `char`, `char8_t`, `char16_t`, `char32_t`, and `wchar_t` on x86-64. The old and new `-O2` IR differ ([old](old.ll), [new](new.ll)). Alive2 reports [15/15 correct old→new](fwd.log) and [15/15 correct new→old](bwd.log), with no failures or errors.

An independent [parser wrapper](parse.cpp) calls the historical `parse_infnan<double,char>` with eight arbitrary bytes and general format, checking value bits, consumed offset, and error. `-O3 -mllvm -inline-threshold=100000` inlines the historical parser on both sides so Alive2 compares the actual bodies. The generated IR differs ([old](parse-old-full.ll), [new](parse-new-full.ll)); the [checker copies](parse-old-full-tv.ll) and [candidate checker copy](parse-new-full-tv.ll) symmetrically omit only `llvm.loop`, `tbaa`, and `noalias` metadata attachments. Alive2 reports [3/3 correct old→new](parse-full-fwd.log) and [3/3 correct new→old](parse-full-bwd.log).

The generic `fastfloat_strncasecmp` itself changed outside the lowercase-literal precondition. [A raw historical call](raw.cpp) with `actual='a'`, `expected='A'`, and length one returns true before the commit and false after it; [Alive2 refutes equivalence](raw-fwd.log) directly. This helper is not called that way by the library's parser, but the difference prevents a whole-header equivalence claim for arbitrary external callers. Direct parser proof is limited to eight-byte `char` input; equality of its three changed literal comparisons for other supported character types follows by composition with unchanged surrounding parser source, rather than a direct whole-parser checker run.

Reproduce from the project root by extracting the historical headers, compiling the three wrappers with the flags recorded in [entry.json](entry.json), and running these checks on their archived IR:

```sh
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/7e45de0c/old.ll history-eq/c/fast_float/7e45de0c/new.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/7e45de0c/new.ll history-eq/c/fast_float/7e45de0c/old.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/7e45de0c/parse-old-full-tv.ll history-eq/c/fast_float/7e45de0c/parse-new-full-tv.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/7e45de0c/parse-new-full-tv.ll history-eq/c/fast_float/7e45de0c/parse-old-full-tv.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/7e45de0c/raw-old.ll history-eq/c/fast_float/7e45de0c/raw-new.ll
```
