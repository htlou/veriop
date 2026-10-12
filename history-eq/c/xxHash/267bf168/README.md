# xxHash `267bf168`: custom-secret initialization

The exact historical `xxh3.h` change adds `restrict` to the output pointer,
loads both words of each secret round before storing either, and uses one
empty tied-register assembly guard on Clang AArch64. The unchanged
`xxhash.h` dependency is also source-locked.

Run `python3 -B history-eq/c/xxHash/267bf168/reproduce.py` from the project
root. It compiles the old and new `XXH3_initCustomSecret` bodies with Clang 20
for x86-64 and AArch64 in release mode, then checks **all 192 output bytes**
for arbitrary 64-bit seeds and valid separate output buffers. Both Alive2
directions pass on each architecture under the stated empty-assembly identity
model. The stock checker cannot finish AArch64 because it approximates away
the 192-byte constant initializer. The AArch64 proofs use a [locally built
Alive2 variant](../../../../alive2/results/search/alive2-array-expand-constants/build.json)
that raises the initializer cutoff from 128 to 4096 bytes and includes a
solver-tactic modification; its build manifest and binary hash are recorded
in [the result](result.json). This is a locally modified checker, not an
unmodified official Alive2 release.

This is `EQUIV_PARTIAL`: public seeded hash calls, other builds, and any
observable debug assertion behavior remain unverified. There is no official
before/after xxHash benchmark score for this historical commit.
