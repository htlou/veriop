#!/usr/bin/env python3
"""Check the archive bytes; this is not a new equivalence or timing run."""
import hashlib,json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
manifest=json.loads((root/'submission/files-sha256.json').read_text())
for name,digest in manifest.items():
    p=root/name
    assert p.is_file(),name
    assert hashlib.sha256(p.read_bytes()).hexdigest()==digest,name
print(f'PASS: {len(manifest)} archived files match SHA-256 manifest')
