# OpenSSL `a3ea6bf0`: ASN.1 negative-integer decoding

Commit `a3ea6bf0ef703b38a656245931979c7e53c410b7` rewrites `crypto/asn1/a_int.c` to share two's-complement code and reduce branches. `materialize.py` archives the exact parent/child source. `model.c` contains their complete `c2i_ibuf` bodies, renamed only to coexist in one translation unit, and the child's exact `twos_complement` helper. `check_source.py` verifies those bodies, source hashes, and the unchanged public `c2i_ASN1_INTEGER` caller.

**Result: verified unequal for `c2i_ibuf` on valid ASN.1 INTEGER content `FF 00` (negative 256).** The old function's special case returns length 2 and magnitude bytes `01 00`. The new function removes the `FF` sign byte, returns length 1, and writes magnitude byte `00`. The witness returns only the length and first output byte: native execution gives `old=0x201 new=0x100` (`native.log`). Clang 20's LLVM IR (`model.ll`) yields an Alive2 **value mismatch**, source 513 versus target 256 (`alive2.log`). These numbers are the witness's packed observation, not benchmark scores.

The unchanged public `c2i_ASN1_INTEGER` first calls this helper to choose the stored length and then calls it again to fill the magnitude, so this helper mismatch implies a different public result when allocation succeeds. The full historical OpenSSL library binaries were not run for this commit; the direct executable and Alive2 evidence covers the source-audited helper and its fixed valid input. No official before/after performance score is claimed.

Reproduce from the project root:

```sh
python3 history-eq/c/openssl/a3ea6bf0/materialize.py
python3 history-eq/c/openssl/a3ea6bf0/check_source.py
alive2/toolchain/usr/lib/llvm-20/bin/clang -O1 -Wall -Wextra history-eq/c/openssl/a3ea6bf0/model.c -o /tmp/veriop-openssl-a3ea6bf0
/tmp/veriop-openssl-a3ea6bf0
alive2/toolchain/usr/lib/llvm-20/bin/clang -O1 -S -emit-llvm history-eq/c/openssl/a3ea6bf0/model.c -o history-eq/c/openssl/a3ea6bf0/model.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=60000 --src-fn=src --tgt-fn=tgt history-eq/c/openssl/a3ea6bf0/model.ll
```
