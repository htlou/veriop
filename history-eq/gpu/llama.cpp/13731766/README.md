# llama.cpp `13731766`: Power10 MMA FP32 GEMV dispatch

The exact parent `ab6ab8f8` and child `13731766` change only `sgemm.cpp` ([historical diff](../source-screening/13731766.source.diff)). [Source audit](source-audit.json) binds the archived full files and diff to their Git objects. The child permits `n=1` under `__MMA__` and adds forwarding paths inside `tinyBLAS_PPC`.

[The extracted gate models](gate-old.c) and [child gate](gate-new.c) preserve the changed early return and the unchanged FP32/MMA type and `k % 8` checks. They restrict the comparison to valid `n >= 1, k >= 8` inputs, assume the PPC MMA branch is selected and that `tb.matmul` returns normally, and observe only the internal `llamafile_sgemm` handled flag. [Forward](alive2-forward.log) and [reverse](alive2-reverse.log) Alive2 runs both give a counterexample at `n=1`, `k=8`, all three types FP32: parent returns `false`, child returns `true`. This is an intentional dispatch-policy difference, so the scoped verdict is **`NOT_EQUIV` for the handled flag**.

Alive2 did not compare the PowerPC MMA matrix arithmetic or the caller's fallback computation. The gate projection cannot establish a difference in final matrix values. Full historical PowerPC compilation is unavailable here because the host lacks a PowerPC libc sysroot. No official before/after benchmark score was measured. Kuiper was not used.

Reproduce the source audit and Alive2 result from the project root:

```sh
python3 -B history-eq/gpu/llama.cpp/13731766/check_source.py
for side in old new; do
  alive2/toolchain/usr/lib/llvm-20/bin/clang -D__MMA__ -O0 -S -emit-llvm \
    -o history-eq/gpu/llama.cpp/13731766/gate-$side.ll \
    history-eq/gpu/llama.cpp/13731766/gate-$side.c
done
alive2/build/alive2/alive-tv history-eq/gpu/llama.cpp/13731766/gate-old.ll history-eq/gpu/llama.cpp/13731766/gate-new.ll --func=gate
```
