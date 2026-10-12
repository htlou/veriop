# llama.cpp `c7bda030`: Vulkan FlashAttention dequant gate

**Whole-commit output verdict: `UNKNOWN`.** The commit changes one line of the `is_dense_kv_cache` predicate inside `ggml_vk_flash_attn`. [reproduce.py](reproduce.py) extracts both exact historical lambdas from `ggml/src/ggml-vulkan/ggml-vulkan.cpp` into [old-source.txt](old-source.txt) and [new-source.txt](new-source.txt). For the local check, their helper results `ggml_type_size` and `ggml_row_size` become shared scalar inputs; `nb[]` and `ne[]` become 64-bit scalar inputs. The script asserts that the only expression change is the historical `ne[3] == 1` disjunct.

[Alive2 rejects equality](alive2.log) of the extracted predicates with a value-mismatch counterexample. A [native witness](witness.log) uses `nb=(18,18,18,18)`, `ne[1..3]=(64,1,1)`, `type_size=row_size=18`: **old=0, new=1**. [A second Alive2 check](implication-alive2.log) proves `old ⇒ new` for all 64-bit input values under the same source-audited scalar model. Since the other `use_dequant_kv` conjuncts are unchanged, the new gate can enable the dequant path in additional cases and does not disable any case admitted by the old gate.

This establishes a one-way **dispatch-predicate** relation, not equivalence or refinement of the Vulkan FlashAttention output, memory effects, or performance. Volta's PTX-kernel interface does not cover this host-side Vulkan gate; Kuiper was not run. No official historical before/after benchmark score was measured.

Reproduce from the project root with `python3 -B history-eq/gpu/llama.cpp/c7bda030/reproduce.py`.
