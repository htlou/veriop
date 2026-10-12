# zstd `f36da5b4`: index-table reduction

The historical commit `f36da5b4d9f6e382c7045124c015fdeaec7345ca` changes `ZSTD_reduceTable` from a linear loop to 16-element rows and also changes other compression paths. [`build_model.py`](build_model.py) checks the saved [parent](zstd.old.txt), [child](zstd.new.txt), and [complete diff](source.diff) against Git, then extracts the reducer bodies verbatim into [a local C model](reduce_model.c). The only instrumentation is renaming the functions, adding `always_inline` so Alive2 sees the called bodies, and fixing the wrapper's size to 16 or 32.

**Verdict: EQUIV_PARTIAL.** For a readable/writable 16-element `U32` table and arbitrary 32-bit reducer value, [bidirectional Alive2](alive2-16.log) reports equivalence of the old and new wrappers, including memory effects. Clang 20 `-O2` has normalized these fixed-size loops to the same LLVM operations; the result relies on the C-to-LLVM compilation and covers this one size only. A deliberately wrong new wrapper increments the first output element; [Alive2 rejects it](alive2-negative.log) with a memory mismatch. The 32-element comparison [timed out](alive2-32.log) after the 45-second per-query limit, so there is no 32-element verdict.

The changed helper adds assertions that `size` is a multiple of 16 and below `2^31`; no claim is made for arbitrary helper inputs. The full commit also changes context setup and other code, and neither full compression equivalence nor an official before/after benchmark delta is established.

From the project root, reproduce the checks with:

```sh
python3 history-eq/c/zstd/f36da5b4/build_model.py
alive2/toolchain/usr/bin/clang-20 -O2 -emit-llvm -S history-eq/c/zstd/f36da5b4/reduce_model.c -o history-eq/c/zstd/f36da5b4/reduce_model.ll
python3 history-eq/c/zstd/f36da5b4/check_ir.py
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=old16 --tgt-fn=new16 history-eq/c/zstd/f36da5b4/reduce_model.checked.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=old32 --tgt-fn=new32 history-eq/c/zstd/f36da5b4/reduce_model.checked.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=old16 --tgt-fn=new16_bad history-eq/c/zstd/f36da5b4/reduce_model.checked.ll
```

[`check_ir.py`](check_ir.py) removes only Clang's unsupported `nocapture` hint and nonsemantic TBAA, loop, and module metadata from the LLVM input; it does not change instructions or control flow.
