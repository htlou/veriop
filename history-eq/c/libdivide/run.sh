#!/bin/bash
# usage: run.sh <short> <unitdir-name> <wrapper> [extra alive_check args...]
D=/srv/home/hantaolou/code/veriop/history-eq/c/libdivide
s=$1; u=$2; w=$3; shift 3
cd $D/$s
python3 /srv/home/hantaolou/code/veriop/history-eq/tools/alive_check.py --out $D/$s/$u --old-inc $D/$s/old --new-inc $D/$s/new --wrapper $D/$s/$w "$@" > $D/$s/$u.summary 2>&1
echo "== $s/$u: $(python3 -c "import json;d=json.load(open('$D/$s/$u/result.json'));print(d['verdict'], 'bounded=',d.get('bounded'), {k:v['verdict'] for k,v in d.get('functions',{}).items()}, d.get('reason',''))" 2>&1)"
