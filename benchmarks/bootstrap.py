#!/usr/bin/env python3
"""Clone the pinned target sources, or check that they still match."""

import argparse
import csv
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parent


def run(*args, cwd=None):
    return subprocess.run(args, cwd=cwd, check=True, text=True, capture_output=True).stdout.strip()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true", help="do not clone missing repositories")
    args = parser.parse_args()
    with (ROOT / "targets.tsv").open(newline="") as f:
        targets = list(csv.DictReader(f, delimiter="\t"))
    for t in targets:
        path = ROOT / "repos" / t["repo"]
        if not (path / ".git").is_dir():
            if args.check:
                raise SystemExit(f"MISSING {t['repo']}: {path}")
            path.parent.mkdir(parents=True, exist_ok=True)
            run("git", "clone", "--depth", "1", "--filter=blob:none", "--branch", t["ref"],
                f"https://github.com/{t['upstream']}.git", str(path))
            if run("git", "rev-parse", "HEAD", cwd=path) != t["sha"]:
                run("git", "fetch", "--depth", "1", "origin", t["sha"], cwd=path)
                run("git", "checkout", "--detach", t["sha"], cwd=path)
        actual = run("git", "rev-parse", "HEAD", cwd=path)
        if actual != t["sha"]:
            raise SystemExit(f"PIN MISMATCH {t['repo']}: {actual} != {t['sha']}")
        print(f"OK {t['repo']} {actual[:12]}")
    print(f"{len(targets)} pinned target repositories present")


if __name__ == "__main__":
    os.environ.setdefault("GIT_TERMINAL_PROMPT", "0")
    main()
