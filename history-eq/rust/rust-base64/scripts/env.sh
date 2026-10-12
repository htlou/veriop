# Source the shared toolchain env (read-only use), but keep cargo's registry/cache local to this slice.
source /srv/home/hantaolou/code/veriop/aeneas/env.sh
export CARGO_HOME=/srv/home/hantaolou/code/veriop/history-eq/rust/rust-base64/.cargo-home
mkdir -p "$CARGO_HOME"
