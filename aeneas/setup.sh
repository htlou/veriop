#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
mkdir -p env logs repos results
if [ ! -x "$CARGO_HOME/bin/rustup" ]; then
  curl -fsSL https://sh.rustup.rs -o env/rustup-init.sh
  sh env/rustup-init.sh -y --no-modify-path --profile minimal --default-toolchain 1.99.0
fi
rustup toolchain install 1.99.0 --profile minimal
rustup default 1.99.0
rustup toolchain install nightly-2026-09-17 --profile minimal --component rustc-dev,llvm-tools,rust-src,miri
python3 - <<'PY'
import hashlib, json, subprocess, urllib.request
from pathlib import Path
pins = json.loads(Path('pins.json').read_text())
urls = {'aeneas': 'AeneasVerif/aeneas', 'charon': 'AeneasVerif/charon',
        'rust-base64': 'marshallpierce/rust-base64', 'lz4_flex': 'pseitz/lz4_flex'}
for name, url in urls.items():
    path = Path('repos') / name
    if not path.exists():
        subprocess.run(['git', 'clone', 'https://github.com/' + url, str(path)], check=True)
        subprocess.run(['git', '-C', str(path), 'checkout', '--detach', pins['repos'][name]], check=True)
    assert subprocess.check_output(['git', '-C', str(path), 'rev-parse', 'HEAD'], text=True).strip() == pins['repos'][name]
archive = Path('env/aeneas.tar.gz')
if not archive.exists():
    url = 'https://github.com/AeneasVerif/aeneas/releases/download/' + pins['releases']['aeneas'] + '/aeneas-linux-x86_64.tar.gz'
    urllib.request.urlretrieve(url, archive)
assert hashlib.sha256(archive.read_bytes()).hexdigest() == pins['archives']['aeneas.tar.gz']
if not Path('env/aeneas/aeneas').exists():
    Path('env/aeneas').mkdir(exist_ok=True)
    subprocess.run(['tar', '-xzf', str(archive), '-C', 'env/aeneas'], check=True)
for patch in sorted(Path('patches').glob('*.patch')):
    base = 'lz4_flex' if patch.stem.startswith('lz4-') else 'rust-base64'
    target = Path('repos') / patch.stem
    if not target.exists():
        subprocess.run(['git', '-C', 'repos/' + base, 'worktree', 'add', '--detach', '../' + patch.stem, pins['repos'][base]], check=True)
        subprocess.run(['git', '-C', str(target), 'apply', str(patch.resolve())], check=True)
for repo in ['rust-base64', 'base64-candidate', 'base64-inline-api', 'base64-unroll2', 'base64-unroll8', 'lz4_flex', 'lz4-candidate', 'lz4-negative']:
    lock = 'lz4' if repo.startswith('lz4') else 'base64'
    target = Path('repos') / repo / 'Cargo.lock'
    if not target.exists():
        target.write_bytes(Path(f'results/{lock}-Cargo.lock').read_bytes())
PY
cargo +nightly-2026-09-17 build --locked --release --manifest-path repos/charon/charon/Cargo.toml --bin charon --bin charon-driver
mkdir -p env/charon
cp repos/charon/charon/target/release/{charon,charon-driver} env/charon/
cp repos/charon/rust-toolchain env/charon/
elan run --install leanprover/lean4:v4.31.0 lean --version
(cd proof && lake update && lake exe cache get)
