# OpenZeppelin `005a35b0`: `Math.max` and `SignedMath.max`

This sampled performance commit changes only `a >= b ? a : b` to `a > b ? a : b` in the unsigned and signed `max` functions; the third changed file is a changelog. The old revision is `84fafa78329cc04c0e8efbea59faa3d0b7182645`; the new revision is `005a35b02a9469579f86a2ae5bec50882a191eb1`. The four files under `sources/` are byte-identical copies of those historical library files, checked by `prove_max.py`.

**Result: verified equal for both changed functions.** `prove_max.py` first checks that each historical body consists exactly of its corresponding return expression. It then asks Z3 whether the old and new 256-bit results can differ for any two inputs. Both the unsigned and signed inequivalence queries are `UNSAT` (`z3-proof.log`). There is no other executable change in the commit. This is a source-audited bit-vector proof, not a Certora cloud verdict.

The installed Certora EqCheck compiled both historical wrappers and generated locally checked revert/return comparison rules for `maxUint` and `maxInt` (`eqcheck-{uint,int}.log`, generated `.spec` files). `eqcheck.conf` has `compilation_steps_only: true`; it did **not** submit the rules to a Certora prover. The separate `solc` SMTChecker attempt had no usable Z3 4.12 library (`solc-smt.log`), so its exit code is not proof evidence. Z3 4.13.3 was used directly for the bit-vector proof; although its executable came bundled with the local Kuiper package, **Kuiper did not verify this pair**.

No before/after score from an official OpenZeppelin gas benchmark was measured for this historical pair. The commit's performance intent is from its message, not a measured delta here.
