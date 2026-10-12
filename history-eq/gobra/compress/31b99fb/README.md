# compress historical optimization `31b99fb`

Commit `31b99fb25891c5029c4ce786455141372f0de6c3` (`zstd: Make load(32|64)32 safer and smaller`) changes only two helpers in `zstd/zstd.go` (`source.diff`). Its message says the new bounds-check path produces several dozen fewer instructions. Both helpers previously passed `b[i:]` to `binary.LittleEndian.Uint32`/`Uint64`; both now pass `b[:len(b):len(b)][i:]`. The three-index slice restricts capacity but retains the same length and byte offsets. The safe-read precondition for both helpers is `0 <= i` and `i+8 <= len(b)` (the 32-bit helper alone needs four bytes).

**Verdict: `EQUIV` for the two complete changed helpers' returned integers or panic occurrence.** The corrected [Gobra relation](slice_equiv.gobra) names permissions for each accessed byte. Gobra [proves](gobra.log) equal lengths and the first four or eight bytes of the exact old/new slice expressions for every valid read. The original quantified-permission attempt failed to establish view access; its [minimal control](slice_permission_control.gobra) and [old log](control.log) remain diagnostic, not counterexamples.

For arbitrary slice length, capacity, and index, the [Z3 domain query](domain.smt2) returns [`unsat`](domain.log) for a difference in slice validity or the 4/8-byte normal-return condition. This models the [Go slice specification](https://go.dev/ref/spec#Slice_expressions): the full slice retains length and elements while limiting capacity, and the omitted high bound in `b[i:]` is `len(b)`. `binary.LittleEndian.Uint32` and `Uint64` read only the first four and eight bytes respectively ([standard-library source](https://go.dev/src/encoding/binary/binary.go)). The [source-locked reproduction](reproduce.py) verifies that these are the only two production expressions changed. Together, these establish equal returned integers when defined and equal panic occurrence otherwise. Exact panic text, stack traces, and calling-program timing are outside this observation. No official compress benchmark before/after score is attached. Z3 was invoked directly; Kuiper was not used.

Reproduce from the project root:

```sh
python3 -B history-eq/gobra/compress/31b99fb/reproduce.py
```
