from pathlib import Path
import hashlib,json,re,subprocess
out=Path(__file__).resolve().parent
root=out.parents[2]
binary=root/'results/search/xxhash_sharedmix_seed/bench-inline/old'
assert hashlib.sha256(binary.read_bytes()).hexdigest()=='fa2ac966547ad521fc61b34527949e8ac6fbcd6c712226f8af7be5e874ce6992', 'Instruction offsets are tied to this audited binary.'
dis=subprocess.check_output(['objdump','-d','--disassemble=hash',str(binary)],text=True)
(out/'original.asm').write_text(dis)
base=int(re.search(r'^([0-9a-f]+) <hash>:',dis,re.M).group(1),16)
instructions=[]
for line in dis.splitlines():
 fields=line.split('\t')
 if len(fields)>=3 and fields[-1].strip():
  address=int(fields[0].strip().rstrip(':'),16)-base
  instructions.append((address,fields[-1].strip()))
regions={'9to16':[(0x6,0x58)],'4to8':[(0x5f,0xb4)],'1to3':[(0xba,0x108),(0x4a,0x58)]}
report=dict(binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),cpu_model='znver4',scope='Static estimates for isolated arithmetic paths, not measured runtime or a speedup bound. Calls, return, dispatch and harness excluded; fresh argument registers per iteration.',paths={})
for name,ranges in regions.items():
 body=['movq %r14, %rdi','movq %r15, %rsi']
 for lo,hi in ranges:
  body += [ins for off,ins in instructions if lo<=off<hi and not ins.startswith(('j','ret'))]
 source=out/(name+'.s');source.write_text('.text\n'+''.join('  '+x+'\n' for x in body))
 cmd=['llvm-mca','-mcpu=znver4','-iterations=100','-bottleneck-analysis','-timeline','-timeline-max-iterations=2','-timeline-max-cycles=80',str(source)]
 p=subprocess.run(cmd,capture_output=True,text=True,check=True);(out/(name+'.txt')).write_text(p.stdout+p.stderr)
 metrics={key:float(re.search(re.escape(key)+r':\s*([0-9.]+)',p.stdout).group(1)) for key in ['Total Cycles','Total uOps','Block RThroughput']}
 report['paths'][name]=dict(command=cmd,instruction_count=len(body),**metrics)
 print(name,metrics,flush=True)
(out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
