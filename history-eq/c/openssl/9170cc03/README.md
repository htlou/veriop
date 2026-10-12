# OpenSSL `9170cc03`: SM2 field-size optimization

**Verdict: verified different at the internal `ossl_sm2_ciphertext_size` API under allocation failure.** Parent `20ddfe78e9ddc0aba8208616e1b0b33cb12f77f5`; child `9170cc0398222778065e098e396b8eb8cd0de1d3`. The [commit patch](commit.patch) changes only `crypto/sm2/sm2_crypt.c`: the old `ec_field_size` allocates three temporary BIGNUMs and returns zero if any allocation fails; the new version reads the EC group's existing field directly and requires no temporary allocation. On successful execution, both compute `(BN_num_bits(p) + 7) / 8`.

The [probe](oom_probe.c) is identical for both revisions. It installs OpenSSL's `CRYPTO_set_mem_functions` hooks before initialization, constructs a real `NID_sm2` key, checks a normal call, then makes subsequent OpenSSL allocations fail while calling the actual historical `ossl_sm2_ciphertext_size` from each revision's separately built **static** `libcrypto.a`. The old binary reports [`normal=1 starved=0 starved_size=0`](old-probe.log); the new binary reports [`normal=1 starved=1 starved_size=124`](new-probe.log). Both probe processes exit 0. `readelf -d` shows the probe does not dynamically depend on system `libcrypto`. Thus the output difference is observed on a valid group and the unchanged real caller, not only in a reduced model.

Both revisions were configured with `./config no-shared no-tests no-asm`, then `make build_generated` and `make -j16 libcrypto.a` completed successfully. The same probe was compiled using each worktree's generated headers and static archive:

```sh
gcc -Iinclude -I. -Wno-deprecated-declarations /srv/home/hantaolou/code/veriop/history-eq/c/openssl/9170cc03/oom_probe.c libcrypto.a -ldl -pthread -o oom_probe
./oom_probe
```

The [Alive2 model](field_size_model.c) contains both historical `ec_field_size` function bodies verbatim apart from their names (checked by whitespace-insensitive comparison against both worktrees). Its OpenSSL API stubs fix a valid 256-bit field and make `BN_new` return null exactly when the `allocation_fails` input is set. Clang 20 emitted [LLVM IR](field_size_model.ll); [Alive2](alive2-oom-model.log) reports a value mismatch for `allocation_fails=1`: old field size 0, new field size 32. The native historical-binary probe above validates the same branch difference through the real OpenSSL implementation. The exact historical C files also compile to [old](sm2-old.ll) and [new](sm2-new.ll) LLVM IR; Alive2's [raw comparison](alive2-ec-field-size.log) instead exhibits `group = null`/external-call UB and is **not** the evidence for the valid-group verdict. This result covers the internal ciphertext-size API, not every public EVP/SM2 entry point. No official before/after OpenSSL benchmark score was measured for this commit.

```sh
alive2/toolchain/usr/lib/llvm-20/bin/clang -O1 -S -emit-llvm history-eq/c/openssl/9170cc03/field_size_model.c -o history-eq/c/openssl/9170cc03/field_size_model.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=60000 --src-fn=src --tgt-fn=tgt history-eq/c/openssl/9170cc03/field_size_model.ll
```
