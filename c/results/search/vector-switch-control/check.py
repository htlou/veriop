"""Check switch lookup, a wrong entry, and removal of undef/poison fallback."""
from pathlib import Path
import hashlib,json,re,subprocess,sys
out=Path(__file__).resolve().parent
root=out.parents[2];sys.path.insert(0,str(root))
from check import accepted
text=(root/'results/search/xxhash_vectable_split/new.ll').read_text()
allvalues=re.search(r'extractelement <128 x i64> <([^\n]+)>',text).group(1).split(', ')
rows={}
for size,mode in [(4,'valid'),(4,'wrong-entry'),(4,'missing-fallback'),(128,'valid')]:
 vals=allvalues[:size];values=', '.join(vals)
 src=f'''define i64 @src(i32 %input) {{
  %idx = and i32 %input, {size-1}
  %value = extractelement <{size} x i64> <{values}>, i32 %idx
  ret i64 %value
}}
'''
 table=vals.copy()
 if mode=='wrong-entry': table[0]='i64 123'
 tgt=f'''define i64 @tgt(i32 %input) {{
  %idx = and i32 %input, {size-1}
  %stable = freeze i32 %idx
  %safe = and i32 %stable, {size-1}
  switch i32 %safe, label %case0 [
'''+''.join(f'    i32 {i}, label %case{i}\n' for i in range(1,size))+'  ]\n'
 tgt+=''.join(f'case{i}:\n  br label %merge\n' for i in range(size))
 tgt+='merge:\n  %value = phi i64 '+', '.join(f'[ {v.removeprefix("i64 ")}, %case{i} ]' for i,v in enumerate(table))+'\n'
 tgt+=f'''  %same = icmp eq i32 %idx, %stable
  %fallback = extractelement <{size} x i64> <{values}>, i32 %idx
  %result = select i1 %same, i64 %value, i64 %fallback
  ret i64 %{'value' if mode=='missing-fallback' else 'result'}
}}
'''
 name=f'{size}-{mode}';path=out/(name+'.ll');path.write_text(src+tgt)
 cmd=[str(root/'build/alive2/alive-tv'),'--bidirectional','--always-verify','--fail-src-ub','--smt-to=15000',str(path)]
 p=subprocess.run(cmd,capture_output=True,text=True,timeout=120);log=p.stdout+p.stderr;(out/(name+'.log')).write_text(log)
 # Single-module src/tgt mode omits the multi-function summary counters.
 ok=p.returncode==0 and log.count('These functions seem to be equivalent!')==1 and 'ERROR:' not in log
 assert ok if mode=='valid' and size==4 else (not ok if mode!='valid' else True)
 rows[name]=dict(equivalent=ok,command=cmd,source_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),log_sha256=hashlib.sha256(log.encode()).hexdigest())
 (out/'controls.json').write_text(json.dumps(rows,indent=2)+'\n');print(name,ok,flush=True)
