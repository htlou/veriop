"""Changed-hunk coverage via DWARF line tables of an -O0 -gline-tables-only build of a TU."""
import json, os, re, subprocess, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))
from common import *

NOFETCH = {**os.environ, 'GIT_NO_LAZY_FETCH': '1'}


def hunks(repo, parent, child, files):
    """-> list of dict(file, old=(a,b), new=(c,d)) from git diff -U0 for given files (inclusive ranges, b<a if empty)"""
    out = []
    for f in files:
        r = subprocess.run(['git', '-C', str(ROOT / 'benchmarks/repos' / repo), 'diff', '-U0', '--no-color', '-M',
                            parent, child, '--', f], capture_output=True, text=True, env=NOFETCH)
        for l in r.stdout.splitlines():
            m = re.match(r'^@@ -(\d+)(?:,(\d+))? \+(\d+)(?:,(\d+))? @@', l)
            if m:
                a, b, c, d = int(m.group(1)), int(m.group(2) or 1), int(m.group(3)), int(m.group(4) or 1)
                out.append({'file': f, 'old': [a, a + b - 1], 'new': [c, c + d - 1]})
    return out


def strip_comments(lines):
    res, inblk = [], False
    for l in lines:
        s = l
        if inblk:
            if '*/' in s:
                s = s.split('*/', 1)[1]; inblk = False
            else:
                res.append(''); continue
        while '/*' in s:
            pre, post = s.split('/*', 1)
            if '*/' in post:
                s = pre + ' ' + post.split('*/', 1)[1]
            else:
                s = pre; inblk = True; break
        s = s.split('//', 1)[0]
        res.append(s.strip())
    return res


def classify(tree, hk, side):
    """hunk side text: 'code' | 'macro' | 'noncode' (comments/blank/braces/preproc-only)"""
    a, b = hk[side]
    if b < a:
        return 'empty'
    p = tree / hk['file']
    if not p.exists():
        return 'empty'
    lines = p.read_text(errors='replace').split('\n')
    seg = strip_comments(lines[max(0, a - 1):b])
    kinds = set()
    inmacro = False
    for s in seg:
        if not s:
            continue
        if s.startswith('#'):
            if s.startswith('#define'):
                kinds.add('macro'); inmacro = s.endswith('\\')
            continue
        if inmacro:
            kinds.add('macro'); inmacro = s.endswith('\\'); continue
        if re.fullmatch(r'[{}();,\s]*', s) or s in ('public:', 'private:', 'protected:'):
            continue
        kinds.add('code')
    return 'code' if 'code' in kinds else ('macro' if 'macro' in kinds else 'noncode')


def line_table(obj, wd):
    """-> {path relative to wd (e.g. 'new/include/x.h'): set(lines)} from llvm-dwarfdump --debug-line"""
    r = subprocess.run([str(LLVMBIN / 'llvm-dwarfdump'), '--debug-line', str(obj)], capture_output=True, text=True)
    cov = {}
    dirs, fnames = {}, {}
    pref = str(wd) + '/'
    cur = None

    def resolve(idx):
        n, d = fnames.get(idx, (None, None))
        if n is None:
            return None
        if not n.startswith('/'):
            dd = dirs.get(d, '')
            n = (dd + '/' + n) if dd else n
        n = os.path.normpath(n)
        if n.startswith(pref):
            n = n[len(pref):]
        return n
    for l in r.stdout.splitlines():
        if l.startswith('debug_line['):
            dirs, fnames = {}, {}
            continue
        m = re.match(r'^include_directories\[\s*(\d+)\] = "(.*)"', l)
        if m:
            dirs[int(m.group(1))] = m.group(2); continue
        m = re.match(r'^file_names\[\s*(\d+)\]:', l)
        if m:
            cur = int(m.group(1)); continue
        m = re.match(r'^\s+name: "(.*)"', l)
        if m and cur is not None:
            fnames[cur] = (m.group(1), None); continue
        m = re.match(r'^\s+dir_index: (\d+)', l)
        if m and cur is not None:
            fnames[cur] = (fnames[cur][0], int(m.group(1))); continue
        m = re.match(r'^0x[0-9a-f]+\s+(\d+)\s+\d+\s+(\d+)\s', l)
        if m:
            p = resolve(int(m.group(2)))
            if p:
                cov.setdefault(p, set()).add(int(m.group(1)))
    return cov


def coverage(wd, repo_hunks, covs):
    """covs: {'old': [linetable,...], 'new': [...]} union over configs. Returns per-hunk status list."""
    res = []
    for hk in repo_hunks:
        st = {}
        for side in ('old', 'new'):
            kind = classify(wd / side, hk, side)
            a, b = hk[side]
            covered = False
            if kind in ('code', 'macro') and b >= a:
                for lt in covs.get(side, []):
                    lines = lt.get(f"{side}/{hk['file']}", set())
                    if any(a <= x <= b for x in lines):
                        covered = True
            st[side] = (kind, covered)
        res.append({'file': hk['file'], 'old': hk['old'], 'new': hk['new'], 'old_kind': st['old'][0], 'old_cov': st['old'][1],
                    'new_kind': st['new'][0], 'new_cov': st['new'][1]})
    return res
