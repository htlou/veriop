"""Audit proved component assembly, stock benchmark loops, and measured binaries."""
import hashlib,json,re,subprocess,sys
from pathlib import Path
out=Path(__file__).resolve().parent
root=out.parents[2]
sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial
verify_artifacts();verify_trial(out)

def instructions(binary,symbol):
    text=subprocess.check_output(['objdump','-d','--no-show-raw-insn','--disassemble='+symbol,str(binary)],text=True)
    lines=[]
    for line in text.splitlines():
        m=re.match(r'^\s*[0-9a-f]+:\s+(.*)$',line)
        if m:
            ins=' '.join(re.sub(r'\b[0-9a-f]+(?= <)','ADDR',m[1]).split())
            if 'nop' not in ins: lines.append(ins)
    assert lines
    return lines

report={'components':{},'loops':{},'benchmarks':{}}
for bits in [32,64]:
    parent=root/'results/search/libdivide_hybrid/new.o'
    symbol=f'target_u{bits}'
    actual=instructions(out/'new.o',symbol)
    prior=instructions(parent,symbol)
    assert len(actual)<len(prior)
    report['components'][str(bits)]={'parent':str(parent),'old_instructions':prior,'new_instructions':actual,'old_count':len(prior),'new_count':len(actual)}
for bits,code in [(32,'j'),(64,'m')]:
    symbol=f'_Z12sum_dividersI{code}St6vectorIN9libdivide7dividerI{code}LNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_'
    original=instructions(out/'bench/old',symbol)
    assert original==instructions(root/'build/bench/libdivide_stock_varying',symbol)
    optimized=instructions(out/'bench/new',symbol)
    assert not any(re.match(r'call',s) for s in original+optimized)
    report['loops'][str(bits)]={'stock_matches_old':True,'no_calls':True,'old':original,'new':optimized}
for bench in ['bench','bench-fixed']:
    rows=json.loads((out/bench/'raw.json').read_text())
    hashes={v:hashlib.sha256((out/bench/v).read_bytes()).hexdigest() for v in ['old','new']}
    for r in rows: assert r['binary_sha256']==hashes[r['variant']]
    assert len(rows)==10
    report['benchmarks'][bench]={'records_checked':len(rows),'binary_sha256':hashes}
report['benchmark_source_sha256']=hashlib.sha256((root/'repos/libdivide/test/benchmark_branchfree.cpp').read_bytes()).hexdigest()
(out/'assembly-audit.json').write_text(json.dumps(report,indent=2)+'\n')
print('PASS shorter helpers, stock hot loops, no calls, and all 20 recorded binary hashes')

comparisons={}
for bench in ['bench','bench-fixed']:
    directory=out/(bench+'-vs-parent')
    records=json.loads((directory/'raw.json').read_text())
    scope=json.loads((directory/'scope.json').read_text())
    parent=root/'results/search/libdivide_hybrid'
    assert (parent/bench/'harness.ll').read_bytes()==(out/bench/'harness.ll').read_bytes()
    for row in records:
        binary=(parent if row['variant']=='parent' else out)/bench/'new'
        assert row['command'][0]==str(binary)
        assert hashlib.sha256(binary.read_bytes()).hexdigest()==row['binary_sha256']==scope['binary_sha256'][row['variant']]
    assert len(records)==10
    comparisons[bench]=dict(records_checked=len(records),identical_harness_ir=True)
(out/'parent-comparison-audit.json').write_text(json.dumps(comparisons,indent=2)+'\n')
print('PASS identical parent/candidate drivers and all 20 comparison binary hashes')
