#!/usr/bin/env python3
import gzip,hashlib,json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
for experiment in ['pairs-callchain','pairs-unroll8-exact']:
    for item in json.loads((root/'aeneas/results'/experiment/'build.json').read_text()).values():
        p=root/item['binary']
        data=gzip.decompress(Path(str(p)+'.gz').read_bytes())
        assert hashlib.sha256(data).hexdigest()==item['binary_sha256'],p
        p.write_bytes(data);p.chmod(0o755)
        print('PASS',p.relative_to(root))
