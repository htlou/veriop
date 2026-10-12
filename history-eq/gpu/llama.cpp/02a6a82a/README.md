# llama.cpp `02a6a82a`: Metal `im2col` layout

**Verdict: `EQUIV_PARTIAL`.** The old Metal path dispatches one thread group per chunk of output channels and batch positions; the new path uses channel groups and loops over batch positions inside each thread. [`reproduce.py`](reproduce.py) checks the exact historical host, pipeline-name, and kernel blobs against the archived diff, then proves with Z3 that every logical output cell maps to the same source read or zero fill and the same unique destination address in three complete configurations. [The six queries](result.json) return `unsat`, including a 13-batch configuration where the old launch needs two groups and the new kernel loops thirteen times per thread.

This is an integer source-level model of the dispatch and kernel indexing. It does not compile or execute Metal, prove other shapes, or compare floating-point conversion behavior on device. No official historical before/after benchmark score was measured.

Run `alive2/.venv/bin/python history-eq/gpu/llama.cpp/02a6a82a/reproduce.py` from the project root.
