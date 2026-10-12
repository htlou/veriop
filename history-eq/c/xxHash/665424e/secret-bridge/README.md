# xxHash `665424e`: generated-secret bridge

The commit introduces `XXH3_64bits_withSecretandSeed()` and documents that, when its secret is produced by `XXH3_generateSecret_fromSeed(seed)`, it returns the same hash as the old `XXH3_64bits_withSeed()`. The historical `xxhash.h` blobs used here are `ac2e2408e48c2fdf991d3dd44f35b4fc3e45995a` (parent) and `1af5961f5040a920634f83c5c755e102e0caa114` (child).

For the x86-64 scalar configuration (`XXH_VECTOR=0`), [Alive2](secret_pair.fwd.log) proves that the parent's `XXH3_initCustomSecret(out, seed)` and the child's public `XXH3_generateSecret_fromSeed(out, seed)` write the same **entire 192-byte buffer for every 64-bit seed**; the [reverse check](secret_pair.bwd.log) also passes. Removing the LLVM `nocapture` attribute is the only IR normalization, done identically on both sides after compilation because the installed Alive2 rejects that attribute. Instructions and memory operations are unchanged.

The old long-input path uses the default secret instead of `initCustomSecret` when `seed == 0`. For that case, [24 forward](zero_words.fwd.log) and [24 reverse](zero_words.bwd.log) Alive2 checks compare each 8-byte word of the parent's default secret with the child's generated secret at seed zero. All pass. Both historical headers also produce [byte-identical LLVM IR](long_internal.old.ll) for a direct call to the shared 256-byte scalar `XXH3_hashLong_64b_internal` function ([new IR](long_internal.new.ll)).

**Verdict: `EQUIV_PARTIAL` for secret generation and the common long-hash core; the complete public API comparison remains unverified.** These checks establish the required secret-byte relation, but Alive2 has not connected that relation through the old and new 200/256-byte public wrappers. The previous 64-byte public comparison passes; the long-input wrappers retain opaque calls. SIMD paths, all lengths, and other changed code remain outside this proof.

Run `bash history-eq/c/xxHash/665424e/secret-bridge/verify.sh` from the project root to verify the exact Git object IDs, rebuild the IR, and rerun all 50 Alive2 directions/checks. No official historical performance score was measured.
