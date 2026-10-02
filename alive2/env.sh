#!/usr/bin/env bash
ALIVE2_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
export ALIVE2_ROOT
export PATH="$ALIVE2_ROOT/toolchain/usr/lib/llvm-20/bin:$ALIVE2_ROOT/toolchain/usr/bin:$ALIVE2_ROOT/.venv/bin:$PATH"
export LD_LIBRARY_PATH="$ALIVE2_ROOT/toolchain/usr/lib/x86_64-linux-gnu:$ALIVE2_ROOT/.venv/lib/python3.10/site-packages/z3/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
