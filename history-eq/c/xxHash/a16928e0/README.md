# xxHash `a16928e0`: accumulator merge loop

The exact historical commit changes only `xxh3.h`: `XXH3_mergeAccs` replaces
four explicit additions with a four-iteration loop. Its Clang ARMv7 NEON
branch additionally uses four empty tied-register assembly guards to inhibit
autovectorization.

Run `python3 -B history-eq/c/xxHash/a16928e0/reproduce.py` from the project
root. The script verifies both historical header blob IDs and the unchanged
`xxhash.h` dependency, compiles the real function with Clang 20 for x86-64
and ARMv7 NEON, and checks its entire returned 64-bit value in both Alive2
directions. All [four modeled checks](result.json) pass for arbitrary valid
8-lane accumulator bytes, 64-byte secret bytes, and starting value. The
ARMv7 check explicitly models each empty tied-register assembly guard as
identity; unmodeled Alive2 treats it as undefined and reports an artificial
inequality. That diagnostic is **not** a source-level counterexample.

The selected label is `EQUIV_PARTIAL`: this proves the changed merge routine
in two configurations under the stated model, not every xxHash public hash
entry point, compiler, or architecture. The whole historical commit remains
unverified. No official before/after xxHash benchmark score was measured.
