# llama.cpp `7c7f3b7f43` — skip the intermediate Metal `.air` file

**Verdict: `UNSUPPORTED` by the selected program-equivalence checkers.** The exact historical commit changes only `ggml/src/ggml-metal/CMakeLists.txt`. Replacing the child's piped `xcrun metal | xcrun metallib` command with the parent's two compiler commands and `.air` cleanup makes the entire CMake file byte-identical. No C, C++, or Metal program source changed in this commit.

The claim requiring verification is that both compiler invocations produce equivalent `.metallib` artifacts and preserve build failures and cleanup behavior. Alive2, Aeneas, Volta, and Kuiper do not compare macOS build-command side effects; this Linux host has no `xcrun` to run the historical build. Thus this is neither a verified program equality nor a counterexample. No official before/after build-time or runtime benchmark score was measured.

Run `python3 -B history-eq/gpu/llama.cpp/7c7f3b7f43/reproduce.py` from the project root. [result.json](result.json) records the source audit and host capability.
