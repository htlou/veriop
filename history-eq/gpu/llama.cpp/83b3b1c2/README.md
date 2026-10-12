# llama.cpp `83b3b1c2`: CUB cumsum optimization

This historical optimization changes the F32 CUB cumsum kernel from one item per thread to four items per thread and changes the dispatch threshold. [`reproduce.py`](reproduce.py) extracts the exact parent and child `ggml/` trees, checks their `cumsum.cu` bytes against Git, compiles each with its own historical headers using NVCC 12.8, and parses the resulting distinct PTX files with Volta. Both builds and both parses succeed; the exact commands, source/PTX hashes, and tool output are in [`volta-result.json`](volta-result.json).

The selected comparison uses one 256-thread CTA, one contiguous 1024-element F32 row, and all 1024 output elements. The historical host dispatcher selects the CUB path on both sides at this length. Volta's module parser requires 1064 dynamic shared-memory bytes because the same PTX module also contains a fallback kernel with an `extern __shared__` declaration; the selected CUB entry does not use that extern region.

Volta analyzes the **old** CUB entry and reports no race or deadlock. It stops on the **new** entry with `data race on Shared[0x4a0]: read by t1 at pc:167 conflicts with write by t0 at pc:184`; the old/new comparison stops at the same diagnostic. **Verdict: `UNKNOWN` for equivalence.** The tool did not compare outputs, and this record does not establish whether the reported CUB shared-memory race is reproducible on CUDA hardware or is a limitation of Volta's model. No official before/after benchmark score or Kuiper proof is claimed.

Run `python3 history-eq/gpu/llama.cpp/83b3b1c2/reproduce.py` from the project root.
