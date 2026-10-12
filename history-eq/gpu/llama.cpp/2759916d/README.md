# llama.cpp `2759916d`: Vulkan fast division

**Local arithmetic verdict: `NOT_EQUIV`; selected historical-commit verdict: `UNKNOWN`.** The child adds `fastdiv(n, mp, L)` in the Vulkan unary shader and computes its constants on the host. With divisor 3, the exact host initializer produces `mp=1431655766` and `L=2`. At `n=0xC0000000`, the old `n/3` gives `0x40000000`; the child's 32-bit `(mulhi(n, mp)+n)>>L` wraps the addition and gives 0. [Alive2 refutes the source-derived quotient expressions](alive-old_to_new.log) in both directions; the [reverse log](alive-new_to_old.log) also has zero checker errors.

[reproduce.py](reproduce.py) verifies all three changed Git paths and blob IDs, matches the archived host/shader diff, compiles the exact historical host initializer to confirm the constants, then checks the two 32-bit quotient formulas with Alive2. [result.json](result.json) records the witness and model hashes.

This is a counterexample to the private quotient formula over its declared `uint32` input range. It does not show that an actual shader invocation reaches that index with a supported tensor shape and Vulkan buffer size, nor that the final copied tensor differs. Those obligations keep the selected commit `UNKNOWN`. No official historical before/after benchmark score was measured.
