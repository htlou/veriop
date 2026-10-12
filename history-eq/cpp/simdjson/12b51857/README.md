# simdjson `12b51857`: number tape rewrite

**Verdict: `NOT_EQUIV` for an existing C++ source client; valid parsed-JSON output remains unverified.** This performance commit removes `number_buf`, puts integer/double payloads directly on the tape, and changes `ParsedJson::printjson()` from `void` to `bool`. The historical parent is `ce85dd0c3a018ca9b1182d2000db0eb271a17cb4`; the child is `12b518578d9535fad495029772c028476d17a519`. The [source audit](source-audit.log) checks both archived [headers](old.h) [separately](new.h) against their exact Git blobs and the complete [two-file diff](../source-screening/12b51857.source.diff).

The [same old-client declaration](api_signature_probe.cpp), `void (ParsedJson::*)() = &ParsedJson::printjson`, type-checks against the exact parent header and fails against the child header because its return type is now `bool` ([source-locked check](check_api_signature.py), [result](api-signature-result.json)). This is a source-compatibility counterexample for the exposed `ParsedJson` header, not a runtime JSON-value difference. It does not require constructing a JSON tape or the missing unchanged parser files.

The identical [witness caller](witness.cpp), compiled separately with each historical header, allocates a tape whose first word is not the required root tag. The [parent run](old-run.exit) terminates via `abort()` (exit 134); the [child run](new-run.exit) returns normally (exit 0). This is a genuine behavior difference for a constructible `ParsedJson` object, but the source comment says `printjson()` expects a valid JSON tape. **The witness is outside that documented input domain**, so it is not counted as a verified-unequal parser result.

Alive2 was attempted on Clang 20 IR of the historical header caller. The `-O1` check [rejects metadata](alive2.log). The `-O0` check [cannot establish a valid whole-pair relation](alive2-o0.log): it sees different `ParsedJson` layouts, different `printjson` return types, and different global-string sizes. Its reported `main` mismatch comes from treating the changed C++ callee as a corresponding external function; it is not a valid counterexample for the complete linked programs. Neither run proves equality or inequality on valid JSON inputs. The local source store also lacks 17 unchanged include/src blobs on each side, so complete historical parser binaries have not been built ([availability audit](../source-screening/missing-full-source.json)).

Reproduce the exact-header diagnostic from the project root:

```sh
case_dir=history-eq/cpp/simdjson/12b51857
for side in old new; do
  g++ -std=c++11 -O0 -DHISTORICAL_HEADER="\"${side}.h\"" -I "$case_dir" \
    "$case_dir/witness.cpp" -o "$case_dir/$side-witness"
done
ulimit -c 0
"$case_dir/old-witness"  # aborts
"$case_dir/new-witness"  # returns 0
```

Recheck the source API witness with `python3 -B history-eq/cpp/simdjson/12b51857/check_api_signature.py` from the project root. There is no official before/after simdjson benchmark score for this historical pair in this workspace.
