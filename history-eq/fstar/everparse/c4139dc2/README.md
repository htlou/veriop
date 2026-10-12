# EverParse `c4139dc2`: avoid needless coercion reads

**Verdict: UNKNOWN for before/after behavior.** Parent `bb67a92bbf53228215a3c6621d08ae4a93c439dd`; child `c4139dc250ffe7d875ee0693a253aa50f11cdd22`. The commit changes seven F* 3D-frontend modules. In `CoerceProbes.fst`, the old `optimize_coercion` branch for a read immediately followed by a write returns `admit()`. The child represents that operation as `Probe_action_copy_and_return`; when the bound value is unused, it replaces the action with a byte copy. The [exact diff](../source-screening/c4139dc2.source.diff) shows these changes.

[prepare.py](prepare.py) stages all locally available historical 3D F* source blobs on both sides and verifies that the seven changed files and archived diff are exact. The [manifest](staging-manifest.json) records **55 exact historical F* files, 33 newer fallback files, and six newer extra modules per side**. Those fallback dependencies are a material limit on historical fidelity.

F* 2026.03.24~dev, invoked with `--force` on each exact historical `CoerceProbes.fst` target, exits successfully and reports `Verified module: CoerceProbes` and `All verification conditions discharged successfully` for the [parent](fstar-old.log) and [child](fstar-new.log). This shows that each target passes its own F* verification conditions in the staged environment. It does **not** compare the two programs or prove that the old `admit()` branch has the same behavior as the new byte-copy branch. No relational theorem, counterexample, or official before/after benchmark score was produced.

Reproduce from the project root:

```sh
python3 -B history-eq/fstar/everparse/c4139dc2/prepare.py
benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe --include /tmp/veriop-everparse-c413-old --include /tmp/veriop-everparse-c413-old/prelude --force /tmp/veriop-everparse-c413-old/CoerceProbes.fst
benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe --include /tmp/veriop-everparse-c413-new --include /tmp/veriop-everparse-c413-new/prelude --force /tmp/veriop-everparse-c413-new/CoerceProbes.fst
```
