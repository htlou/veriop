# zstd `51f4d566`: static default sequence-decoding tables

**Whole-historical-commit verdict: UNKNOWN.** The exact historical [diff](source.diff) replaces runtime construction of the default LL, ML, and OF FSE decode tables with three static tables. [`materialize.py`](materialize.py) archives both revisions of `zstd_internal.h` and `zstd_decompress.c`; [`source_manifest.json`](source_manifest.json) records their Git hashes.

[`audit_tables.py`](audit_tables.py) takes the exact parent `LL_defaultNorm`, `ML_defaultNorm`, and `OF_defaultNorm` arrays and independently applies the standard FSE symbol-spread/next-state recurrence. Its [result](table-audit.json) matches every child static decode cell: **LL 64/64, ML 64/64, OF 32/32**, with no mismatch. It also checks each new table's log macro and fast-mode initializer. [`prepare_alive_cells.py`](prepare_alive_cells.py) turns each reference/static cell pair into a fixed-index C function. Alive2 proves all **160/160** fixed-index lookup functions in [both](cells-forward.log) [directions](cells-reverse.log); both LLVM modules pass `opt -passes=verify`.

These are proofs of **static-table consistency with a reconstructed reference recurrence**, not proofs of old-vs-new historical decoder equivalence. The exact parent `lib/common/fse_decompress.c` blob containing `FSE_buildDTable` is missing locally. The reference implementation is therefore independent, not extracted from the parent. The table header's memory representation, pointer substitution, RLE/repeat/compressed paths, and full decompressed bytes are outside the check. A direct symbolic-index Alive2 comparison of the 64/64/32-cell arrays also remained unproved because Alive2 removed a large constant initializer ([LL attempt](LL-forward.log)); the successful fixed-index checks avoid that approximation.

No official historical zstd benchmark score was measured. Reproduce from the project root:

```sh
python3 history-eq/c/zstd/51f4d566/materialize.py
python3 history-eq/c/zstd/51f4d566/audit_tables.py
python3 history-eq/c/zstd/51f4d566/prepare_alive_cells.py
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -S -emit-llvm history-eq/c/zstd/51f4d566/old-cells.c -o history-eq/c/zstd/51f4d566/old-cells.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O2 -S -emit-llvm history-eq/c/zstd/51f4d566/new-cells.c -o history-eq/c/zstd/51f4d566/new-cells.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/zstd/51f4d566/old-cells.ll history-eq/c/zstd/51f4d566/new-cells.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/zstd/51f4d566/new-cells.ll history-eq/c/zstd/51f4d566/old-cells.ll
```
