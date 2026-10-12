# xxHash `e6732e9`: compiler guard change

The exact old/new `xxhash.h` blobs change `XXH_COMPILER_GUARD` from volatile
inline assembly to nonvolatile assembly and adjust the AArch64 NEON path.
Run `python3 -B history-eq/c/xxHash/e6732e9/reproduce.py` from the project
root. It source-locks both headers, compiles a public 16-byte `XXH32` call
for x86-64-v3 with Clang 20, checks that the changed guard appears four times
on both sides, and invokes Alive2 on the resulting LLVM IR.

The raw x86-64 `XXH32` attempt stops at IR translation with `Unsupported
metadata: 42`. Its [result](result.json) is a **checker limitation**, not a
counterexample.

**Selected verdict: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** The
exact historical headers also compiled an AArch64 default-six-lane wrapper
around `XXH3_accumulate_512_neon` and `XXH3_scrambleAcc_neon`. It supplies
arbitrary initialized accumulator, input, and secret bytes and observes all
64 accumulator bytes. The [original IR and compiler record](r_accm_a64_id/result.json)
show the source-locked Clang 20 `-O3` compilation. The existing shared driver
modeled empty tied-register assembly guards as identity and NEON widening
intrinsics as unsigned arithmetic. The [named-instruction model](../e701df3/model_named_asm.py)
replaces precisely two `UMADDL` calls on each side and the old side's one
`UMLAL` plus one `UMLAL2`. It asserts these counts and rejects residual
assembly. LLVM `opt -passes=instcombine,simplifycfg` then verified and
simplified both sides. Alive2 proved both changed accumulator and scramble
outputs in [old→new](modeled-a64/forward.log) and
[new→old](modeled-a64/reverse.log): two correct transformations, zero failures
or errors per direction. [Hashes and scope](modeled-result.json) identify the
checked IR files.

Reproduce the modeled comparison from the project root:

```sh
case_dir=history-eq/c/xxHash/e6732e9
model=history-eq/c/xxHash/e701df3/model_named_asm.py
opt=alive2/toolchain/usr/lib/llvm-20/bin/opt
python3 -B "$model" "$case_dir/r_accm_a64_id/old.ll" "$case_dir/modeled-a64/old.ll" 2 1
python3 -B "$model" "$case_dir/r_accm_a64_id/new.ll" "$case_dir/modeled-a64/new.ll" 2 0
for side in old new; do
  "$opt" -S -passes=instcombine,simplifycfg "$case_dir/modeled-a64/$side.ll" -o "$case_dir/modeled-a64/$side-opt.ll"
  "$opt" -passes=verify -disable-output "$case_dir/modeled-a64/$side-opt.ll"
done
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 "$case_dir/modeled-a64/old-opt.ll" "$case_dir/modeled-a64/new-opt.ll"
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 "$case_dir/modeled-a64/new-opt.ll" "$case_dir/modeled-a64/old-opt.ll"
```

The ARM instruction model and LLVM simplification are explicit assumptions.
Public hash calls, other lane counts, ARMv7, and other configurations remain
unverified. No official historical benchmark score was measured.
