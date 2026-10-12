# llama.cpp `83078fec`: CUDA `im2col` access layout

Commit `83078fec` changes `im2col_kernel` from a channel-indexed grid to an output-position grid with channel work inside each CTA. The exact parent/child [source diff](../source-screening/83078fec.source.diff) is archived and hashed in the [source manifest](../source-screening/source_manifest.json).

**Selected checker verdict: `UNSUPPORTED`.** [`reproduce.py`](reproduce.py) archives the exact historical `ggml` trees, verifies both `im2col.cu` files against Git, and builds [old](old.ptx) and [new](new.ptx) SM80 PTX. Both parse in Volta. On a one-output F32 specialization, the parent kernel cannot be lowered: `unsupported at pc:67: mul.hi at width 64`. The child self-pair does lower and returns `EQUIVALENT`, which is only a tool-capability probe, not a historical equivalence proof. The exact commands, source/PTX hashes, and outputs are in [`volta-result.json`](volta-result.json).

The historical child also adds an unused `N` kernel parameter and swaps grid axes, so a future old/new comparison must couple those launch arguments. Volta reached no old/new relation because it stopped on the parent first. No counterexample, whole-commit equality, or official historical performance delta is established.

Reproduce from the project root:

```sh
python3 history-eq/gpu/llama.cpp/source-screening/materialize.py
python3 history-eq/gpu/llama.cpp/83078fec/reproduce.py
```
