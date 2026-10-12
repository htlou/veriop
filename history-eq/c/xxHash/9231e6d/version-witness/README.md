# xxHash `9231e6d`: public version-number counterexample

**Scoped verdict: `NOT_EQUIV`.** This optimization commit adds the `XXH_INLINE_ALL` mode and also increments `XXH_VERSION_RELEASE` from 4 to 5 in its only changed code file, `xxhash.h`. The public `XXH_versionNumber()` function in the unchanged `xxhash.c` returns the header's `XXH_VERSION_NUMBER`. On the exact parent and child C sources, it returns **604 before** and **605 after**.

[`verify.py`](verify.py) checks the archived source/header bytes against both historical Git trees and confirms the commit's changed-path list. It builds and runs the same [public-call witness](witness.c) on both sides, then compares the complete compiled `XXH_versionNumber` function with Alive2. The [forward](forward.log) and [reverse](reverse.log) checks each report one **incorrect transformation**, the exact 604/605 values, and zero checker errors. The [result](result.json) records blob IDs, compiler, IR hashes, and outputs. Reproduce from the project root with `python3 -B history-eq/c/xxHash/9231e6d/version-witness/verify.py`.

This proves a public version-query difference for the historical program pair. It does not show that `XXH32` or `XXH64` hash values differ; earlier fixed-length hash equality checks remain valid within their scopes. It is not a performance measurement.
