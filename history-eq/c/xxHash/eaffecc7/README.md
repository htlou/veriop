# xxHash `eaffecc7`: static wrappers replaced by macros

The exact historical change replaces private `XXH_memcpy`, `XXH_memset`, and `XXH_memcmp` forwarding functions with macros naming the corresponding libc functions. With inlining disabled, this removes a forwarding call layer; no official before/after xxHash benchmark score was measured here, so no speedup is claimed.

Run `python3 -B history-eq/c/xxHash/eaffecc7/reproduce.py` from the project root. The script verifies both historical `xxhash.h` Git blob IDs, compiles the same three-call wrapper at Clang 20 `-O1`, and checks each call in both directions with Alive2. All six checks pass. This is **partial equivalence** for that compiled configuration; it does not prove every xxHash API or compiler setting. Kuiper was not used.
