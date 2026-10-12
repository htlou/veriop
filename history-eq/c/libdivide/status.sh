#!/bin/bash
cd /srv/home/hantaolou/code/veriop/history-eq/c/libdivide
for f in */*.summary; do d=${f%.summary}; if [ -f $d/result.json ]; then python3 -c "
import json;d=json.load(open('$d/result.json'));print('$d', d['verdict'], 'b=%s'%d.get('bounded'), ' '.join(k.replace('target_','')+':'+v['verdict'] for k,v in d.get('functions',{}).items()) or d.get('reason',''))" ; else echo "$d RUNNING"; fi; done 2>&1 | cut -c1-250
