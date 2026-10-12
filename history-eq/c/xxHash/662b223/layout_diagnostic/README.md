# xxHash `662b223`: exposed-state layout diagnostic

The exact historical `xxhash.h` blobs are `b14092f2b5371f2a6eaf18f69b4e17af564a6c27` before and `66f9116f71040f128d158067bb03b5064df63a32` after. With `XXH_STATIC_LINKING_ONLY`, the same [C probe](probe.c) compiles against each version. On x86-64, `offsetof(XXH3_state_t, nbStripesPerBlock)` changes from 520 to 536, and `offsetof(XXH3_state_t, totalLen)` changes from 544 to 528; `sizeof(XXH3_state_t)` remains 576. [Alive2](alive2.log) reports two output mismatches and one correct transformation for these three functions.

**Commit verdict remains `UNKNOWN`.** The historical header explicitly says its static-linking declarations may change and instructs users never to access state members directly. An `offsetof` probe depends on those member positions and is outside that documented use. This diagnostic is therefore **not a counterexample for the supported hash API**. The earlier streaming digest checks remain inconclusive.

Run `bash history-eq/c/xxHash/662b223/layout_diagnostic/verify.sh` from the project root to recheck blob IDs, compile both IR files, and rerun Alive2.
