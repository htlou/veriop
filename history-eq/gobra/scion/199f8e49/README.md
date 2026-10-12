# SCION `199f8e49`: `onehop.Path.Reverse` receiver

**Verdict: NOT_EQUIV at the exported Go method-set boundary.** The sampled performance commit changes only `func (o Path) Reverse()` to `func (o *Path) Reverse()` in `pkg/slayers/path/onehop/onehop.go`. Its message says this avoids copying the path value. The exact [parent](onehop.old.go) and [child](onehop.new.go) files and [diff](source.diff) are archived by [`materialize.py`](materialize.py), with hashes in [source_manifest.json](source_manifest.json).

For an external client declaring `interface { Reverse() (path.Path, error) }`, a `onehop.Path` **value** satisfies the interface before this commit and does not after it. The generated [old](witness/old/client/client.go) and [new](witness/new/client/client.go) clients keep the same declaration; the generator takes the exact historical receiver and return signature and supplies a stub body solely for type checking. Go 1.26.4 compiles the old client ([log](witness-old.log)) and rejects the new one because `Reverse` has a pointer receiver ([log](witness-new.log)). A `*onehop.Path` client compiles in both revisions, so the counterexample is specifically the value method set.

The selected Gobra workflow independently confirms the same method-set distinction on a reduced model: [old model](gobra/old.gobra) verifies with [0 errors](gobra-old.log), while the [new model](gobra/new.gobra) is rejected because `Path` is not assignable to `Reverser` ([log](gobra-new.log)). The Gobra model simplifies the return type and body; the Go compiler witness retains the exact historical signature. Neither check proves whether calls through `*Path` return the same SCION path. The verdict concerns source-level public API compatibility, not a runtime output difference or an official benchmark score.

Reproduce from the project root:

```sh
python3 history-eq/gobra/scion/199f8e49/materialize.py
(cd history-eq/gobra/scion/199f8e49/witness/old && GOTOOLCHAIN=local GOFLAGS=-mod=mod GOCACHE=/tmp/veriop-go-cache-199f-old /srv/home/hantaolou/code/veriop/benchmarks/tools/go1.26.4/bin/go test ./...)
(cd history-eq/gobra/scion/199f8e49/witness/new && GOTOOLCHAIN=local GOFLAGS=-mod=mod GOCACHE=/tmp/veriop-go-cache-199f-new /srv/home/hantaolou/code/veriop/benchmarks/tools/go1.26.4/bin/go test ./...)
source benchmarks/env.sh
java -XX:-UsePerfData -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/scion/199f8e49/gobra/old.gobra
java -XX:-UsePerfData -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/scion/199f8e49/gobra/new.gobra
```
