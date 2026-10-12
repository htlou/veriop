#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

source_file="$VERIOP_BENCH_ROOT/repos/netty/common/src/main/java/io/netty/util/internal/MathUtil.java"
model="$VERIOP_BENCH_ROOT/key/NettyMathUtil.java"
python3 - "$source_file" "$model" <<'PY'
from pathlib import Path
import re
import sys

source, model = (Path(path).read_text() for path in sys.argv[1:])
for name in ('findNextPositivePowerOfTwo', 'safeFindNextPositivePowerOfTwo'):
    pattern = rf'(?ms)^    public static int {name}\([^\n]+\) \{{.*?^    \}}'
    source_fn = re.search(pattern, source)
    model_fn = re.search(pattern, model)
    assert source_fn and model_fn and source_fn.group() == model_fn.group(), \
        f'KeY model differs from pinned Netty MathUtil.{name}'
PY

buffer_source="$VERIOP_BENCH_ROOT/repos/netty/buffer/src/main/java/io/netty/buffer/AbstractByteBuf.java"
buffer_model="$VERIOP_BENCH_ROOT/key/netty_buffer/NettyBufferBounds.java"
python3 - "$buffer_source" "$buffer_model" <<'PY'
from pathlib import Path
import re
import sys

source, model = (Path(path).read_text() for path in sys.argv[1:])
pattern = r'(?ms)^    private static boolean isOutOfBoundsTrustedCapacity\([^\n]+\) \{.*?^    \}'
a, b = (re.search(pattern, text) for text in (source, model))
assert a and b and a.group() == b.group(), \
    'KeY model differs from pinned AbstractByteBuf.isOutOfBoundsTrustedCapacity'
PY

log="$VERIOP_BENCH_ROOT/logs/netty-key-target.log"
isolated=$(mktemp -d "$VERIOP_BENCH_ROOT/build/netty-key.XXXXXX")
trap 'rm -rf "$isolated"' EXIT
cp "$model" "$isolated/NettyMathUtil.java"
printf '0\n' | timeout 90s java -jar "$KEY_JAR" --auto --timeout=60000 \
  "$isolated/NettyMathUtil.java" > "$log" 2>&1
test "$(rg -c 'Method:' "$log")" -eq 1
rg -q 'Method: NettyMathUtil::safeFindNextPositivePowerOfTwo' "$log"
rg -q 'Number of goals remaining open: 0' "$log"
rg -q ' - Proved$' "$log"

buffer_log="$VERIOP_BENCH_ROOT/logs/netty-key-buffer-bounds.log"
printf '0\n' | timeout 90s java -jar "$KEY_JAR" --auto --timeout=60000 \
  "$buffer_model" > "$buffer_log" 2>&1
test "$(rg -c 'Method:' "$buffer_log")" -eq 1
rg -q 'Method: NettyBufferBounds::isOutOfBoundsTrustedCapacity' "$buffer_log"
rg -q 'Number of goals remaining open: 0' "$buffer_log"
rg -q ' - Proved$' "$buffer_log"
printf 'Pinned Netty power-of-two boundary and buffer bounds contracts: KeY proved.\n'
