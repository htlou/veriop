#!/bin/bash
# Run Volta's own workspace test suite on the pristine copy (commit 5d7530c) and on volta-cta (+ --cta/--syntactic).
export RUSTUP_HOME=/srv/home/hantaolou/code/veriop/aeneas/env/rustup CARGO_HOME=/srv/home/hantaolou/code/veriop/aeneas/env/cargo
export PATH=$CARGO_HOME/bin:$PATH
R=/srv/home/hantaolou/code/veriop/heldout/llama-cuda
for d in volta-pristine volta-cta; do
  (cd $R/$d && taskset -c 0-63 cargo test --workspace --release -j32 > $R/volta-cta-evidence/testsuite-$d.log 2>&1; echo "exit $?" >> $R/volta-cta-evidence/testsuite-$d.log)
done
