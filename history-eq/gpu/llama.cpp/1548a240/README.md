# llama.cpp `1548a240`: OpenCL flat F32 copy

**Verdict: `EQUIV_PARTIAL`.** This commit adds a flat, four-float-per-work-item copy for contiguous F32 tensors. For a single contiguous row with `32 <= length <= INT_MAX`, [Alive2 proves both directions](alive-old_to_new.log) of the old row kernel and new flat kernel's source/destination **byte-address mapping** for every logical element. The proof covers lengths with a one-to-three-element tail. The [reverse log](alive-new_to_old.log) also reports one correct transformation and zero errors.

Run `python3 -B history-eq/gpu/llama.cpp/1548a240/reproduce.py` from the project root. It checks all five historical changed paths against the archived [diff](../source-screening/1548a240.source.diff), confirms the old row kernel is unchanged as the new fallback, checks the new host eligibility and launch formulas, and compiles both exact `.cl` files with OpenCL C 1.2 syntax checking. The [result](result.json) records the Git blob IDs and model hashes.

This is an address-mapping proof for the one-row F32 specialization. It does not run OpenCL, establish float payload behavior under aliasing, cover other shapes or types, verify the new unary/concat code, or prove the entire commit. No official before/after benchmark score was measured.
