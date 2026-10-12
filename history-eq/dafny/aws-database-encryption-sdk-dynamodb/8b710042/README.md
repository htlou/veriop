# `8b710042`: slice-to-cursor helper rewrites

The sampled performance commit `8b710042e1bc0516b70a9f9674edab7f775d236f` replaces many recursive sequence slices with cursor positions in `FilterExpr.dfy`. **Selected label: `EQUIV_PARTIAL`; whole-commit verdict: `UNKNOWN`.** Two source-audited helper rewrites, `ExtractAttributes2` and `RemoveCommonPrefix`, are proved equal at their entry points; the changed tokenizer, parser, other helpers, and tests are outside this proof.

[`source-scoped.diff`](source-scoped.diff) records the exact historical `FilterExpr.dfy` change. [`slice_cursor_equiv.dfy`](slice_cursor_equiv.dfy) copies the two control flows in reduced form. It groups actual token constructors by the predicates these helpers inspect (special, attribute, other), and quantifies over an arbitrary shared attribute-name resolver; thus it does not assume a particular expression-name map. It proves by induction that an old call on a suffix equals a new call on the full sequence at the corresponding cursor. The theorem covers all token/string sequences whose lengths fit the `uint64` cursor, matching the optimized code's memory-size requirement. [Dafny 4.10](dafny.log) reports `11 verified, 0 errors`.

This local proof does not establish whole-commit equivalence or an official benchmark delta. Reproduce from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/8b710042/slice_cursor_equiv.dfy
```
