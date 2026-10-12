# Kontrol `7c6fac72`: proof-loading speed on reruns

The sampled historical commit `7c6fac72b72bac71b563ae9d8781daafbef8b5d6` changes Kontrol's Python proof-loading path, especially `src/kontrol/foundry.py` and `src/kontrol/prove.py`. `commit.patch` is the full historical diff. `source-audit.json` records the eight changed paths and successful syntax parsing of all four changed Python files on both sides; `prove-old.py` and `prove-new.py` are exact Git versions of one affected file.

**Verdict: unsupported by the selected K `kprove` checker.** This optimization is in the Python orchestration layer, not in a K definition or claim. Feeding the new historical `prove.py` to the built `kontrol.base` checker produces an outer-parser error at the first Python `from` statement (`kprove-python.log`, exit 113). Python syntax validity is not a behavior proof. No old/new proof-loading equivalence or counterexample is established here; checking a K claim loaded by either version would not prove the loaders behave alike.

The pinned official `make profile` workload is a separate baseline test, not a before/after rerun-loading score for this historical commit. No performance delta is reported.
