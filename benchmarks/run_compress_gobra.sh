#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

source_file="$VERIOP_BENCH_ROOT/repos/compress/fse/fse.go"
model="$VERIOP_BENCH_ROOT/gobra/compress/FseTableStep.gobra"
python3 - "$source_file" "$model" <<'PY'
from pathlib import Path
import re
import sys

pattern = r'(?ms)^func tableStep\(.*?^\}'
source, model = (Path(path).read_text() for path in sys.argv[1:])
source_fn = re.search(pattern, source)
model_fn = re.search(pattern, model)
assert source_fn and model_fn
assert source_fn.group().split('{', 1)[1] == model_fn.group().split('{', 1)[1], \
    'Gobra function body differs from pinned compress/fse/fse.go'
assert model_fn.group().startswith('func tableStep(tableSize uint32) (r uint32) {')
assert source_fn.group().startswith('func tableStep(tableSize uint32) uint32 {')
PY

log="$VERIOP_BENCH_ROOT/logs/compress-fse-gobra.log"
java -Xss128m -jar "$VERIOP_BENCH_ROOT/tools/gobra/target/scala-2.13/gobra.jar" \
  -i "$model" > "$log" 2>&1
rg -q 'Gobra found 0 errors\.' "$log"
printf 'Pinned compress FSE tableStep: source audit and Gobra postcondition passed.\n'
