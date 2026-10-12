#!/usr/bin/env python3
"""Materialize exact old (first parent) / new trees of a historical commit.

usage: materialize.py REPO COMMIT DEST [PATHSPEC ...]
  REPO     name under benchmarks/repos (e.g. zstd, llama.cpp)
  DEST     directory; creates DEST/old and DEST/new (skips if DEST/.done exists)
  PATHSPEC optional path prefixes to restrict extraction (default: whole tree)

Missing blobs are batch-fetched from GitHub (partial-clone promisor) first.
Writes DEST/meta.json with parent/child SHAs and the changed-file list (raw diff).
"""
import json, os, subprocess, sys, tarfile, io
ROOT = "/srv/home/hantaolou/code/veriop"
NOFETCH = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(repo, *a, inp=None, env=None, binary=False):
    r = subprocess.run(["git", "-C", repo, *a], input=inp, capture_output=True,
                       text=not binary, env=env)
    if r.returncode: raise RuntimeError(f"git {a[:3]}: {r.stderr[-400:]}")
    return r.stdout

def prefetch(repo, rev, paths):
    ls = git(repo, "ls-tree", "-r", rev, "--", *paths, env=NOFETCH)
    oids = [l.split()[2] for l in ls.splitlines() if l.split()[1] == "blob"]
    if not oids: return
    chk = git(repo, "cat-file", "--batch-check", inp="\n".join(oids) + "\n", env=NOFETCH)
    miss = [l.split()[0] for l in chk.splitlines() if l.endswith(" missing")]
    for i in range(0, len(miss), 5000):
        git(repo, "-c", "fetch.negotiationAlgorithm=noop", "fetch", "origin", "--no-tags",
            "--no-write-fetch-head", "--recurse-submodules=no", "--filter=blob:none", "--stdin",
            inp="\n".join(miss[i:i+5000]) + "\n")

def extract(repo, rev, dest, paths):
    os.makedirs(dest, exist_ok=True)
    data = git(repo, "archive", "--format=tar", rev, "--", *paths, binary=True) if paths else \
           git(repo, "archive", "--format=tar", rev, binary=True)
    with tarfile.open(fileobj=io.BytesIO(data)) as t:
        t.extractall(dest)

def main():
    name, commit, dest, *paths = sys.argv[1:]
    repo = f"{ROOT}/benchmarks/repos/{name}"
    if os.path.exists(f"{dest}/.done"): print(dest); return
    child = git(repo, "rev-parse", commit).strip()
    parent = git(repo, "rev-parse", f"{child}^1").strip()
    for rev, sub in ((parent, "old"), (child, "new")):
        prefetch(repo, rev, paths)
        extract(repo, rev, f"{dest}/{sub}", paths)
    raw = git(repo, "diff-tree", "-r", "--no-abbrev", "-M", "--raw", parent, child, env=NOFETCH)
    files = []
    for l in raw.splitlines():
        if l.startswith(":"):
            meta, *names = l[1:].split("\t")
            m = meta.split()
            files.append({"status": m[4], "old_mode": m[0], "new_mode": m[1], "paths": names})
    json.dump({"repo": name, "commit": child, "parent": parent, "pathspec": paths, "changed": files},
              open(f"{dest}/meta.json", "w"), indent=1)
    open(f"{dest}/.done", "w").close()
    print(dest)

if __name__ == "__main__":
    main()
