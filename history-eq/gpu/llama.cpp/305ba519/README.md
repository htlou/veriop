# llama.cpp `305ba519`: CUDA `get_rows` vector copy

Commit `305ba519` adds `k_get_rows_float_vec` for aligned same-type rows and hoists common indexing out of the scalar kernel's inner loop. The exact parent/child [source diff](../source-screening/305ba519.source.diff) is archived and hashed in the [source manifest](../source-screening/source_manifest.json).

**Selected checker verdict: `UNSUPPORTED`.** [`reproduce.py`](reproduce.py) archives the exact historical `ggml` trees, checks `getrows.cu` against its Git blob on each side, and compiles [old](old.ptx) and [new](new.ptx) PTX with CUDA 12.8 for SM80. Both PTX files parse in Volta. A faithful old/new F32 *scalar fallback* pair stops before comparison because Volta cannot lower `ld.param` from offset `+8` of the `uint3 ne12_fdv` parameter. A separate new-vector self-pair confirms that the optimized kernel hits the same limitation. The commands, hashes, and failures are in [`volta-result.json`](volta-result.json).

The vector path also passes `ne00 / 4` where the old scalar path passes `ne00`; Volta's direct comparison shares parameter values between sides. Thus no faithful vector-path comparison or equivalence verdict was produced. The source-level copy relation for aligned rows and the whole commit remain unchecked. No official historical benchmark delta was measured.

Reproduce from the project root:

```sh
python3 history-eq/gpu/llama.cpp/source-screening/materialize.py
python3 history-eq/gpu/llama.cpp/305ba519/reproduce.py
```
