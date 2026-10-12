# llama.cpp `053b1539`: Windows thread-priority return

**Verdict: scoped `NOT_EQUIV`.** The exact historical `ggml_thread_apply_priority` bodies are compiled to LLVM IR with the Windows 8+ branch enabled. For `GGML_SCHED_PRIO_NORMAL`, the old function returns `true` without a Windows API call; the new function first calls `SetThreadInformation` and returns `false` if that call fails. [`reproduce.py`](reproduce.py) keeps both historical function bodies, models the API result as a common symbolic input, and runs Alive2 in both directions. Both checks report an incorrect transformation in [`old_to_new.log`](old_to_new.log) and [`new_to_old.log`](new_to_old.log).

The [result record](result.json) identifies the exact Git blobs and IR files. This is a valid helper-return counterexample under the stated API outcome, not a numerical-output comparison or a performance benchmark. The source mapping omits logging and models Windows API outcomes as inputs; the complete threadpool and other operating systems remain unverified.

Run `python3 -B history-eq/gpu/llama.cpp/053b1539/reproduce.py` from the project root.
