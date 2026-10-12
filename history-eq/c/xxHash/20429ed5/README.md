# xxHash `20429ed5`: AVX-512 zero source

The exact historical change replaces `_mm512_set1_epi8(0)` with `_mm512_setzero_si512()` in `XXH3_initCustomSecret_avx512`. It avoids spelling the zero value through an AVX-512BW intrinsic in a function otherwise using AVX-512F operations.

Run `python3 -B history-eq/c/xxHash/20429ed5/reproduce.py` from the project root. The script audits the parent and child `xxhash.h` Git blobs and confirms that this one intrinsic replacement is the commit's entire source diff. It compiles the complete changed helper through the same wrapper with Clang 20 using AVX-512F+BW, checks that the compared targets have no unresolved calls, and proves both refinement directions with Alive2. Both pass for arbitrary seed and a valid aligned output pointer; the target LLVM IR is identical on the two sides.

**Verdict: scoped `EQUIV`** for the complete output of `XXH3_initCustomSecret_avx512` in that build. Other compiler/ISA configurations, public hash calls, and timing remain unproved; this is not a whole-library equivalence claim.

No official historical xxHash benchmark before/after score was measured.
