#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

source_file="$VERIOP_BENCH_ROOT/repos/scion/pkg/slayers/path/scion/base.go"
model="$VERIOP_BENCH_ROOT/gobra/scion/PathIndex.gobra"
python3 - "$source_file" "$model" <<'PY'
from pathlib import Path
import re
import sys

source, model = (Path(path).read_text() for path in sys.argv[1:])
for name in ('Base', 'MetaHdr'):
    pattern = rf'(?ms)^type {name} struct \{{.*?^\}}'
    a, b = (re.search(pattern, text) for text in (source, model))
    assert a and b, f'missing {name} declaration'
    def fields(decl):
        lines = (line.strip() for line in decl.splitlines())
        return ''.join(line for line in lines if line and not line.startswith('//'))
    assert fields(a.group()) == fields(b.group()), f'{name} fields differ from pinned source'

pattern = r'(?ms)^func \(s \*Base\) infIndexForHF\(hf uint8\) (?:uint8|\(res uint8\)) \{.*?^\}'
a, b = (re.search(pattern, text) for text in (source, model))
assert a and b and a.group().split('{', 1)[1] == b.group().split('{', 1)[1], \
    'Gobra method body differs from pinned SCION source'
PY

log="$VERIOP_BENCH_ROOT/logs/scion-path-gobra.log"
timeout 90s java -Xss128m -jar "$VERIOP_BENCH_ROOT/tools/gobra/target/scala-2.13/gobra.jar" \
  -i "$model" > "$log" 2>&1
rg -q 'Gobra found 0 errors\.' "$log"
printf 'Pinned SCION path segment-index method: source audit and Gobra contracts passed.\n'
