# Kontrol `1c2e6775`: compilation optimization flags

**Checker verdict: `UNSUPPORTED` by the selected K `kprove` interface.** The [source audit and checker run](check.py) use the exact parent and child `src/kontrol/kompile.py` Git blobs. Both parse as Python, and their executable difference is the new `-O1/-O2/-O3` flag selection and `optimization` argument to `kevm_kompile`. Submitting the child file to `kprove` fails in the K outer parser before any semantic relation is checked ([log](kprove-python.log), [result](result.json)).

This outcome says nothing about whether the compiled old and new Kontrol definitions are equivalent, whether the optimization flags improve proof speed, or whether Python callers observe a difference beyond the intended compiler argument. There is no official historical before/after performance score in this check.

Run from project root: `python3 history-eq/k/kontrol/1c2e6775/check.py`.
