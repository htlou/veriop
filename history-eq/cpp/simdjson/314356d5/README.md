# simdjson `314356d5`: eight-digit SWAR guard

Commit `314356d56161847ebfedd3fed35c2b200b14bf48` adds a SWAR shortcut to the fractional-decimal path in `parse_number`. The new `is_made_of_eight_digits_fast` decides whether the next eight bytes are ASCII digits before an eight-digit bulk parse. The parent checks digits one by one with `is_integer(char)`.

**Result: local bidirectional equality, `EQUIV_PARTIAL` at commit level.** [Alive2](alive2.log) reports both `Transformation seems to be correct!` and `These functions seem to be equivalent!` for the old eight sequential scalar digit predicates and the exact new SWAR predicate, for every 64-bit input word. The `old_eight_digits` wrapper explicitly unrolls eight copies of the parent `is_integer` test; `new_eight_digits` copies the historical helper body, with only the exported function name changed. `audit.py` archives and checks the exact parent/child header blobs and this source mapping.

The proof covers the **fast-path decision only**. It does not cover the subsequent `parse_eight_digits_unrolled` SIMD value calculation, updates to the parsed significand and exponent, short-buffer/padding preconditions, or the complete `parse_number` behavior. It is not an official before/after simdjson benchmark score.

Reproduce from the project root:

```sh
python3 history-eq/cpp/simdjson/314356d5/audit.py
alive2/toolchain/usr/bin/clang++-20 -std=c++17 -O1 -ffreestanding -emit-llvm -S history-eq/cpp/simdjson/314356d5/digits.cpp -o history-eq/cpp/simdjson/314356d5/digits.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=120000 --src-fn=old_eight_digits --tgt-fn=new_eight_digits_word history-eq/cpp/simdjson/314356d5/digits.ll
```

The wrapper passes eight bytes by value in the host's little-endian layout. The compile used Clang 20.1.8 at `-O1`; the checked IR is saved as `digits.ll`.
