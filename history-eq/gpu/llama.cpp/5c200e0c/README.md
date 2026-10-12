# llama.cpp `5c200e0c`: Vulkan GDN subgroup selection

**Verdict: scoped `NOT_EQUIV`.** The historical GDN pipeline setup changes its subgroup and lane-selection policy. For `S_V=128`, an Intel-tagged device reporting subgroup size 32 and supporting subgroup size 16, the old decision selects subgroup 32, eight lanes per column, and clustered reduction; the new decision selects subgroup 16, sixteen lanes per column, and ordinary subgroup reduction. These are different shader-selection parameters, not a numerical-output counterexample.

[The reproduction script](reproduce.py) checks the sole exact historical changed blob and archived diff, extracts the complete decision fragment through `use_subgroup_ops`, and checks the unchanged GDN size list and new pipeline call. [Alive2 refutes both directions](alive-intel128-old_to_new.log) for the Intel configuration; the [reverse log](alive-intel128-new_to_old.log) also has zero errors. A non-Intel subgroup-32, nonclustered control [passes in both directions](alive-other64-old_to_new.log) ([reverse](alive-other64-new_to_old.log)). [The result record](result.json) contains source and model hashes.

The comparison covers the pipeline-selection decision for these configurations. Vulkan shader execution, tensor outputs, other device configurations, and official before/after benchmark scores remain unverified.
