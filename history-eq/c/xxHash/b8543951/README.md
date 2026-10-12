# xxHash `b8543951`: move long-input dispatch earlier

The exact historical diff moves `len > 128` ahead of the mid-size accumulation in both `XXH3_64bits_withSeed` and `XXH3_64bits_withSecret`. No other source file changes; the shared `xxhash.h` blob is identical on both sides.

Run `python3 history-eq/c/xxHash/b8543951/reproduce.py` from the project root. It loads and audits the parent and child Git blobs, compiles each entry point with pinned Clang 20, and asks Alive2 to verify both directions at 13 lengths bracketing the changed branch thresholds. The 52 checks leave input bytes, seed, and secret pointer symbolic. The compiled target IR is identical at these fixed lengths, and every Alive2 check passes. This is **bounded equivalence** for the recorded instantiations, not an arbitrary-length or whole-commit proof. A separate symbolic-length whole-function attempt timed out.

No official xxHash benchmark before/after score has been measured for this historical pair.
