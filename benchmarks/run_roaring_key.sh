#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

source_file="$VERIOP_BENCH_ROOT/repos/RoaringBitmap/roaringbitmap/src/main/java/org/roaringbitmap/Util.java"
model="$VERIOP_BENCH_ROOT/key/roaring_iterate/RoaringIterate.java"
python3 - "$source_file" "$model" <<'PY'
from pathlib import Path
import re
import sys

source, model = (Path(path).read_text() for path in sys.argv[1:])
pattern = r'(?ms)^  public static int iterateUntil\([^\n]+\) \{.*?^  \}'
a, b = (re.search(pattern, text) for text in (source, model))
assert a and b, 'missing iterateUntil method'
model_body = re.sub(r'/\*@.*?@\*/', '', b.group(), flags=re.S)
compact = lambda code: re.sub(r'\s+', '', code)
assert compact(a.group()) == compact(model_body), \
    'KeY executable method differs from pinned RoaringBitmap Util.java'
PY

log="$VERIOP_BENCH_ROOT/logs/roaring-key-iterate.log"
printf '0\n' | timeout 90s java -jar "$KEY_JAR" --auto --timeout=60000 \
  "$model" > "$log" 2>&1
test "$(rg -c 'Method:' "$log")" -eq 1
rg -q 'Method: RoaringIterate::iterateUntil' "$log"
rg -q 'Number of goals remaining open: 0' "$log"
rg -q ' - Proved$' "$log"
printf 'Pinned RoaringBitmap iterateUntil contract: KeY proved.\n'
