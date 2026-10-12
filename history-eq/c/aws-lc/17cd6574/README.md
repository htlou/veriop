# aws-lc historical optimization `17cd6574`

Commit `17cd6574bdb89744df61920efbe49d383963d8a2` (`Update function to avoid division`) changes the per-coefficient calculation in Kyber `poly_tomsg`; the only other change is to `crypto/kyber/README.md`. `source.diff` contains the complete commit diff. `poly_tomsg_bit.c` copies the old and new calculations, with `KYBER_Q=3329` from the historical `params.h`, and separately copies the unchanged `barrett_reduce` calculation from historical `reduce.c`. Clang 20 `-O2` generated the distinct LLVM implementations in `poly_tomsg_bit.ll`.

**Scoped verdict: `NOT_EQUIV` for direct `poly_tomsg` calls.** Alive2 finds `coeff=-25468`: the old coefficient bit is 0 and the new bit is 1 (`alive2-unrestricted.log`). `probe.c` calls the separately compiled, actual historical `poly.c` files at parent `eee75765730d0fb8cebcd8aacbcedd22240b398a` and child `17cd6574bdb89744df61920efbe49d383963d8a2`. With coefficient 0 set to that witness and all others zero, the old function emits `msg[0]=0x00` and the new function emits `msg[0]=0x01` (`probe-old.log`, `probe-new.log`). This is a real function-level mismatch, not merely a solver-model example.

**Normal decryption path: locally equal.** The historical `indcpa_dec` calls `poly_reduce(&mp)` immediately before `poly_tomsg(m, &mp)`. The unchanged `barrett_reduce` body maps every `int16_t` input into `[-1664,1664]` in the selected Clang/LLVM integer model (`alive2-barrett-range.log`). Under exactly that condition, Alive2 reports the old and new per-coefficient calculations bidirectionally equivalent (`alive2-reduced.log`). The loop that packs eight bits into each message byte is unchanged. This establishes the local arithmetic argument for the reduced path; it does not constitute a whole-EVP/API equivalence proof.

**Public-API verdict: `UNKNOWN`.** The direct `poly_tomsg` symbol differs for valid C inputs, but the known in-tree decryption caller reduces its coefficients first. No proof covers all externally reachable aws-lc entry points, and no official benchmark before/after score is attached. The commit message establishes performance intent, not a measured speedup here.

Reproduce the Alive2 checks from the project root:

```sh
alive2/toolchain/usr/bin/clang-20 -O2 -emit-llvm -S history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.c -o history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=60000 --src-fn=raw_old_bit --tgt-fn=raw_new_bit history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=60000 --src-fn=old_bit_reduced --tgt-fn=new_bit_reduced history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=60000 --src-fn=barrett_bad --tgt-fn=barrett_zero history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.ll
```

Alive2's executable may exit zero after a mismatch; inspect the verdict text. Rebuild the native witness from both exact historical source trees and headers:

```sh
probe_tmp=$(mktemp -d)
for pair in old:eee75765730d0fb8cebcd8aacbcedd22240b398a new:17cd6574bdb89744df61920efbe49d383963d8a2; do
  side=${pair%%:*}; rev=${pair#*:}
  mkdir -p "$probe_tmp/$side"
  git -C benchmarks/repos/aws-lc archive "$rev" include/openssl crypto/kyber/pqcrystals_kyber_ref_common | tar -x -C "$probe_tmp/$side"
  inc="$probe_tmp/$side/crypto/kyber/pqcrystals_kyber_ref_common"
  gcc -O2 -ffunction-sections -fdata-sections -DKYBER_K=2 -I"$probe_tmp/$side/include" -I"$inc" -c "$inc/poly.c" -o "$probe_tmp/$side/poly.o"
  gcc -O2 -DKYBER_K=2 -Wl,--gc-sections -I"$probe_tmp/$side/include" -I"$inc" history-eq/c/aws-lc/17cd6574/probe.c "$probe_tmp/$side/poly.o" -o "$probe_tmp/$side/probe"
  "$probe_tmp/$side/probe"
done
```
