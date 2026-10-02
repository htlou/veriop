#!/usr/bin/env python3
"""Extract pinned LLVM 20 packages locally; no system installation required."""
import hashlib
import json
from pathlib import Path
import subprocess
import urllib.request

root = Path(__file__).resolve().parent
for package in json.loads((root / "toolchain/packages.lock.json").read_text()):
    dest = root / "toolchain/packages" / Path(package["Filename"]).name
    if not dest.exists():
        print("Downloading", package["Package"], flush=True)
        urllib.request.urlretrieve(package.get("URL", "https://apt.llvm.org/jammy/" + package["Filename"]), dest)
    assert hashlib.sha256(dest.read_bytes()).hexdigest() == package["SHA256"], dest
    subprocess.run(["dpkg-deb", "-x", str(dest), str(root / "toolchain")], check=True)
