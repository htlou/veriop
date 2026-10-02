"""Rebuild the existing stock baselines with matched x86-64-v4 flags."""
from pathlib import Path
import hashlib,json,re,subprocess,sys
trial=Path(__file__).resolve().parent
root=trial.parents[2]
sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial
verify_artifacts();verify_trial(trial)
for bench,symbol,prior in [('bench-inline','hash','loadwide-asserts'),('bench-cli','localXXH3_64b','xxhash_loadlikely')]:
    out=trial/bench
    source=root/'results/search'/prior/bench
    manifest=json.loads((source/'assembly-audit.json').read_text())
    if bench=='bench-inline':
        (out/'stock-driver.c').write_bytes((source/'stock-driver.c').read_bytes())
        commands=[manifest['stock_build_command']]
    else:
        commands=manifest['stock_build_commands']
    commands=[[a.replace(str(source),str(out)).replace('-march=x86-64-v3','-march=x86-64-v4') for a in cmd] for cmd in commands]
    for cmd in commands: subprocess.run(cmd,check=True)
    binary=out/'stock'
    asm=subprocess.check_output(['objdump','-d','--disassemble='+symbol,str(binary)],text=True)
    (out/'stock-callback.s').write_text(asm)
    instructions=[]
    for line in asm.splitlines():
        parts=line.split('\t')
        if len(parts)>=3 and parts[-1].strip():
            instructions.append(' '.join(re.sub(r'\b[0-9a-f]+(?= <)','ADDR',parts[-1]).split()))
    stock=dict(binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),instructions=instructions)
    report=dict(march='x86-64-v4',commands=commands,stock=stock,callbacks={'stock':stock})
    (out/'stock-audit.json').write_text(json.dumps(report,indent=2)+'\n')
    print(bench,'stock x86-64-v4 build complete',flush=True)
