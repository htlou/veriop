# SCION `270b5522`: skip disabled-log context conversion

**Verdict: verified unequal at the unrestricted exported `log.Debug` API.** The parent is `5823c6177e3a741111e340da0c42573d13c49e79`; the child is `270b5522af2f145e0e9589a145a89a438918089f`. The performance commit adds an enabled-level guard before `convertCtx` in `Debug`, `Info`, `Error`, and the `logger` methods; the [historical diff](source.diff) shows the exact change. This case is classified from an actual before/after counterexample, not from the commit's benchmark claim.

The unchanged `convertCtx` performs `ctx[i].(string)` for each even-indexed key. With the default global logger's Debug level disabled and `ctx = []interface{}{7, "value"}`, the [same witness program](witness.go) run against the historical parent prints `debug-enabled: false` then panics at `pkg/log/wrappers.go:117` ([old log](witness-old.log)); against the child it prints `debug-enabled: false` and `returned` ([new log](witness-new.log)). The parent command exits 1 (`go run` reports program exit status 2); the child exits 0. The public signature accepts `...interface{}` and its `Debug` documentation states no string-key precondition. This is a concrete observational difference under that unrestricted signature. Under a separate contract requiring every context key to be a string, this witness would fall outside the contract and the verdict would need to be scoped accordingly.

Gobra corroborates the changed branch in a reduced `len(ctx) == 2` model: the old call necessarily reaches one type assertion, while the new disabled-level branch skips it. Gobra reports `Assert might fail` for the old assertion-success obligation ([old model](old_type_assertion.gobra), [old log](gobra-old.log)) and `0 errors` for the guarded new model ([new model](new_disabled.gobra), [new log](gobra-new.log)). These models omit zap and are **not** a Gobra relational proof of the full historical package. The concrete public-API counterexample comes from the historical Go source, compiled and run with the same Go 1.26.4 toolchain for both revisions.

No official SCION benchmark score was measured for this historical commit. Its message's local timing claim is not counted as benchmark evidence here.

Reproduce from the project root:

```sh
(cd history-eq/wt/scion-log-old && GOTOOLCHAIN=local GOFLAGS=-mod=mod ../../../benchmarks/tools/go1.26.4/bin/go run ../../gobra/scion/270b5522/witness.go)
(cd history-eq/wt/scion-log-new && GOTOOLCHAIN=local GOFLAGS=-mod=mod ../../../benchmarks/tools/go1.26.4/bin/go run ../../gobra/scion/270b5522/witness.go)
source benchmarks/env.sh
java -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/scion/270b5522/old_type_assertion.gobra
java -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/scion/270b5522/new_disabled.gobra
```
