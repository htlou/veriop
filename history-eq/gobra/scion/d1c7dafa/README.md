# SCION `d1c7dafa`: one-iteration path reversal

This sampled proof-time simplification replaces the reversal loop in `Decoded.Reverse` with one conditional swap. The [exact diff](source.diff) and [parent](decoded.old.go)/[child](decoded.new.go) files are archived with hashes in [source_manifest.json](source_manifest.json).

**Verdict: EQUIV_PARTIAL.** A reduced [Gobra relation](reversal.gobra) compares the exact old loop shape with the new conditional for `1 <= NumINF <= 3`, the range represented by the historical three-entry `SegLen` array. Its loop invariants cover the no-swap case and both possible swaps. Gobra [reports 0 errors](gobra.log), proving equality of all three modeled `InfoFields` and `SegLen` elements after the two snippets for arbitrary initial element values.

The model uses integer arrays in place of historical `InfoField` structs and `uint8` segment lengths; the transformation only swaps elements, so no arithmetic property of those types is needed for this local result. It does not load the complete `Decoded.Reverse` method, prove its later flag/hop updates, or address malformed states outside the valid one-to-three-info-field range. No official before/after benchmark score is attached.

Reproduce from the project root:

```sh
python3 history-eq/gobra/scion/d1c7dafa/materialize.py
source benchmarks/env.sh
java -XX:-UsePerfData -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/scion/d1c7dafa/reversal.gobra
```
