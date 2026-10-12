#!/usr/bin/env bash
# usage: lemma_commit.sh REPO C8 [par]
set -uo pipefail
HE=/srv/home/hantaolou/code/veriop/history-eq
R=$1; C=$2; PAR=${3:-6}
W=$HE/gh/work/$R/$C
for K in kevm-pyk/src/kevm_pyk/kproj/evm-semantics include/kframework .; do [ -f $W/old/$K/evm.md ] && break; done
envfor() { # side -> prints "PLUGIN_SHA KVER"
  python3 - "$R" "$W" "$1" <<'P'
import json,subprocess,sys,re,os
R,W,side=sys.argv[1:4]
m=json.load(open(W+'/meta.json')); rev=m['parent'] if side=='old' else m['commit']
repo=f'/srv/home/hantaolou/code/veriop/benchmarks/repos/{R}'
sha=''
for p in ('deps/plugin','kevm-pyk/src/kevm_pyk/kproj/plugin','src/kontrol/kdist/plugin'):
    o=subprocess.run(['git','-C',repo,'ls-tree',rev,p],capture_output=True,text=True,env={**os.environ,'GIT_NO_LAZY_FETCH':'1'}).stdout.split()
    if o and o[0]=='160000': sha=o[2]; break
kv=''
f=f'{W}/{side}/deps/k_release'
if os.path.exists(f):
    v=open(f).read().strip()
    if v.startswith('5.'): kv=v
print(sha or '-', kv or '-')
P
}
side_build() { # side dirname
  read SHA KV <<<"$(envfor $1)"
  [ "$SHA" = "-" ] && SHA=""; [ "$KV" = "-" ] && KV=""
  [ -f $W/$2/kompile.exit ] || PLUGIN_SHA=$SHA KVER=$KV $HE/tools/gh/k/kompile_def.sh $W/$1/$K $W/$2
}
python3 $HE/tools/gh/k/rulediff.py $W/old/$K $W/new/$K $W/rd > $W/rd/summary.txt
NREM=$(python3 -c "import json;print(sum(1 for r in json.load(open('$W/rd/rules.json'))['removed'] if r.get('claim')))")
NADD=$(python3 -c "import json;print(sum(1 for r in json.load(open('$W/rd/rules.json'))['added'] if r.get('claim')))")
if [ "$NADD" -gt 0 ]; then
  side_build old kold
  [ "$(cat $W/kold/kompile.exit)" = 0 ] && python3 $HE/tools/gh/k/runclaims.py $W/rd/claims.json old $W/kold $W/old/$K --timeout 900 --par $PAR > $W/rd/run-old.txt 2>&1
fi
if [ "$NREM" -gt 0 ]; then
  side_build new knew
  [ "$(cat $W/knew/kompile.exit)" = 0 ] && python3 $HE/tools/gh/k/runclaims.py $W/rd/claims.json new $W/knew $W/new/$K --timeout 900 --par $PAR > $W/rd/run-new.txt 2>&1
fi
echo done > $W/rd/DONE
