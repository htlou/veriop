#!/usr/bin/env python3
"""One bounded leaf-inlining experiment, independent of C1/C3 layout."""
import hashlib
import json
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[1]
base = root / 'repos/baseline'
repo = root / 'repos/c4-inline'
assert not repo.exists()
subprocess.run(['git', 'clone', '--shared', str(base), str(repo)], check=True)
path = repo / 'backend/Inliningaux.ml'
source = path.read_text()
helper = '''(* Bounded extra opportunity under the existing verified inliner. *)
let tiny_leaf io id f =
  let calls = call_count id io in
  if calls < 1 || calls > 4 || address_taken id io ||
     not (Camlcoq.Z.eq f.fn_stacksize Camlcoq.Z.zero) then false else
  let size, leaf = PTree.fold (fun _ instr (n, leaf) ->
    (n + 1, leaf && (match instr with Icall _ | Itailcall _ -> false | _ -> true)))
    f.fn_code (0, true) in
  leaf && size <= 12

'''
source = source.replace('let should_inline (io:', helper + 'let should_inline (io:')
source = source.replace('| C2C.No_specifier -> static_called_once id io',
                        '| C2C.No_specifier -> static_called_once id io || tiny_leaf io id f')
path.write_text(source)
patch = subprocess.check_output(['git', 'diff', 'HEAD'], cwd=repo)
(root / 'patches/c4-inline.patch').write_bytes(patch)
record = {'candidate':'c4-inline', 'baseline':'original CompCert, no C1/C3 layout',
          'source_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
          'patch_sha256':hashlib.sha256(patch).hexdigest(),
          'rule':'Additional unspecified leaf functions: <=12 RTL instructions, 1..4 direct call sites, zero local stack, address not taken. Preserve explicit noinline and existing inline decisions.',
          'evaluation':'Full official Embench speed and size. Freeze before candidate timing; no score-directed threshold sweep.',
          'correctness':'Unchanged verified Inlining pass, Inliningproof and Compiler theorem; all original Coq sources unchanged.',
          'size_policy':'Report official size and every program text change; no speed claim if repeated official scores do not show an improvement. This is a separate experiment, not a modification of the frozen C3 gate.'}
(root / 'results/frozen/c4-inline.json').write_text(json.dumps(record, indent=2) + '\n')
print('Frozen C4 tiny-leaf candidate')
