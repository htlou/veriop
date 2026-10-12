#!/usr/bin/env python3
"""Freeze component removals before looking at the MiBench holdout."""
import hashlib,json,shutil,subprocess
from pathlib import Path

root=Path(__file__).resolve().parent
source=root/'repos/candidate-v2/backend/Linearizeaux.ml'
original=source.read_text()
changes={
 'no-successor-move':('move_after x y; move_after prev.(y) x','move_after prev.(y) x'),
 'no-predecessor-move':('move_after x y; move_after prev.(y) x','move_after x y'),
 'one-pass':('    done\n  done;', '    done;\n    changed := false\n  done;'),
 'no-cost-guard':('if jump_cost f candidate < jump_cost f baseline\n  then candidate else baseline','candidate'),
}
frozen=root/'results/frozen/final-candidate.json'
assert not frozen.exists(),'Never replace the pre-holdout freeze'
variants={}
for name,(before,after) in changes.items():
    assert original.count(before)==1
    variant='ablation-'+name
    patch=root/'patches'/(variant+'.ml')
    patch.write_text(original.replace(before,after))
    variants[variant]={'source':str(patch.relative_to(root)),'sha256':hashlib.sha256(patch.read_bytes()).hexdigest()}
frozen.write_text(json.dumps({
 'candidate':'candidate-v2', 'candidate_source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
 'candidate_patch':'patches/local-adjacency-v2.patch',
 'ablations':variants,
 'holdout_status':'MiBench support set frozen; no MiBench layout metrics collected or inspected.',
 'aggregation':'Report all 12 accepted executables; also report 11 workload executables separately from the bftest companion correctness test. No supported executable may be excluded from correctness gates.',
},indent=2)+'\n')
for variant,record in variants.items():
    dst=root/'repos'/variant
    assert not dst.exists()
    shutil.copytree(root/'repos/measured-candidate-v2',dst,ignore=shutil.ignore_patterns('.git','test'),symlinks=True)
    shutil.copy2(root/record['source'],dst/'backend/Linearizeaux.ml')
    with (root/'logs'/('build-'+variant+'.log')).open('w') as log:
        subprocess.run(['make','ccomp'],cwd=dst,stdout=log,stderr=subprocess.STDOUT,check=True)
    print('Built',variant,flush=True)
