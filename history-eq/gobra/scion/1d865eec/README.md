# SCION `1d865eec`: lint cache

**Fixed-sample verdict: `UNSUPPORTED` by the selected Gobra checker for the whole change.** The [upstream commit](https://github.com/scionproto/scion/commit/1d865eec33b542f3621a3add87b7ed18932de991) changes the `golangci-lint` Makefile command to mount persistent Docker volumes for module and build caches. The commit message explicitly says this avoids repeatedly fetching and building dependencies, although it expects limited benefit on ephemeral CI runners. The only other change is a test logging call.

The optimization changes Docker/Makefile lint execution, not the semantics of a Go function. Gobra verifies annotated Go programs and cannot compare Docker cache persistence or lint wall time. No before/after official lint timing, Go-program equivalence proof, or counterexample is claimed. This is a checker-scope classification based on the complete upstream diff; historical changed blobs are not locally available.
