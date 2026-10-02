#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")"
mkdir -p repos toolchain/packages build results
python3 - <<'PY'
import json
from pathlib import Path
import subprocess as s
for name, pin in json.loads(Path('repos.lock.json').read_text()).items():
    path = Path('repos') / name
    if not path.exists():
        s.run(['git', 'init', str(path)], check=True)
        s.run(['git', '-C', str(path), 'remote', 'add', 'origin', pin['url']], check=True)
        s.run(['git', '-C', str(path), 'fetch', '--depth=1', 'origin', pin['commit']], check=True)
        s.run(['git', '-C', str(path), 'checkout', '--detach', pin['commit']], check=True)
    assert s.check_output(['git', '-C', str(path), 'rev-parse', 'HEAD'], text=True).strip() == pin['commit'], path
    assert not s.check_output(['git', '-C', str(path), 'status', '--porcelain'], text=True), path
PY
python3 setup-toolchain.py
if [ ! -d .venv ]; then uv venv --python python3.10 .venv; fi
uv pip install --python .venv/bin/python z3-solver==4.15.3.0
source ./env.sh
python - <<'PY'
import z3
from pathlib import Path
# The wheel omits the version header required by Alive2's CMake check.
v = z3.get_version()
p = Path(z3.__file__).parent / 'include/z3_version.h'
p.write_text(''.join(f'#define Z3_{k} {n}\n' for k,n in zip(
    ['MAJOR_VERSION','MINOR_VERSION','BUILD_NUMBER','REVISION_NUMBER'],v)))
PY
cmake -S repos/alive2 -B build/alive2 -G Ninja \
    -DCMAKE_BUILD_TYPE=Release -DBUILD_TV=ON \
    -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
    -DCMAKE_CXX_FLAGS=--gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11 \
    -DCMAKE_PREFIX_PATH="$ALIVE2_ROOT/toolchain/usr" \
    -DLLVM_DIR="$ALIVE2_ROOT/toolchain/usr/lib/llvm-20/lib/cmake/llvm" \
    -DZ3_INCLUDE_DIR="$ALIVE2_ROOT/.venv/lib/python3.10/site-packages/z3/include" \
    -DZ3_LIBRARIES="$ALIVE2_ROOT/.venv/lib/python3.10/site-packages/z3/lib/libz3.so" \
    -Dzstd_LIBRARY=/usr/lib/x86_64-linux-gnu/libzstd.so.1
cmake --build build/alive2 --target alive-tv -j "${BUILD_JOBS:-16}"
