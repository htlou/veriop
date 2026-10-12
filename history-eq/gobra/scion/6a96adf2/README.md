# SCION `6a96adf2`: ECDSA verification optimization

**Verdict: `NOT_EQUIV` for the public `signed.Verify` error on a malformed ECDSA signature; valid-signature results are not checked.** The [upstream commit](https://github.com/scionproto/scion/commit/6a96adf2b5354109c062c04b54810399bb5c454d) explicitly seeks the Go standard library's ECDSA optimizations. It replaces manual ASN.1 decoding plus `ecdsa.Verify` with `ecdsa.VerifyASN1`.

`recover_source.py` reads the exact parent `pkg/scrypto/signed/msg.go` Git blob, applies only the commit's import and ECDSA-case changes, and asserts that the result hashes to the exact child Git blob ID. The archived `historical-old.go` and `historical-new.go` thus match both historical changed-file versions. Their common `Verify` prefix parses the header and body, checks associated-data length and key algorithm, and does not inspect the signature bytes. A valid `Sign` result with `ECDSAWithSHA256` and a P-256 key therefore reaches the changed branch after replacing only `Signature` with `{0x00}`.

`witness.go` executes source-mapped copies of the two ECDSA cases with Go 1.26.4 against the same valid P-256 public key, digest, and malformed signature. [The run](witness.log) returns an ASN.1 syntax error before the change and the generic `ECDSA verification failure` afterward. The historical `Verify` bodies both return `nil` messages on these error branches, but their returned errors differ. This is an observable error-behavior counterexample, not a numerical or timing result. The complete historical SCION package was not built here: external Go modules are absent from the local cache, and Gobra did not prove a whole-function relation.

Reproduce from the workspace root:

```sh
python3 -B history-eq/gobra/scion/6a96adf2/recover_source.py
cd history-eq/gobra/scion/6a96adf2
GOPROXY=off GOCACHE=/tmp/veriop-scion-go-cache ../../../../benchmarks/tools/go1.26.4/bin/go run witness.go
```
