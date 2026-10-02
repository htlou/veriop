# Source this file from bash; all Rust tools and caches live inside this experiment.
export AENEAS_WORK="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
export CARGO_HOME="$AENEAS_WORK/env/cargo"
export RUSTUP_HOME="$AENEAS_WORK/env/rustup"
export PATH="$AENEAS_WORK/env/cargo/bin:$AENEAS_WORK/env/charon:$AENEAS_WORK/env/aeneas:$PATH"
export CARGO_BUILD_JOBS=16
