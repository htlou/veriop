#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
variant=${1:-baseline}
case "$variant" in baseline|candidate|candidate-v2|c1-greedy|c1-global|c1-weighted|c3-pgo|c4-inline) ;; *) echo 'Unknown compiler variant' >&2; exit 2;; esac
repo="$COMPCERT_WORK/repos/$variant"
python3 - "$repo" "$variant" <<'PY'
import hashlib,json,subprocess,sys
from pathlib import Path
repo=Path(sys.argv[1]); root=repo.parents[1]
pin=json.loads((root/'pins.json').read_text())['compcert']['commit']
assert subprocess.check_output(['git','-C',str(repo),'rev-parse','HEAD'],text=True).strip()==pin
changed=subprocess.check_output(['git','-C',str(repo),'diff','--name-only','HEAD'],text=True).splitlines()
allowed={'backend/Linearizeaux.ml'} if sys.argv[2]!='baseline' else set()
if sys.argv[2].startswith('c1-'):allowed.add('backend/LayoutSearch.ml')
if sys.argv[2]=='c3-pgo':allowed.update(['backend/LayoutSearch.ml','backend/PgoLayout.ml'])
if sys.argv[2]=='c4-inline':allowed={'backend/Inliningaux.ml'}
assert set(changed)<=allowed,changed
untracked=subprocess.check_output(['git','-C',str(repo),'ls-files','--others','--exclude-standard'],text=True).splitlines()
assert set(untracked)<=allowed,untracked
for name,digest in json.loads((root/'results/baseline-proof-source-sha256.json').read_text()).items():
 assert hashlib.sha256((repo/name).read_bytes()).hexdigest()==digest,name
assert not list(repo.rglob('*.vo')), 'Use a fresh checkout for the clean proof build'
PY
cd "$repo"
./configure -prefix "$COMPCERT_WORK/env/$variant" x86_64-linux
make -j16 all
make check-admitted
make check-proof
./ccomp -version
sha256sum ccomp backend/Linearize.vo backend/Linearizeproof.vo driver/Compiler.vo driver/Complements.vo
