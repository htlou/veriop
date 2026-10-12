# s2n-bignum seeded nonkeyword optimization screen

The pinned `x86/`, `arm/`, and `riscv/` history contains 584 source commits: 231 keyword candidates and 353 other commits. The latter were shuffled with seed `veriop-history-v1:s2n-bignum:nonkeyword`. The [raw audit](s2n-bignum-nonkeyword-first353-blob-audit.json) found **zero** commits whose every changed blob is present locally with lazy Git fetching disabled.

Two nonkeyword messages identify changes to runtime assembly. Both lack exact old/new assembly and proof sources locally, so no HOL Light relation check was run and their verdict is `UNKNOWN`.

| Seeded draw | Commit | Stated optimization | Missing changed blobs |
|---:|---|---|---:|
| 13 | `aa9d9a71c5` | Removes one duplicated x86 P-521 multiplication instruction; also edits proofs | 80 |
| 122 | `57a43a3c6f` | Uses fewer registers in ARM P-521 squaring | 4 |

`62b6ca948f` was not selected: its message says the assembler-expression cleanup leaves object code unchanged. Other work-reduction cues were predominantly proof or instruction-model maintenance. This is metadata screening, not a complete semantic review of every diff or a performance measurement.
