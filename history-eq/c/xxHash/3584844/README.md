# xxHash `3584844`: MSVC 32-bit SSE2 detection

**Selected verdict: `EQUIV_BOUNDED`; whole-commit verdict: `UNKNOWN`.** The
single changed line selects the SSE2 implementation when `_M_IX86_FP == 2`.
The archived parent and child `xxh3.h`, plus their shared `xxhash.h` and
`xxhash.c`, match the exact historical Git blobs in
[the result](revalidated-partial.json).

The existing [public wrapper](api64_len256_msvc_x86/wrapper.c) calls
`XXH3_64bits_withSeed` on an arbitrary input pointer and seed. Clang 20 targets
`i686-pc-windows-msvc` with `-msse2 -U__SSE2__`, modeling the MSVC 32-bit
`/arch:SSE2` macro selection: the parent uses scalar code and the child uses
SSE2 code. The two fully inlined LLVM bodies differ and have no unresolved
calls. At fixed input lengths 256 and 300, Alive2 rechecked the complete
64-bit returned hash in both directions: [256 forward](api64_len256_msvc_x86/recheck-fwd.log),
[256 reverse](api64_len256_msvc_x86/recheck-bwd.log),
[300 forward](api64_len300_msvc_x86/recheck-fwd.log), and
[300 reverse](api64_len300_msvc_x86/recheck-bwd.log) each report one correct
transformation and zero failures or errors. The IR hashes and run settings
are in the [case result](revalidated-partial.json) and each run directory's
`result.json`.

Recheck the archived IR from the project root:

```sh
for length in 256 300; do
  case_dir="history-eq/c/xxHash/3584844/api64_len${length}_msvc_x86"
  alive2/build/alive2/alive-tv --func=target_xxh3_64 --always-verify --smt-to=30000 "$case_dir/old.ll" "$case_dir/new.ll"
  alive2/build/alive2/alive-tv --func=target_xxh3_64 --always-verify --smt-to=30000 "$case_dir/new.ll" "$case_dir/old.ll"
done
```

The prior `XXH3_128bits` forward checks passed but reverse checks timed out.
Other lengths and actual `cl.exe` code generation were not checked, so this is
not a whole-commit equivalence proof. No official historical before/after
benchmark score was measured.
