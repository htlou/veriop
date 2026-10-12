"""Profiling-only assembly counters; never used in native production code."""
import hashlib,json,re,subprocess
from pathlib import Path

def assemble(prefix,obj):
    prefix=Path(prefix);obj=Path(obj)
    edges=[json.loads(l) for l in prefix.with_suffix('.edges.json').read_text().splitlines()]
    assert sorted(e['counter'] for e in edges)==list(range(len(edges)))
    symbol='__veriop_counts_'+hashlib.sha256(str(prefix).encode()).hexdigest()[:20]
    source=prefix.with_suffix('.s').read_text();seen=[]
    def replace(match):
        index=int(match[1]);seen.append(index)
        # Counter writes use their own BSS; push/pop preserves flags, registers and RSP.
        return f'\tpushfq\n\tincq {symbol}+{index*8}(%rip)\n\tpopfq'
    source=re.sub(r'^\s*# annotation: "VERIOP_EDGE_(\d+)"\s*$',replace,source,flags=re.M)
    reachable={}
    for g in map(json.loads,prefix.with_suffix('.graphs.json').read_text().splitlines()):
        successors={pc:targets for pc,_,targets in g['nodes']};visited=set();todo=[g['entry']]
        while todo:
            pc=todo.pop()
            if pc not in visited:visited.add(pc);todo.extend(successors.get(pc,[]))
        reachable[g['key']]=visited
    expected={e['counter'] for e in edges if e['source']==0 or e['source'] in reachable[e['key']]}
    assert len(seen)==len(set(seen)) and set(seen)==expected,('missing/duplicated reachable edge markers',prefix)
    path=prefix.with_suffix('.instrumented.s');path.write_text(source)
    runtime=prefix.with_suffix('.counters.c')
    metadata=',\n'.join('{"%s",%d,%d,%d}'%(e['key'],e['source'],e['target'],e['counter']) for e in edges) or '{"",0,0,0}'
    runtime.write_text('''#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t %s[%d];
static const struct {const char *key;unsigned from,to,index;} edges[]={%s};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<%d;i++) fprintf(f,"%%s %%u %%u %%llu\\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)%s[edges[i].index]);
 if(fclose(f)) abort();
}
'''%(symbol,max(1,len(edges)),metadata,len(edges),symbol))
    asm_obj=prefix.with_suffix('.asm.o');runtime_obj=prefix.with_suffix('.counters.o')
    for cmd in [['gcc','-c',str(path),'-o',str(asm_obj)],['gcc','-O2','-c',str(runtime),'-o',str(runtime_obj)],['ld','-r',str(asm_obj),str(runtime_obj),'-o',str(obj)]]:
        subprocess.run(cmd,check=True)
    return edges
