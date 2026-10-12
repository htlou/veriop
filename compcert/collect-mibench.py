#!/usr/bin/env python3
"""Attribute checked Linear records using actual link inputs and archive members."""
import argparse,collections,json,re,shutil,subprocess
from pathlib import Path

root=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('variant');a=p.parse_args()
out=root/'results'/a.variant/'mibench-evaluation'
summary=json.loads((out/'build-summary.json').read_text());work=Path(summary['work'])
for row in summary['programs']:
    assert row['compiled']
    project=out/row['project'].replace('/','-')
    build=json.loads((project/'build.json').read_text());calls=build['observations']
    binary=(root/row['binary']).resolve()
    def target(call):
        args=call['args'];cwd=Path(call['cwd'])
        if '-o' in args:return (cwd/args[args.index('-o')+1]).resolve()
        if '-c' in args:
            assert len(call['sources_sha256'])==1
            return Path(next(iter(call['sources_sha256']))).with_suffix('.o').resolve()
        return (cwd/'a.out').resolve()
    links=[c for c in calls if c['link'] and c['returncode']==0 and target(c)==binary]
    assert len(links)==1,(row['name'],links)
    link=links[0];linkmap=(root/link['record']).with_suffix('.map').read_text()
    objects={target(c):c for c in calls if '-c' in c['args'] and c['returncode']==0 and c['sources_sha256']}
    selected={}
    for name in re.findall(r'^LOAD (\S+\.o)$',linkmap,re.M):
        obj=(Path(link['cwd'])/name).resolve()
        if obj.is_relative_to(work):
            assert obj in objects,('Unmeasured linked object',obj)
            selected[obj]=objects[obj]
    for archive,member in set(re.findall(r'(\S+\.a)\(([^()]+\.o)\)',linkmap)):
        archive=(Path(link['cwd'])/archive).resolve()
        if not archive.is_relative_to(work):continue # Fixed runtime/system libraries.
        member_bytes=subprocess.check_output(['ar','p',str(archive),member])
        matches=[(obj,c) for obj,c in objects.items() if obj.name==member and obj.read_bytes()==member_bytes]
        assert len(matches)==1,('Ambiguous archive member',archive,member,matches)
        obj,call=matches[0]
        # Confirm that the archive really contains this exact compiled object.
        assert member_bytes==obj.read_bytes()
        selected[obj]=call
    chosen=list(selected.values())
    if link['sources_sha256']:chosen.append(link) # Compile-and-link invocations.
    assert chosen,row['name']
    chosen.sort(key=lambda c:sorted(str(Path(s).relative_to(work)) for s in c['sources_sha256']))
    pd=out/row['name'];provenance=[];function_count=0
    for i,call in enumerate(chosen):
        metrics=(root/call['record']).with_suffix('.linear.json');assert metrics.exists(),metrics
        records=[json.loads(line) for line in metrics.read_text().splitlines()]
        counts=collections.Counter(r['function'] for r in records)
        seen=collections.Counter()
        for record in records:
            assert record['validator_pass']
            assert record['Lgoto_count']==sum(e[0]=='goto' for e in record['linear_events'])
            name=record['function'];seen[name]+=1
            if counts[name]>1:
                record['source_function']=name
                record['function']=name+'#'+str(seen[name])
        dest=pd/f'{i:03d}.linear.json'
        content=''.join(json.dumps(r)+'\n' for r in records)
        if dest.exists():assert dest.read_text()==content
        else:dest.write_text(content)
        function_count+=len(records)
        provenance.append(dict(metrics=str(metrics.relative_to(root)),copy=dest.name,sources=[str(Path(s).relative_to(work)) for s in call['sources_sha256']],functions=len(records)))
    content=json.dumps(dict(link_record=link['record'],units=provenance,functions=function_count,scope='Benchmark translation units actually linked; fixed CompCert and system runtime objects excluded.'),indent=2)+'\n'
    path=pd/'attribution.json'
    if path.exists():assert path.read_text()==content
    else:path.write_text(content)
    print(row['name'],len(chosen),'units',function_count,'functions',flush=True)
