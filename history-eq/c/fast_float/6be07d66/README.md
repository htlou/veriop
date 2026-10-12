# fast_float `6be07d66`: force-inline Clinger's fast path

Commit `6be07d66a83bf6186d427bb21344dcdd28df09d2` adds `fastfloat_really_inline` to `clinger_fast_path_impl` in `parse_number.h`; the function body and every other tracked file are unchanged. [`prepare.py`](prepare.py) checks the [exact Git diff](source.diff), saves the [old](parse_number.old.txt) and [new](parse_number.new.txt) headers, and extracts the exact helper and its unchanged `rounds_to_nearest` dependency into [old](old/isolated.cpp) and [new](new/isolated.cpp) compilation units. The two required `float_common.h` and `constexpr_feature_detect.h` dependencies match their historical Git objects on both sides ([manifest](source-manifest.json)). Two unrelated historical headers are missing locally, so these are isolated helper builds, not complete library builds.

**Selected-checker verdict: UNSUPPORTED.** Clang 14.0.0 at `-std=c++20 -O2` compiled both helper versions. For wrappers returning the success flag and the output double's bits, the [complete old](old.ll) and [complete new](new.ll) LLVM modules are byte-identical after removing only the `ModuleID` and `source_filename` lines; [`check_ir.py`](check_ir.py) verifies this and records the canonical SHA-256 in [the log](structural-ir.log). This is strong compiled-scope equality evidence for the two wrappers on x86-64 under that compiler configuration.

Alive2 LLVM 20.1.8 cannot translate the exact helper's `load volatile float` in `rounds_to_nearest`. Both directions of both wrappers fail before solving: [flag forward](target_ok-forward.log), [flag reverse](target_ok-reverse.log), [bits forward](target_bits-forward.log), [bits reverse](target_bits-reverse.log). Thus there is no Alive2 equivalence/refinement verdict. The IR identity does not cover other compiler configurations, callers, or the full public parser. No official historical benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/c/fast_float/6be07d66/prepare.py
clang++ -std=c++20 -O2 -S -emit-llvm -fno-discard-value-names -Xclang -opaque-pointers -nostdinc++ -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -isystem /usr/include/c++/11/backward -I history-eq/c/fast_float/6be07d66/old/include history-eq/c/fast_float/6be07d66/old/isolated.cpp -o history-eq/c/fast_float/6be07d66/old.ll
clang++ -std=c++20 -O2 -S -emit-llvm -fno-discard-value-names -Xclang -opaque-pointers -nostdinc++ -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -isystem /usr/include/c++/11/backward -I history-eq/c/fast_float/6be07d66/new/include history-eq/c/fast_float/6be07d66/new/isolated.cpp -o history-eq/c/fast_float/6be07d66/new.ll
python3 history-eq/c/fast_float/6be07d66/check_ir.py
alive2/build/alive2/alive-tv --func=target_ok --always-verify history-eq/c/fast_float/6be07d66/old.ll history-eq/c/fast_float/6be07d66/new.ll
```
