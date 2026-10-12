#!/usr/bin/env python3
"""Count preserved baseline internal-chain adjacencies in actual node orders."""
import collections,json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
def functions(path):
    return {r['function']:r for r in map(json.loads,path.read_text().splitlines())}
def adjacent(row):
    nodes=[e[1] for e in row['linear_events'] if e[0]=='label']
    return set(zip(nodes,nodes[1:]))
rows=[]
for suite in ['embench','mibench-evaluation','polybench']:
    base=root/'results/measured-c1-baseline'/suite
    for policy in ['greedy','global','weighted']:
        variant='measured-c1-'+policy;total=0;split=0;details=[]
        for path in sorted(base.glob('*/*.linear.json')):
            after=functions(root/'results'/variant/suite/path.relative_to(base))
            for name,before in functions(path).items():
                predecessors=collections.Counter(v for _,_,targets in before['cfg'] for v in targets)
                adjacency=adjacent(before)
                internal={(u,targets[0]) for u,kind,targets in before['cfg'] if kind=='branch'
                    and len(targets)==1 and predecessors[targets[0]]==1
                    and targets[0]!=before['entry'] and (u,targets[0]) in adjacency}
                broken=internal-adjacent(after[name]);total+=len(internal);split+=len(broken)
                if broken:details.append(dict(program=path.parent.name,function=name,broken_edges=[list(e) for e in sorted(broken)]))
        rows.append(dict(suite=suite,variant=variant,baseline_internal_chain_edges=total,split_edges=split,functions=details))
path=root/'results/c1-chain-splitting.json'
if path.exists():assert json.loads(path.read_text())==rows
else:path.write_text(json.dumps(rows,indent=2)+'\n')
print('PASS: reproduced internal-chain edge counts and all split-edge records')
