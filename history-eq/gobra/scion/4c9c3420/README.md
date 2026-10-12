# SCION `4c9c3420`: receiver processor hash

**Verdict: NOT_EQUIV for the processor ID under a shared, controlled random-byte stream.** The historical [diff](source.diff), [parent and child sources](source_manifest.json), and changed test file are archived at their exact Git objects. In `runReceiver`, the parent consumes 16 random bytes as the FNV-1a prefix; the child consumes only 4 and pre-hashes those bytes. For a 16-zero-byte stream, an accepted 36-byte packet with address type byte 0 and `NumProcessors=10000`, the [native Go witness](seed_witness.go) returns processor IDs **5095** and **55**, respectively ([log](seed_witness.log)). Both functions return no error. The harness preserves the changed function bodies' operation order and substitutes the unchanged header constants `CmnHdrLen=12`, `IABytes=8`, and address length formula from the pinned SCION tree.

The changed hash loop itself is equivalent under a **matched pre-hashed seed**. The reduced [Gobra model](fnv_core.gobra) proves that masking the three flow-ID bytes and folding up to 48 address bytes gives the same 32-bit FNV-1a state in both forms, for arbitrary seed and bytes ([0-error log](gobra.log)). Go's `hash/fnv.New32a.Write` uses the same `(state XOR byte) * 16777619` recurrence; the child helper is copied in `fnv1aCheap.go.new`. The historical child test also compares its 4-byte-seeded result with `hash/fnv` using those **same four** bytes. That test does not cover the parent caller's 16-byte seed.

The counterexample is a strict same-stream processor-ID comparison; it does not establish a difference in externally visible forwarding, nor compare the distributions induced by a real entropy source. The Gobra proof is a reduced local relation, not a whole-router verification. No official before/after benchmark score was measured for this historical commit.

Reproduce from the project root:

```sh
python3 history-eq/gobra/scion/4c9c3420/materialize.py
source benchmarks/env.sh
java -XX:-UsePerfData -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/scion/4c9c3420/fnv_core.gobra
GOCACHE=/tmp/veriop-go-cache-scion GOTOOLCHAIN=local benchmarks/tools/go1.26.4/bin/go run history-eq/gobra/scion/4c9c3420/seed_witness.go
```
