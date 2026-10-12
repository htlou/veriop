# compress `301db50e`: flate bit-writer integer widths

**Verdict: EQUIV_PARTIAL.** The [exact historical diff](source.diff) and [parent/child `huffman_bit_writer.go` and `huffman_code.go` files with hashes](source_manifest.json) are archived. The commit changes bit-count types from `uint32`/`uint8` to `uint` and restructures the buffer-count update in `writeBlockHuff`.

The reduced [Gobra relation](bitwriter.gobra) proves two changed local operations, with [zero errors](gobra.log):

- For every `hcode` built by the unchanged `toCode`/`set` pattern from a `uint16` code and `uint8` bit length, the old `uint8(h >> 16)` and new `uint(h >> 16)` produce the same bit length after conversion to `uint`.
- After the same buffer write result, the old and new `writeBlockHuff` branches leave `w.nbytes` and `w.err` equal for arbitrary post-increment count, threshold, initial error, and returned write error.

The proof does not load the complete `huffmanBitWriter`, verify all callers preserve the constructed-code invariant, or compare compressed output and writer side effects. The old and new `bits()` helpers differ for arbitrary malformed `hcode` values whose upper 16 bits exceed 255; the local equivalence applies to values built by the archived constructors. No official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/gobra/compress/301db50e/materialize.py
source benchmarks/env.sh
java -XX:-UsePerfData -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/compress/301db50e/bitwriter.gobra
```
