# xxHash `6078dd6a`: `restrict` on seeded long-input hash

The [exact historical diff](source.diff) adds `XXH_RESTRICT` to the input and secret parameters of `XXH3_hashLong_64b_withSeed` (plus one whitespace correction). Run `python3 -B history-eq/c/xxHash/6078dd6a/reproduce.py` from the project root to audit the two historical headers, compile their target function with Clang 20, and try Alive2 in both directions.

Clang lowers the new input parameter to LLVM `noalias`. The unmodified attribute makes this Alive2 build reject both comparison directions before it can compare the bodies ([exact-attribute attempt](result.json)).

**Commit verdict: `EQUIV_PARTIAL` for the read-only value result.** The changed function discards its `secret` and `secretLen` arguments, reads through `input`, and writes to local scratch storage rather than caller-owned input storage. Clang marks `input` `readonly` in both revisions. The [LLVM parameter-`noalias` rule](https://llvm.org/docs/LangRef.html#parameter-attributes) constrains memory locations modified during the call, so the added attribute does not change this function's behavior on valid inputs. [`verify_readonly.py`](verify_readonly.py) checks that the entire historical header differs only by the two qualifiers and whitespace, then removes unsupported alias attributes/metadata from **both** compiled IR modules. Bidirectional Alive2 reports one correct, syntactically equal transformation for the changed helper and one for a 256-byte caller ([helper log](alive2-XXH3_hashLong_64b_withSeed.log), [caller log](alive2-target.log)). This combines a source-level side-condition audit with Alive2's value comparison; Alive2 alone did **not** verify the original `noalias` attribute.

The [result record](readonly-result.json) lists exact source blobs and scope. It does not prove timing behavior, unrelated xxHash functions, or every compiler configuration. No official historical performance score was measured. Reproduce the read-only check with:

```sh
python3 -B history-eq/c/xxHash/6078dd6a/verify_readonly.py
```
