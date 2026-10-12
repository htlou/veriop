# llama.cpp `d7be4618`: Turing MMVQ launch parameters

The [exact production diff](../source-screening/d7be4618.source.diff) adds a Turing-specific MMVQ parameter table. Its parent is `bc81d47aba663383dc8827bd3bc8c4a35f735d16`; the optimized commit is `d7be46189f4a9ed59c5d98f71a87f8a16954a6eb`. For the selected Q4_0, one-column specialization, the launch changes from 32 to 128 threads per block.

Run `python3 history-eq/gpu/llama.cpp/d7be4618/reproduce.py` from the project root. The script archives each exact historical `ggml/` tree, compiles its `mmvq.cu` for SM75 with NVCC, parses both [old](old.ptx) and [new](new.ptx) PTX files with Volta, and attempts a comparison. The [result record](volta-result.json) contains the commands, exit codes, source/PTX SHA-256 hashes, and complete checker output. Both compilation and parsing steps passed.

Volta stops while lowering the **reference** kernel at `ld.param ...__param_14+4`: `param loads with nonzero offsets are not supported`. This occurs before an equivalence decision. The supplied comparison arguments therefore do not establish any valid workload result. **Verdict: `UNSUPPORTED` for this selected historical kernel pair.** No equivalence, counterexample, whole-commit proof, Kuiper proof, or official before/after benchmark score follows from this attempt.
