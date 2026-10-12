# xxHash `d80f820`: removing pointer-variable alignment

The archived old and new `xxhash.h` blobs have Git object IDs
`82915bbe1651f86fb450fde4741acdcb110fdaa8` and
`dcfff3ea0bab0b89201d614cc7f236f8cf64ba25`. The complete source diff
removes `XXH_ALIGN(64)` from local pointer variables in the AVX2 and AVX512
versions of `XXH3_initCustomSecret`; it does not change the pointer values or
arithmetic. [`audit_defined_outputs.py`](audit_defined_outputs.py) confirms
that these six declaration edits account for every changed byte in the sole
changed file, then checks both SIMD proof artifacts. Its
[`result`](defined-outputs-audit.json) records the exact source blob IDs.

`wrap_rawsimd.c` calls that changed function and copies all 192 secret bytes to
the observable output. For AVX2, `initsec-avx2/result.json` records unbounded,
bidirectional Alive2 `EQUIV` for every 64-bit seed. The compiled AVX512 old/new
IR files are byte-identical (SHA-256
`22f82fee19cfeba5340929bf1526880a52d7131c0db51eadbd04d3effe2a8087`).
Alive2 rejects their original `!noalias`/`!nontemporal` metadata before making
a verdict. Removing only those annotations from both identical IR files gives
`initsec-avx512/{fwd,bwd}-normalized.log`, each with one correct transformation
and no errors. The normalization changes neither instructions nor memory
operations. The archived `old-normalized.ll` and `new-normalized.ll` remain
byte-identical.

Earlier `r_changed` and `r_newcheck` checks targeted other functions and did
not exercise the changed alignment declarations. The new checks establish the
selected secret-initialization output on Clang x86-64 AVX2/AVX512. At source
level, the removed alignment applies to **local pointer objects**, not the
pointed-to secret, output buffer, or public state. No address of these local
objects escapes. The AVX2 compiler guard consumes and returns the pointer
value through an empty register-constraint assembly statement; the AVX512
union likewise passes only the pointer value to the load intrinsic. The
remaining SSE2/scalar paths and all public callers are byte-identical.
Therefore the whole commit has the same functional XXH3 hash outputs and
streaming state for **defined C executions**; it is recorded as scoped
`EQUIV`. This claim excludes compiler diagnostics, generated machine code,
timing, and behavior of undefined executions.

Recheck the audit from the project root with
`python3 -B history-eq/c/xxHash/d80f820/audit_defined_outputs.py`.
