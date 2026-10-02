"""Check proof artifacts, stock callbacks, upstream CLI files, and timed binaries."""
from pathlib import Path
import hashlib,json,re,subprocess,sys
trial=Path(__file__).resolve().parent;root=trial.parents[2];sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial
verify_artifacts();verify_trial(trial)
strategy=root/'results/search/alive2-keymix-portfolio'
build=json.loads((strategy/'build.json').read_text())
controls=json.loads((strategy/'controls-v2.json').read_text())
assert len(controls)==5 and all(r['passed'] for r in controls)
for file,key in [('alive-tv','checker_sha256'),('solver.cpp','source_sha256'),('solver.patch','patch_sha256')]:
 assert hashlib.sha256((strategy/file).read_bytes()).hexdigest()==build[key]
assert hashlib.sha256((root/'build/alive2/alive-tv').read_bytes()).hexdigest()==build['base_checker_sha256']
for file,digest in build['base_link_inputs'].items():
 assert hashlib.sha256(Path(file).read_bytes()).hexdigest()==digest
for manifest in [trial/'trial.json',trial/'length-proof/summary.json']:
 assert json.loads(manifest.read_text())['checker_sha256']==build['checker_sha256']
print('PASS isolated solver-strategy hashes, five controls, and unchanged pinned checker/link inputs',flush=True)
for bench,symbol,stock_file in [('bench-inline','hash','xxhash_vecrotate_v4/bench-inline/stock-audit.json'),('bench-cli','localXXH3_64b','xxhash_vecrotate_v4/bench-cli/stock-audit.json')]:
 out=trial/bench;stock_path=root/'results/search'/stock_file;stock=json.loads(stock_path.read_text())
 assert stock['march']=='x86-64-v4'
 expected=stock['stock']['instructions'] if bench=='bench-inline' else stock['callbacks']['stock']['instructions']
 stock_binary=stock_path.parent/'stock'
 assert hashlib.sha256(stock_binary.read_bytes()).hexdigest()==stock['stock']['binary_sha256']
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
 if bench=='bench-cli':
  build=json.loads((out/'build.json').read_text())
  for name,digest in build['cli_source_sha256'].items():
   data=(out/'upstream/cli'/name).read_bytes()
   assert data==(root/'repos/xxHash/cli'/name).read_bytes()
   assert hashlib.sha256(data).hexdigest()==digest
  report['unchanged_cli_files']=len(build['cli_source_sha256'])
 (out/'assembly-audit.json').write_text(json.dumps(report,indent=2)+'\n')
 print(bench,'PASS stock callback, full inlining,',len(raw),'recorded binary hashes',flush=True)
