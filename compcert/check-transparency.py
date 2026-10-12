#!/usr/bin/env python3
"""Check observer transparency, including temporary object-name differences."""
import argparse,hashlib,json,re,struct
from pathlib import Path

root=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('--c1',action='store_true');args=p.parse_args()
def elf_sections(path):
    data=path.read_bytes();assert data[:6]==b'\x7fELF\x02\x01'
    offset=struct.unpack_from('<Q',data,40)[0]
    size,count,names_index=struct.unpack_from('<HHH',data,58)
    headers=[struct.unpack_from('<IIQQQQIIQQ',data,offset+i*size) for i in range(count)]
    strings=headers[names_index];names=data[strings[4]:strings[4]+strings[5]]
    return {names[h[0]:].split(b'\0')[0].decode():(h,data[h[4]:h[4]+h[5]] if h[1]!=8 else b'') for h in headers}

checks=[]
for variant in (['baseline','c1-greedy','c1-global','c1-weighted'] if args.c1 else ['baseline','candidate-v2']):
    for suite in ['regression-c','embench','polybench','mibench-evaluation']:
        summary='build-summary.json' if suite=='mibench-evaluation' else 'summary.json'
        observed='measured-c1-baseline' if args.c1 and variant=='baseline' else 'measured-'+variant
        before=root/'results'/variant/suite;after=root/'results'/observed/suite
        b=json.loads((before/summary).read_text());a=json.loads((after/summary).read_text())
        assert [p['name'] for p in b['programs']]==[p['name'] for p in a['programs']]
        for x,y in zip(b['programs'],a['programs']):
            assert x['compiled'] and y['compiled']
            bp=root/x['binary'] if suite=='mibench-evaluation' else before/x['name']/'program'
            ap=root/y['binary'] if suite=='mibench-evaluation' else after/y['name']/'program'
            bx,ay=elf_sections(bp),elf_sections(ap);assert bx.keys()==ay.keys()
            differences=[name for name in bx if bx[name]!=ay[name]]
            # CompCert uses random names for temporary compile-and-link objects.
            # Only those names in the non-loaded ELF string table may differ.
            for name in differences:
                assert name=='.strtab' and not bx[name][0][2]&2,(variant,suite,x['name'],name)
                assert bx[name][0]==ay[name][0]
                normalized=lambda raw:re.sub(rb'compcert[0-9a-f]{6}\.o',b'compcertXXXXXX.o',raw)
                assert normalized(bx[name][1])==normalized(ay[name][1])
            checks.append(dict(variant=variant,suite=suite,program=x['name'],native_sha256=hashlib.sha256(bp.read_bytes()).hexdigest(),observed_sha256=hashlib.sha256(ap.read_bytes()).hexdigest(),all_loadable_sections_identical=True,differing_sections=differences))
report=dict(pass_all=True,comparisons=len(checks),full_elf_identical=sum(not c['differing_sections'] for c in checks),checks=checks)
(root/'results'/('observer-transparency-c1.json' if args.c1 else 'observer-transparency-final.json')).write_text(json.dumps(report,indent=2)+'\n')
print('PASS:',len(checks),'native/observed executable pairs; only temporary object names may differ')
