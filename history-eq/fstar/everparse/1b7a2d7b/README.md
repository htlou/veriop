# EverParse `1b7a2d7b`: constant-size parser pairs

**Verdict: UNKNOWN for before/after behavior.** Parent and child IDs, exact changed Git blobs, and the archived [diff](../source-screening/1b7a2d7b.source.diff) are recorded in the [staging manifest](staging-manifest.json). The commit changes six F* 3D-frontend files to represent total compile-time constant-size pairs and alter their generated interpreter target.

The shared [staging script](../c4139dc2/prepare.py) staged the six exact historical changed files on each side. Of 76 historical 3D F* files per side, **40 are exact**, 35 require newer fallbacks, and one historical `FStarC.Getopt.fsti` is unavailable even as a fallback; 16 newer extra files complete the local module search path. This is not the original 2024 dependency tree.

The exact [diff](../source-screening/1b7a2d7b.source.diff) exposes a specific relation to test once the historical frontend can run: the new `parse_typ` branch for `T_pair t1 t2` builds both child parsers from `t1`, including the one named `second`. A pair with distinct component types would therefore receive a second parser built from the first type on that branch. The old representation used `T_app tuple2` and followed a different branch, so this source observation alone is not an old/new output counterexample. The commit remains `UNKNOWN`.

F* 2026.03.24~dev with `--force` verifies each exact historical `InterpreterTarget.fst` target ([parent](fstar-interpretertarget-old.log), [child](fstar-interpretertarget-new.log)). It cannot verify either historical `TranslateForInterpreter.fst` in this mixed tree: both fail with incomplete pattern coverage ([parent](fstar-translate-old.log), [child](fstar-translate-new.log)). Both `Target.fst` checks fail because the newer fallback `Ast.Pointer` constructor has a different arity ([parent](fstar-target-old.log), [child](fstar-target-new.log)). These are dependency-compatibility failures, not counterexamples. The successful module checks establish separate F* validity only; no relation between generated parser programs has been proved, and no official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 -B history-eq/fstar/everparse/c4139dc2/prepare.py 1b7a2d7b
benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe --include /tmp/veriop-everparse-1b7-old --include /tmp/veriop-everparse-1b7-old/prelude --force /tmp/veriop-everparse-1b7-old/InterpreterTarget.fst
benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe --include /tmp/veriop-everparse-1b7-new --include /tmp/veriop-everparse-1b7-new/prelude --force /tmp/veriop-everparse-1b7-new/InterpreterTarget.fst
```
