# `d021c39` `Engine::encode_string` proof boundary

The historical pair is parent `1e8246a889f2b43299279e0c7ebd849dcaa7cb32` and child `d021c39ae782c91d88cf3a76030f3f7b1eed892b`. The old default method executes the encoding body directly; the new method passes `input.as_ref()` to a nested `inner` function with the same body. The original Charon/Aeneas translations are `Estr3Old/Estr3Old.lean` and `Estr3New/Estr3New.lean`; neither typechecks (see `work/d021c39/Estr3{Old,New}-lean.log`).

`Estr3OldFix/Estr3OldFix.lean` and `Estr3NewFix/Estr3NewFix.lean` are copies with the same two manual changes on each side:

1. The opaque `ChunkedEncoder.encode` return type includes the backward function already expected by the generated call site.
2. The `Sink.write_encoded_bytes` instance wraps the generated triple-returning implementation and applies its backward function to produce the pair required by the trait field.

Both repaired files typecheck. `EncodeStringProof.lean` then proves `encode_string_equiv` without `sorry` or `sorryAx`; the check output is `work/d021c39/encode-string-repaired-proof.log`. The theorem assumes corresponding engine configuration and padding fields **and** a relation between the two opaque `ChunkedEncoder.encode` calls. It proves equality of the repaired models only under those assumptions. The semantic fidelity of the two manual repairs and the encoder relation have not been proved, so the strict historical verdict remains `UNSUPPORTED`, and this is not a whole-commit equivalence result. No official benchmark score is attached to this case.

Recheck from `history-eq/rust/rust-base64/lean`:

```sh
lake env lean -o .lake/build/lib/lean/Cd021c39/Estr3OldFix/Estr3OldFix.olean Cd021c39/Estr3OldFix/Estr3OldFix.lean
lake env lean -o .lake/build/lib/lean/Cd021c39/Estr3NewFix/Estr3NewFix.olean Cd021c39/Estr3NewFix/Estr3NewFix.lean
lake env lean Cd021c39/EncodeStringProof.lean
```
