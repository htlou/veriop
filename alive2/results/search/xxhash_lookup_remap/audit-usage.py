"""Check proof artifacts, stock callbacks, upstream CLI files, and timed binaries."""
from pathlib import Path
import hashlib,json,re,subprocess,sys
trial=Path(__file__).resolve().parent;root=trial.parents[2];sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial
verify_artifacts();verify_trial(trial)
for bench,symbol,stock_file in [('bench-inline-usage','hash','loadwide-asserts/bench-inline/assembly-audit.json'),('bench-cli-usage','localXXH3_64b','xxhash_loadlikely/bench-cli/assembly-audit.json')]:
 out=trial/bench;stock_path=root/'results/search'/stock_file;stock=json.loads(stock_path.read_text())
 expected=stock['stock']['instructions'] if bench=='bench-inline-usage' else stock['callbacks']['stock']['instructions']
 expected=[' '.join(s.replace('<stock_hash','<hash').split()) for s in expected]
 callbacks={}
 for variant in ('old','new'):
  binary=out/variant;asm=subprocess.check_output(['objdump','-d','--disassemble='+symbol,str(binary)],text=True)
  (out/(variant+'-callback.s')).write_text(asm)
  instructions=[]
  for line in asm.splitlines():
   parts=line.split('\t')
   if len(parts)>=3 and parts[-1].strip(): instructions.append(' '.join(re.sub(r'\b[0-9a-f]+(?= <)','ADDR',parts[-1]).split()))
  assert instructions and not any('target_0to16' in s for s in instructions)
  callbacks[variant]=dict(binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),instructions=instructions)
 assert callbacks['old']['instructions']==expected
 raw=json.loads((out/'raw.json').read_text()) if (out/'raw.json').exists() else []
 for row in raw: assert callbacks[row['variant']]['binary_sha256']==row['binary_sha256']
 report=dict(stock_audit=str(stock_path),stock_matches_old=True,callbacks=callbacks,raw_records_checked=len(raw),normalization='Normalize whitespace and absolute branch destinations; retain symbols and relative targets.')
 if bench=='bench-cli-usage':
  build=json.loads((out/'build.json').read_text())
  for name,digest in build['cli_source_sha256'].items():
   data=(out/'upstream/cli'/name).read_bytes()
   assert data==(root/'repos/xxHash/cli'/name).read_bytes()
   assert hashlib.sha256(data).hexdigest()==digest
  report['unchanged_cli_files']=len(build['cli_source_sha256'])
 (out/'assembly-audit.json').write_text(json.dumps(report,indent=2)+'\n')
 print(bench,'PASS stock callback, full inlining,',len(raw),'recorded binary hashes',flush=True)

# These are whole-process diagnostics, not corrections to benchmark results.
import statistics
for bench in ['bench-inline-usage', 'bench-cli-usage']:
 out=trial/bench
 if not (out/'raw.json').exists(): continue
 raw=json.loads((out/'raw.json').read_text())
 digest=hashlib.sha256((out/'runner.py').read_bytes()).hexdigest()
 fractions={v:[] for v in ['old','new']}
 for row in raw:
  assert row['runner_sha256']==digest
  u=row['process_usage']
  assert u['wall_seconds']>0 and u['user_seconds']+u['system_seconds']>0
  assert u['user_seconds']>=0 and u['system_seconds']>=0
  assert u['voluntary_switches']>=0 and u['involuntary_switches']>=0
  fractions[row['variant']].append((u['user_seconds']+u['system_seconds'])/u['wall_seconds'])
 result=dict(records=len(raw),runner_sha256=digest,
  scope='Whole-process CPU/wall ratio; includes startup and I/O. Does not isolate scheduling, frequency, SMT sharing or cache effects. Reported benchmark speedups are unadjusted.',
  cpu_wall_ratio={v:dict(median=statistics.median(a),minimum=min(a),maximum=max(a)) for v,a in fractions.items()},
  involuntary_switches=sum(r['process_usage']['involuntary_switches'] for r in raw))
 (out/'usage-audit.json').write_text(json.dumps(result,indent=2)+'\n')
 print(bench,'PASS process diagnostics and runner hashes',result['cpu_wall_ratio'],flush=True)
