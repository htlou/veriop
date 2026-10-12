# simdjson `1a195623`: removed public unescape overload

**Verdict: not equivalent at public C++ source API scope.** Parent `5f7a56e7f1ca433df246bf84a976eaecadcb0005`; child `1a195623a538d3ad1e9ae54b552655b696e57ac2`. The string-processing optimization removes the public `simdjson_result<raw_json_string>::unescape(uint8_t *&)` overload and retains `unescape(json_iterator &)`, while adding a parser-level unescape path.

The [check](check.py) extracts the exact historical `raw_json_string.h` blobs from Git and asks Clang to type-check the same [old client expression](Client.cpp) against each. The parent passes; the child rejects its `uint8_t *&` argument because the remaining overload requires `json_iterator &` ([result](result.json), [run log](check.log)). Minimal declarations and an empty `simdjson/error.h` satisfy unrelated header dependencies; the actual overload declarations are taken unchanged from the historical headers. This is a compile-time compatibility counterexample, not a runtime JSON-value comparison.

The full historical parser pair and its runtime-dispatched string processing were not built or checked with Alive2. No official before/after benchmark score is claimed.

Run from the project root:

```sh
python3 history-eq/cpp/simdjson/1a195623/check.py
```
