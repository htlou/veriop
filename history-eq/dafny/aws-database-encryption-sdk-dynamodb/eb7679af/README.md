# `eb7679af`: `IsWriteable` changes its failure string

The sampled performance commit `eb7679afa9fb6383a76fd71f9e7a4e40bbe53c8a` changes `DynamoDBSupport.IsWriteable` from a function to a method while reducing use of `BigInteger`. **The changed method is unequal on a valid one-attribute input.** This establishes a local semantic difference; it does not verify the other edits in this 22-file commit or measure their performance.

For an item whose only attribute name is `aws_dbe_`, both versions return `Failure`. The old version sorts the singleton bad-key set and applies `StandardLibrary.Join(["aws_dbe_"], "\n")`, yielding `Writing reserved attributes not allowed : aws_dbe_`. The new version enters its inner loop once and appends `keys[i] + "\n"`, yielding `Writing reserved attributes not allowed : aws_dbe_\n`. Its loop also reads `keys[i]` where `j` appears intended, which would repeat the first reserved name when more keys follow; this second issue is not needed for the witness.

[`source-scoped.diff`](source-scoped.diff) records the exact historical `DDBSupport.dfy` change. Both sides pin `submodules/smithy-dafny` to `2f83e28ad9532b24c93d2229476c9a268355d338`; its `StandardLibrary.Join` returns the only member unchanged when given a singleton sequence. [`singleton_counterexample.dfy`](singleton_counterexample.dfy) copies the two error-string paths and the historical `uint64` bound, with one key so the sorting result is determined. Dafny 4.10 proves the old and new strings differ: [`dafny.log`](dafny.log) says `6 verified, 0 errors`. The proof is for this source-audited path, not for the complete SDK or a public API execution.

Reproduce from the project root:

```sh
benchmarks/tools/dafny-4.10.0/dafny/dafny verify history-eq/dafny/aws-database-encryption-sdk-dynamodb/eb7679af/singleton_counterexample.dfy
```

No official before/after benchmark score has been measured for this historical commit.
