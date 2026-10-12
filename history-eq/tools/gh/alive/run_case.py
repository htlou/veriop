#!/usr/bin/env python3
"""Automated Alive2 old/new check of one historical C commit (zstd, aws-lc).

usage: run_case.py REPO COMMIT [--budget SEC] [--force]

Pipeline (see tools/gh/PROTOCOL.md):
  materialize old/new -> classify changed files -> candidate TUs (changed .c, plus .c files
  that (transitively) include a changed header and whose preprocessed text differs)
  -> clang -O2 to LLVM IR (config A: default inlining; config B: -fno-inline, run only when A
  is not clean) -> pair same-named functions with equal signature whose bodies differ
  -> bidirectional alive-tv per pair -> aggregate to a commit verdict.
Writes history-eq/gh/results/<repo>/<commit>.json and logs in the evidence dir.
"""
import argparse, hashlib, json, os, re, shutil, subprocess, sys, time
from pathlib import Path

VERIOP = Path('/srv/home/hantaolou/code/veriop')
HE = VERIOP / 'history-eq'
ALIVE2 = VERIOP / 'alive2'
ALIVE = ALIVE2 / 'build/alive2/alive-tv'
ENV = dict(os.environ)
ENV['PATH'] = f"{ALIVE2}/toolchain/usr/lib/llvm-20/bin:{ALIVE2}/toolchain/usr/bin:" + ENV['PATH']
ENV['LD_LIBRARY_PATH'] = (f"{ALIVE2}/toolchain/usr/lib/x86_64-linux-gnu:"
                          f"{ALIVE2}/.venv/lib/python3.10/site-packages/z3/lib:" + ENV.get('LD_LIBRARY_PATH', ''))

CHECKER = "Alive2 (LLVM 20, -O2, x86-64)"
COMMON_FLAGS = ["-O2", "-fno-vectorize", "-fno-slp-vectorize", "-fno-unroll-loops", "-w", "-g0",
                "-Wno-error", "-fno-discard-value-names"]
REPO_CFG = {
    'zstd': dict(
        mat_paths=['lib', 'programs'],
        tu_dirs=['lib', 'programs'],
        std='-std=gnu11',
        defs=[],
        inc_roots=['lib', 'programs'],
        public_headers=['lib/zstd.h', 'lib/zdict.h', 'lib/zstd_errors.h', 'lib/zbuff.h', 'lib/zstd_static.h',
                        'lib/common/zstd.h', 'lib/zstd_v01.h'],
        exclude_re=r'^(tests?|examples?|doc|docs|build|contrib|zlibWrapper|\.github|man)/|^programs/(fuzzer|datagen|bench|zstdgrep|zstdless)',
    ),
    'aws-lc': dict(
        mat_paths=['crypto', 'include', 'ssl', 'third_party'],
        tu_dirs=['crypto', 'ssl'],
        std='-std=gnu11',
        defs=['-DBORINGSSL_IMPLEMENTATION', '-D_XOPEN_SOURCE=700', '-DNDEBUG', '-D_GNU_SOURCE'],
        inc_roots=['include', 'crypto', 'third_party/s2n-bignum/include', 'third_party/s2n-bignum/s2n-bignum-imported/include',
                   'third_party/fiat', 'third_party/jitterentropy/jitterentropy-library', 'third_party/vpaes', '.'],
        public_headers=['include/openssl'],
        exclude_re=r'(^|/)(tests?|fuzz|bench\w*|examples?|doc|docs|build|cmake|util|tool|tool-openssl|tests|go|\.github|docker|\w*test_data|crypto/test)/|_test\.(c|cc|h)$|(^|/)test[^/]*\.(c|cc|h)$|(^|/)\w*_test_util\.',
    ),
}
ASM_EXT = {'.S', '.s', '.asm', '.pl'}
CSRC_EXT = {'.c'}
CXX_EXT = {'.cc', '.cpp', '.cxx'}
HDR_EXT = {'.h', '.inc', '.inl', '.hpp'}


# ----------------------------------------------------------------------------- helpers
def sh(cmd, timeout=None, cwd=None, inp=None):
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, env=ENV, timeout=timeout, cwd=cwd, input=inp,
                           errors='replace')
        return p.returncode, p.stdout, p.stderr
    except subprocess.TimeoutExpired as e:
        so = e.stdout.decode(errors='replace') if isinstance(e.stdout, bytes) else (e.stdout or '')
        return 124, so, 'TIMEOUT'


class Budget:
    def __init__(self, sec):
        self.end = time.monotonic() + sec

    def left(self):
        return self.end - time.monotonic()

    def ok(self, need=5):
        return self.left() > need


# ----------------------------------------------------------------------------- IR handling
ATTR_STRIP = [r' nocapture\b']
META_RE = re.compile(r',\s*!(?!range\b|nonnull\b|noundef\b|align\b|dereferenceable\b)[\w.]+ !\d+')
EXTRA_STRIP = []  # learned from "Unsupported attribute" errors


def normalize_ir(text, extra=()):
    for r in ATTR_STRIP + list(extra):
        text = re.sub(r, '', text)
    text = META_RE.sub('', text)
    # canonical names for private constants (.str.N, switch.table, __const...)
    ren = {}
    cnt = {}
    for m in re.finditer(r'^@("[^"]+"|[\w.$-]+) = (private[^\n]*)$', text, re.M):
        name, rest = m.group(1), m.group(2)
        if ' constant ' not in rest and not rest.startswith('private unnamed_addr constant'):
            continue
        rest2 = re.sub(r', align \d+', '', rest)
        h = hashlib.sha1(rest2.encode()).hexdigest()[:10]
        k = cnt.get(h, 0)
        cnt[h] = k + 1
        ren[name] = f'pc.{h}.{k}'
    if ren:
        text = re.sub(r'@("[^"]+"|[\w.$-]+)', lambda m: '@' + ren.get(m.group(1), m.group(1)), text)
    return text


FUNC_NAME_RE = re.compile(r'@("[^"]+"|[\w.$-]+)\(')


def parse_module(text):
    """returns (funcs{name:(define_line, [body lines])}, globals{name: def}, attrs{N:str})"""
    funcs, globs, attrs = {}, {}, {}
    lines = text.split('\n')
    i = 0
    while i < len(lines):
        l = lines[i]
        if l.startswith('define '):
            m = FUNC_NAME_RE.search(l)
            name = m.group(1) if m else None
            j = i + 1
            while j < len(lines) and lines[j] != '}':
                j += 1
            if name:
                funcs[name] = (l, lines[i + 1:j])
            i = j
        elif l.startswith('@'):
            m = re.match(r'@("[^"]+"|[\w.$-]+) = (.*)$', l)
            if m and ' external ' not in m.group(2)[:40]:
                globs[m.group(1)] = m.group(2)
        elif l.startswith('attributes #'):
            m = re.match(r'attributes #(\d+) = (\{.*\})', l)
            if m:
                attrs[m.group(1)] = m.group(2)
        i += 1
    return funcs, globs, attrs


SKIP_WORDS = set('''internal private dso_local dso_preemptable hidden protected default fastcc ccc coldcc noundef zeroext signext inreg
noalias nonnull nofpclass weak weak_odr linkonce linkonce_odr external available_externally common appending extern_weak
local_unnamed_addr unnamed_addr nuw'''.split())


def read_type(s):
    s = s.strip()
    if not s:
        return '', ''
    if s[0] in '<{[':
        pairs = {'<': '>', '{': '}', '[': ']'}
        stack = []
        for k, ch in enumerate(s):
            if ch in pairs:
                stack.append(pairs[ch])
            elif stack and ch == stack[-1]:
                stack.pop()
                if not stack:
                    return s[:k + 1], s[k + 1:]
        return s, ''
    m = re.match(r'(%?"?[\w.$-]+"?\*?)', s)
    return m.group(1), s[m.end():]


def signature(define_line):
    m = FUNC_NAME_RE.search(define_line)
    if not m:
        return None
    pre = define_line[len('define '):m.start() - 1].strip()
    # skip leading keywords / attrs with parens
    while True:
        pre = pre.strip()
        mm = re.match(r'([\w.]+(\([^)]*\))?)\s*(.*)$', pre)
        if not mm:
            break
        w = mm.group(1)
        base = re.match(r'[\w.]+', w).group(0)
        if base in SKIP_WORDS or base in ('range', 'dereferenceable', 'dereferenceable_or_null', 'align', 'captures', 'initializes'):
            pre = mm.group(3)
        else:
            break
    ret, _ = read_type(pre)
    # params
    rest = define_line[m.end():]
    depth, buf, params, k = 1, '', [], 0
    while k < len(rest) and depth:
        ch = rest[k]
        if ch in '([{<':
            depth += 1
        elif ch in ')]}>':
            depth -= 1
            if depth == 0:
                break
        if ch == ',' and depth == 1:
            params.append(buf)
            buf = ''
        else:
            buf += ch
        k += 1
    if buf.strip():
        params.append(buf)
    ptypes = [read_type(p)[0] for p in params]
    return (ret, tuple(ptypes))


def linkage_internal(define_line):
    return re.match(r'define\s+(internal|private)\b', define_line) is not None


def canon_func(define_line, body, attrs):
    def rep(m):
        return attrs.get(m.group(1), m.group(0))
    t = define_line + '\n' + '\n'.join(body)
    t = re.sub(r'#(\d+)', rep, t)
    t = re.sub(r'\n\s*\n', '\n', t)
    return t


def loops_by_func(path):
    rc, so, se = sh(['opt', '-disable-output', '-passes=print<loops>', str(path)], timeout=120)
    res, cur = set(), None
    for l in (so + se).splitlines():
        m = re.match(r"Loop info for function '([^']+)'", l)
        if m:
            cur = m.group(1)
        elif l.startswith('Loop at depth') and cur:
            res.add(cur)
    return res


# ----------------------------------------------------------------------------- alive-tv
def parse_alive(text):
    c = {}
    for key in ('correct', 'incorrect', 'failed-to-prove', 'Alive2 errors'):
        m = re.search(r'(\d+) ' + re.escape(key), text)
        c[key] = int(m.group(1)) if m else 0
    errs = [l for l in text.splitlines() if l.startswith('ERROR:')]
    if c['correct'] == 1:
        return 'correct', ''
    if c['incorrect'] == 1:
        if re.search(r'approximat', text, re.I):
            return 'failed', 'approximations-used'
        return 'incorrect', ''
    if c['failed-to-prove'] == 1:
        reason = errs[0][7:].strip() if errs else 'failed-to-prove'
        if re.search(r'approximat', text, re.I):
            reason += ' (approximations)'
        return 'failed', reason
    if c['Alive2 errors'] >= 1 or errs:
        e = [x for x in errs if 'Could not translate' not in x]
        return 'error', (e[0][7:] if e else (errs[0][7:] if errs else 'alive-error')).strip()[:200]
    return 'failed', 'no-result(process-timeout-or-crash)'


def run_alive(old, new, fn, unroll, smt_to, tmo, log):
    cmd = [str(ALIVE), f'--func={fn}', f'--smt-to={smt_to}', '--always-verify']
    if unroll:
        cmd += [f'--src-unroll={unroll}', f'--tgt-unroll={unroll}']
    cmd += [str(old), str(new)]
    t = time.monotonic()
    rc, so, se = sh(cmd, timeout=tmo)
    text = so + se
    if rc == 124:
        status, reason = 'failed', 'process-timeout'
    else:
        status, reason = parse_alive(text)
    with open(log, 'a') as f:
        f.write(f'$ {" ".join(cmd)}  [{time.monotonic()-t:.1f}s rc={rc}]\n')
        f.write(text[-6000:] if status != 'incorrect' else text[-12000:])
        f.write('\n')
    return status, reason, text


def check_pair(old, new, fn, has_loops, budget, log, smt_to=30000):
    """bidirectional check of one function; returns dict"""
    unroll = 4 if has_loops else 0
    tmo = int(max(20, min(240, budget.left())))
    st, why, txt = run_alive(old, new, fn, unroll, smt_to, tmo, log)
    if st == 'error' and 'Unsupported attribute' in why:
        pass
    r = {'fwd': st, 'fwd_reason': why, 'loops': has_loops, 'unroll': unroll}
    if st == 'failed' and has_loops and budget.ok(60):
        # retry with smaller unroll
        st2, why2, txt2 = run_alive(old, new, fn, 2, smt_to, int(max(20, min(240, budget.left()))), log)
        if st2 in ('correct', 'incorrect'):
            st, why, txt = st2, why2, txt2
            r.update(fwd=st, fwd_reason=why, unroll=2)
    if st == 'incorrect':
        r['cex'] = txt
        # does the reverse hold?  (new more defined than old)
        return r
    if st == 'correct':
        if not budget.ok(10):
            r.update(bwd='failed', bwd_reason='budget')
            return r
        tmo = int(max(20, min(240, budget.left())))
        st_b, why_b, txt_b = run_alive(new, old, fn, r['unroll'], smt_to, tmo, log)
        r.update(bwd=st_b, bwd_reason=why_b)
    return r


def unit_result(r):
    f, b = r['fwd'], r.get('bwd')
    if f == 'correct':
        base = 'EQUIV' if b == 'correct' else 'REFINES'
        if r['loops']:
            base += '_BOUNDED'
        return base
    if f == 'incorrect':
        return 'NOT_EQUIV'
    if f == 'error':
        return 'UNSUPPORTED'
    return 'UNKNOWN'


def unsupported_reason_from(err):
    e = err.lower()
    if 'asm' in e:
        return 'inline-asm'
    if 'intrinsic' in e or 'llvm.x86' in e or 'llvm.aarch64' in e:
        return 'intrinsic-unsupported-by-checker'
    return 'checker-language-feature-unsupported'


# ----------------------------------------------------------------------------- source side
def changed_files(meta):
    out = []
    for ch in meta['changed']:
        p = ch['paths']
        out.append(dict(status=ch['status'][0], old=p[0], new=p[-1]))
    return out


def classify(cfg, files):
    ex = re.compile(cfg['exclude_re'])
    res = dict(c=[], hdr=[], asm=[], cxx=[], excluded=[], other=[])
    for f in files:
        path = f['new'] if f['status'] != 'D' else f['old']
        ext = os.path.splitext(path)[1]
        if ext in ASM_EXT:
            if ex.search(path):
                res['excluded'].append(path)
            else:
                res['asm'].append(path)
        elif ext in CSRC_EXT | HDR_EXT | CXX_EXT:
            if ex.search(path):
                res['excluded'].append(path)
            elif ext in CSRC_EXT:
                res['c'].append(f)
            elif ext in HDR_EXT:
                res['hdr'].append(f)
            else:
                res['cxx'].append(path)
        else:
            res['other'].append(path)
    return res


INC_RE = re.compile(r'^\s*#\s*include\s*([<"])([^>"]+)[>"]', re.M)


def list_tree_files(root, dirs, exts):
    out = []
    for d in dirs:
        base = root / d
        if not base.exists():
            continue
        for dp, dn, fn in os.walk(base):
            for x in fn:
                if os.path.splitext(x)[1] in exts:
                    out.append(os.path.relpath(os.path.join(dp, x), root))
    return out


def include_dirs(cfg, root):
    dirs = []
    for r in cfg['inc_roots']:
        base = root / r
        if not base.exists():
            continue
        if r in ('lib', 'programs'):
            for dp, dn, fn in os.walk(base):
                dn[:] = [d for d in dn if not d.startswith('.')]
                dirs.append(os.path.relpath(dp, root))
        else:
            dirs.append(r)
    # keep order, dedupe
    seen, o = set(), []
    for d in dirs:
        if d not in seen:
            seen.add(d)
            o.append(d)
    return o


def build_reverse_deps(root, files, incdirs):
    exists_cache = {}

    def exists(p):
        if p not in exists_cache:
            exists_cache[p] = (root / p).is_file()
        return exists_cache[p]
    rev = {}
    for f in files:
        try:
            txt = (root / f).read_text(errors='replace')
        except Exception:
            continue
        for kind, inc in INC_RE.findall(txt):
            cands = []
            if kind == '"':
                cands.append(os.path.normpath(os.path.join(os.path.dirname(f), inc)))
            for d in incdirs:
                cands.append(os.path.normpath(os.path.join(d, inc)))
            for c in cands:
                if exists(c):
                    rev.setdefault(c, set()).add(f)
                    break
    return rev


def closure(rev, seeds):
    seen, st = set(seeds), list(seeds)
    while st:
        x = st.pop()
        for y in rev.get(x, ()):
            if y not in seen:
                seen.add(y)
                st.append(y)
    return seen


def cc_cmd(cfg, root, incs, extra, mode, src):
    cmd = ['clang', cfg['std'], *COMMON_FLAGS, *cfg['defs'], *extra]
    for d in incs:
        cmd += ['-I', d]
    cmd += mode + [src]
    return cmd


def func_source(root, relpath, name):
    try:
        txt = (root / relpath).read_text(errors='replace')
    except Exception:
        return None
    m = re.search(r'(^|\n)[A-Za-z_][^;{}()]*\b' + re.escape(name) + r'\s*\(', txt)
    if not m:
        return None
    i = txt.find('{', m.end())
    if i < 0:
        return None
    depth, k = 0, i
    while k < len(txt):
        if txt[k] == '{':
            depth += 1
        elif txt[k] == '}':
            depth -= 1
            if depth == 0:
                break
        k += 1
    return txt[m.start():k + 1]


# record layouts (for state-layout-change detection)
def record_layouts(cfg, root, incs, src):
    cmd = ['clang', cfg['std'], '-w', *cfg['defs'], '-Xclang', '-fdump-record-layouts-simple', '-fsyntax-only']
    for d in incs:
        cmd += ['-I', d]
    cmd.append(src)
    rc, so, se = sh(cmd, cwd=str(root), timeout=120)
    text = so + se
    recs = {}
    for blk in re.split(r'\n(?=\*\*\* Dumping)|(?=Layout: )', text):
        m = re.search(r'(?:struct|union) ([\w.]+)', blk)
        if m and 'Size:' in blk or m and 'sizeof=' in blk:
            recs[m.group(1)] = re.sub(r'\s+', ' ', blk)
    return recs


# ----------------------------------------------------------------------------- per-TU comparison
def compile_tu(cfg, root, incs, extra, src, out_ll):
    cmd = cc_cmd(cfg, root, incs, extra, ['-S', '-emit-llvm', '-o', str(out_ll)], src)
    rc, so, se = sh(cmd, cwd=str(root), timeout=300)
    if rc != 0:
        # fallback for ancient sources
        cmd2 = cc_cmd(cfg, root, incs, extra + ['-std=gnu99', '-fcommon', '-Wno-implicit-function-declaration',
                                                 '-Wno-implicit-int', '-Wno-int-conversion',
                                                 '-Wno-incompatible-pointer-types'], ['-S', '-emit-llvm', '-o', str(out_ll)], src)
        rc2, so2, se2 = sh(cmd2, cwd=str(root), timeout=300)
        if rc2 == 0:
            return True, ''
        return False, (se[-1500:] if se else se2[-1500:])
    return True, ''


def preprocess_text(cfg, root, incs, extra, src):
    cmd = cc_cmd(cfg, root, incs, extra, ['-E', '-P'], src)
    rc, so, se = sh(cmd, cwd=str(root), timeout=120)
    if rc != 0:
        return None, se[-800:]
    return re.sub(r'\s+', ' ', so), ''


class TUResult:
    def __init__(self, tu, config):
        self.tu = tu
        self.config = config
        self.pp_identical = False
        self.build_fail = None  # 'old'/'new'/'both'
        self.build_err = ''
        self.units = []     # dict(name,result,...)
        self.ident = 0
        self.gaps = []      # dict(kind, name, hard)
        self.notes = []
        self.layout_changed = []


def process_tu(cfg, case, tu, config, extra, incs_old, incs_new, budget, evdir, stats):
    """compile + compare one TU in one configuration."""
    old_root, new_root = case['old_root'], case['new_root']
    res = TUResult(tu, config)
    slug = re.sub(r'[^\w.-]', '_', tu)
    d = evdir / config / slug
    d.mkdir(parents=True, exist_ok=True)
    in_old = (old_root / tu).is_file()
    in_new = (new_root / tu).is_file()
    if not in_old or not in_new:
        res.gaps.append(dict(kind='file-added' if in_new else 'file-removed', name=tu, hard=True))
        return res
    ok_o, err_o = compile_tu(cfg, old_root, incs_old, extra, tu, d / 'old.ll')
    ok_n, err_n = compile_tu(cfg, new_root, incs_new, extra, tu, d / 'new.ll')
    if not ok_o or not ok_n:
        res.build_fail = 'both' if (not ok_o and not ok_n) else ('old' if not ok_o else 'new')
        res.build_err = (('OLD: ' + err_o[-600:]) if not ok_o else '') + (('NEW: ' + err_n[-600:]) if not ok_n else '')
        (d / 'build-error.txt').write_text(res.build_err)
        return res
    to, tn = (d / 'old.ll').read_text(), (d / 'new.ll').read_text()
    to_n, tn_n = normalize_ir(to, EXTRA_STRIP), normalize_ir(tn, EXTRA_STRIP)
    (d / 'old.n.ll').write_text(to_n)
    (d / 'new.n.ll').write_text(tn_n)
    (d / 'old.ll').unlink()
    (d / 'new.ll').unlink()
    fo, go, ao = parse_module(to_n)
    fn_, gn, an = parse_module(tn_n)
    # globals
    changed_globals = {g for g in set(go) & set(gn) if re.sub(r'#\d+', '', go[g]) != re.sub(r'#\d+', '', gn[g])}
    common = [n for n in fo if n in fn_]
    differing, ident = [], 0
    for n in common:
        co = canon_func(*fo[n], ao)
        cn = canon_func(*fn_[n], an)
        if co == cn:
            if changed_globals and any(('@' + g) in co for g in changed_globals):
                differing.append((n, 'reads-changed-global'))
            else:
                ident += 1
        else:
            differing.append((n, 'body'))
    res.ident = ident
    only_old = [n for n in fo if n not in fn_]
    only_new = [n for n in fn_ if n not in fo]
    for n in only_old:
        res.gaps.append(dict(kind='only-in-old', name=n, hard=not linkage_internal(fo[n][0])))
    for n in only_new:
        res.gaps.append(dict(kind='only-in-new', name=n, hard=not linkage_internal(fn_[n][0])))
    # signature check
    to_check = []
    for n, why in differing:
        so_, sn_ = signature(fo[n][0]), signature(fn_[n][0])
        if so_ != sn_:
            res.gaps.append(dict(kind='signature-changed', name=n, hard=True if not linkage_internal(fo[n][0]) else False,
                                 detail=f'{so_} -> {sn_}', internal=linkage_internal(fo[n][0])))
        else:
            to_check.append((n, why))
    if not to_check:
        return res
    lo, ln = loops_by_func(d / 'old.n.ll'), loops_by_func(d / 'new.n.ll')
    contract_names = {g['name'] for g in res.gaps}
    to_check.sort(key=lambda x: len(fo[x[0]][1]) + len(fn_[x[0]][1]))
    log = d / 'alive.log'
    # layout info only if needed (lazy)
    for n, why in to_check:
        if not budget.ok(15):
            res.units.append(dict(name=n, file=tu, result='UNKNOWN', detail='case time budget exhausted before this pair was checked',
                                  config=config))
            continue
        r = check_pair(d / 'old.n.ll', d / 'new.n.ll', n, (n in lo or n in ln), budget, log)
        u = dict(name=n, file=tu, result=unit_result(r), detail=f"fwd={r['fwd']}{(':' + r['fwd_reason']) if r['fwd_reason'] else ''} bwd={r.get('bwd','-')}"
                 + (f" loops(unroll={r['unroll']})" if r['loops'] else '') + (f' [{why}]' if why != 'body' else ''),
                 config=config, internal=linkage_internal(fo[n][0]), loops=r['loops'])
        if u['result'] == 'UNSUPPORTED':
            u['unsupported_reason'] = unsupported_reason_from(r['fwd_reason'])
            m = re.match(r'Unsupported attribute: (\w+)', r['fwd_reason'])
            if m:
                u['detail'] += ' (unsupported attribute %s)' % m.group(1)
        if r['fwd'] == 'incorrect':
            u['cex'] = r['cex']
            # contract suspects: calls to functions whose signature/definition set changed
            callset = set(re.findall(r'call [^@\n]*@("[^"]+"|[\w.$-]+)\(', '\n'.join(fo[n][1] + fn_[n][1])))
            hit = sorted(callset & contract_names)
            if hit:
                u['contract_suspect'] = hit
        res.units.append(u)
    return res


# ----------------------------------------------------------------------------- driver for a case
def public_names(cfg, root):
    txt = ''
    for p in cfg['public_headers']:
        pp = root / p
        if pp.is_dir():
            for f in pp.rglob('*.h'):
                txt += f.read_text(errors='replace') + '\n'
        elif pp.is_file():
            txt += pp.read_text(errors='replace') + '\n'
    return txt


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('repo')
    ap.add_argument('commit')
    ap.add_argument('--budget', type=int, default=900)
    ap.add_argument('--force', action='store_true')
    ap.add_argument('--keep-trees', action='store_true')
    a = ap.parse_args()
    repo, commit = a.repo, a.commit
    cfg = REPO_CFG[repo]
    out_json = HE / 'gh/results' / repo / f'{commit}.json'
    out_json.parent.mkdir(parents=True, exist_ok=True)
    if out_json.exists() and not a.force:
        try:
            j = json.load(open(out_json))
            if j.get('verdict'):
                print('skip (valid result exists)', commit[:8], j['verdict'])
                return
        except Exception:
            pass
    budget = Budget(a.budget)
    work = HE / 'gh/work' / repo / commit[:8]
    work.mkdir(parents=True, exist_ok=True)
    evdir = work / 'ev'
    if evdir.exists():
        shutil.rmtree(evdir)
    evdir.mkdir()
    base = dict(repo=repo, commit=commit, checker=CHECKER, checker_ran=False, verdict=None, scope='', build_config='',
                units=[], unsupported_reason=None, not_equiv_kind=None, not_equiv_level=None, counterexample=None,
                evidence_dir=str(work.relative_to(VERIOP)), notes='')

    def finish(**kw):
        base.update(kw)
        json.dump(base, open(out_json, 'w'), indent=1)
        print(commit[:8], base['verdict'], base.get('unsupported_reason') or '', '|', base['notes'][:150])
        if repo == 'aws-lc' and not a.keep_trees:
            for s in ('old', 'new'):
                shutil.rmtree(work / s, ignore_errors=True)

    # --- changed files (cheap, from git) to decide which paths to materialize
    rc, so, se = sh(['git', '-C', str(VERIOP / 'benchmarks/repos' / repo), 'diff-tree', '-r', '--name-only', '--no-commit-id',
                     '-M', f'{commit}^1', commit])
    changed_names = so.split()
    mat = list(cfg['mat_paths'])
    for p in changed_names:
        top = p.split('/')[0]
        if '/' in p and top not in mat and top not in ('tests', 'doc', 'docs', 'examples', 'build'):
            if top not in [m.split('/')[0] for m in mat]:
                mat.append(top)
    # extra: third_party only if exists; harmless
    mp = sh(['python3', str(HE / 'tools/gh/materialize.py'), repo, commit, str(work)] + mat, timeout=1200)
    if mp[0] != 0:
        finish(verdict='UNSUPPORTED', unsupported_reason='old-code-does-not-build', scope='materialization failed',
               notes='materialize.py failed: ' + mp[2][-300:])
        return
    meta = json.load(open(work / 'meta.json'))
    files = changed_files(meta)
    cl = classify(cfg, files)
    case = dict(old_root=work / 'old', new_root=work / 'new')
    notes = []
    gaps_global = []
    n_changed = len(files)
    # --- nothing in checker language
    if not cl['c'] and not cl['hdr']:
        if cl['asm'] and not cl['cxx']:
            finish(verdict='UNSUPPORTED', unsupported_reason='assembly-source', checker_ran=False,
                   scope='changed executable files: ' + ', '.join(cl['asm'][:6]),
                   notes='Only assembly/perlasm sources changed (checker works on LLVM IR from C).')
            return
        if cl['cxx']:
            finish(verdict='UNSUPPORTED', unsupported_reason='out-of-checker-language', scope=', '.join(cl['cxx'][:6]),
                   notes='Only C++ sources changed; the pipeline handles C translation units only.')
            return
        finish(verdict='UNSUPPORTED', unsupported_reason='no-executable-change-in-checker-language',
               scope='changed files: ' + ', '.join((cl['excluded'] + cl['other'])[:8]),
               notes='No library C source/header changed (only tests/CLI-excluded/docs/build/data files: %d files).' % n_changed)
        return
    if cl['asm']:
        gaps_global.append(('assembly-source', ', '.join(cl['asm'][:8])))
    if cl['cxx']:
        gaps_global.append(('out-of-checker-language', ', '.join(cl['cxx'][:8])))

    incs_old = include_dirs(cfg, case['old_root'])
    incs_new = include_dirs(cfg, case['new_root'])
    # --- candidate TUs
    tus = []
    for f in cl['c']:
        tus.append(f['new'] if f['status'] != 'D' else f['old'])
        if f['status'] == 'R' or f['old'] != f['new']:
            gaps_global.append(('file-renamed-or-removed', f"{f['old']} -> {f['new']}"))
    hdr_paths = []
    for f in cl['hdr']:
        for p in {f['old'], f['new']}:
            hdr_paths.append(p)
    pp_stats = dict(candidates=0, identical=0)
    dep_tus = []
    if hdr_paths:
        allfiles_o = list_tree_files(case['old_root'], cfg['tu_dirs'] + [r for r in cfg['inc_roots'] if '/' not in r], CSRC_EXT | HDR_EXT)
        allfiles_n = list_tree_files(case['new_root'], cfg['tu_dirs'] + [r for r in cfg['inc_roots'] if '/' not in r], CSRC_EXT | HDR_EXT)
        rev_o = build_reverse_deps(case['old_root'], allfiles_o, incs_old)
        rev_n = build_reverse_deps(case['new_root'], allfiles_n, incs_new)
        clo = closure(rev_o, hdr_paths) | closure(rev_n, hdr_paths)
        ex = re.compile(cfg['exclude_re'])
        for p in sorted(clo):
            if p.endswith('.c') and not ex.search(p) and any(p.startswith(d + '/') for d in cfg['tu_dirs']):
                dep_tus.append(p)
    all_tus = list(dict.fromkeys(tus + dep_tus))
    # --- preprocess pruning
    to_compile, pp_ident_tus, pp_fail = [], [], []
    for tu in all_tus:
        if not budget.ok(60):
            gaps_global.append(('time-budget', f'preprocessing stopped; remaining TUs not examined'))
            break
        if not (case['old_root'] / tu).is_file() or not (case['new_root'] / tu).is_file():
            to_compile.append(tu)
            continue
        po, eo = preprocess_text(cfg, case['old_root'], incs_old, [], tu)
        pn, en = preprocess_text(cfg, case['new_root'], incs_new, [], tu)
        if po is None or pn is None:
            to_compile.append(tu)  # build failure will surface
        elif po == pn:
            pp_ident_tus.append(tu)
        else:
            to_compile.append(tu)
    MAX_TU = 120
    skipped_tus = []
    if len(to_compile) > MAX_TU:
        skipped_tus = to_compile[MAX_TU:]
        to_compile = to_compile[:MAX_TU]
        gaps_global.append(('too-many-translation-units', f'{len(skipped_tus)} dependent TUs not compiled'))

    # --- config A, then B if needed
    results = {}
    for config, extra in (('A', []), ('B', ['-fno-inline'])):
        if config == 'B':
            need = False
            for r in results['A']:
                if r.build_fail:
                    continue
                if any(u['result'] in ('NOT_EQUIV', 'UNKNOWN', 'UNSUPPORTED') for u in r.units) or any(g['hard'] or g['kind'] == 'signature-changed' for g in r.gaps) \
                        or any(g['kind'].startswith('only-in') for g in r.gaps):
                    need = True
            if not need or not budget.ok(60):
                break
            tu_list = [r.tu for r in results['A'] if not r.build_fail and (r.units or r.gaps)]
        else:
            tu_list = to_compile
        results[config] = []
        for tu in tu_list:
            if not budget.ok(20):
                results[config].append(None)
                continue
            results[config].append(process_tu(cfg, case, tu, config, extra, incs_old, incs_new, budget, evdir, pp_stats))
        results[config] = [r for r in results[config] if r is not None]
        if config == 'A' and any(r is None for r in results['A']):
            pass
    ran_any = any(r.units for r in results['A'])
    # --- aggregate
    verdict, info = aggregate(cfg, case, results, pp_ident_tus, to_compile, skipped_tus, gaps_global, budget, repo)
    notes_s = info.pop('notes')
    base['build_config'] = f"clang 20 {' '.join(COMMON_FLAGS)} {cfg['std']} x86-64 (generic); config A default inlining, config B adds -fno-inline" + (
        f"; defs {' '.join(cfg['defs'])}" if cfg['defs'] else '')
    finish(verdict=verdict, checker_ran=info.pop('checker_ran'), notes=notes_s, **info)


def pick_level(cfg, root, name, internal):
    if internal:
        return 'internal-unit'
    txt = public_names(cfg, root)
    return 'public-api' if re.search(r'\b' + re.escape(name) + r'\b', txt) else 'internal-unit'


def aggregate(cfg, case, results, pp_ident_tus, compiled, skipped, gaps_global, budget, repo):
    """combine config A/B -> commit verdict"""
    A = results.get('A', [])
    B = {r.tu: r for r in results.get('B', [])}

    def tu_state(r):
        if r.build_fail:
            return 'build'
        hard = [g for g in r.gaps if g['hard']]
        bad_units = [u for u in r.units if u['result'] in ('UNKNOWN', 'UNSUPPORTED', 'NOT_EQUIV')]
        if hard or bad_units:
            return 'bad'
        return 'clean'
    final_units, final_gaps, builds = [], [], []
    cfg_used = {}
    for r in A:
        sA = tu_state(r)
        chosen = r
        if sA != 'clean' and r.tu in B:
            rb = B[r.tu]
            sB = tu_state(rb)
            if sB == 'clean':
                chosen = rb
            elif sA == 'bad' and sB == 'bad':
                # NOT_EQUIV needs confirmation in B
                chosen = rb if any(u['result'] == 'NOT_EQUIV' for u in rb.units) else (rb if len(rb.gaps) <= len(r.gaps) else r)
                if any(u['result'] == 'NOT_EQUIV' for u in r.units) and not any(u['result'] == 'NOT_EQUIV' for u in rb.units):
                    # A counterexample not confirmed without inlining: demote to UNKNOWN
                    for u in r.units:
                        if u['result'] == 'NOT_EQUIV':
                            u['result'] = 'UNKNOWN'
                            u['detail'] += ' (A-config counterexample not reproduced in no-inline config: inlining artefact)'
            elif sA == 'bad':
                chosen = r
        # unconfirmed A-only NOT_EQUIV when B ran and has no such pair
        cfg_used[r.tu] = chosen.config
        if chosen.build_fail:
            builds.append(chosen)
        final_units += chosen.units
        final_gaps += [dict(g, tu=chosen.tu) for g in chosen.gaps]
    for u in final_units:
        if u['result'] == 'NOT_EQUIV' and u.get('config') == 'A' and any(t.tu == u['file'] for t in A) and u['file'] in B:
            pass
    # layout / contract suspects for counterexamples
    cex_units = [u for u in final_units if u['result'] == 'NOT_EQUIV']
    for u in cex_units:
        tu = u['file']
        if u.get('contract_suspect'):
            u['result'] = 'UNSUPPORTED'
            u['unsupported_reason'] = 'interface-or-state-layout-change'
            u['detail'] += ' (counterexample involves callee(s) with changed signature/definition set: %s; contract change, not a unit counterexample)' % ','.join(u['contract_suspect'][:4])
    cex_units = [u for u in final_units if u['result'] == 'NOT_EQUIV']
    tu_layout = {}
    for u in cex_units:
        tu = u['file']
        if tu not in tu_layout:
            ro = record_layouts(cfg, case['old_root'], include_dirs(cfg, case['old_root']), tu)
            rn = record_layouts(cfg, case['new_root'], include_dirs(cfg, case['new_root']), tu)
            tu_layout[tu] = sorted(k for k in set(ro) & set(rn) if ro[k] != rn[k])
        ch = tu_layout[tu]
        if ch:
            src_o = func_source(case['old_root'], tu, u['name']) or ''
            src_n = func_source(case['new_root'], tu, u['name']) or ''
            body = src_o + src_n
            # alias names: typedefs that mention the record
            suspects = []
            for rec in ch:
                aliases = {rec, rec.rstrip('_s').rstrip('_t')}
                for pth in list((case['new_root'] / 'lib').rglob('*.h'))[:400] if (case['new_root'] / 'lib').exists() else []:
                    try:
                        t = pth.read_text(errors='replace')
                    except Exception:
                        continue
                    for m in re.finditer(r'typedef\s+struct\s+' + re.escape(rec) + r'\s+(\w+)\s*;', t):
                        aliases.add(m.group(1))
                    for m in re.finditer(r'struct\s+' + re.escape(rec) + r'\s*\{[^{}]*(\{[^{}]*\}[^{}]*)*\}\s*(\w+)\s*;', t):
                        aliases.add(m.group(2))
                if not body or any(re.search(r'\b' + re.escape(al) + r'\b', body) for al in aliases if al):
                    suspects.append(rec)
            if not body:
                suspects = ch
            if suspects:
                u['result'] = 'UNSUPPORTED'
                u['unsupported_reason'] = 'interface-or-state-layout-change'
                u['detail'] += ' (counterexample withheld: unit touches record type(s) whose layout changed in this commit: %s)' % ','.join(suspects[:5])
    # --- tally
    proven = [u for u in final_units if u['result'] in ('EQUIV', 'EQUIV_BOUNDED', 'REFINES', 'REFINES_BOUNDED')]
    cexs = [u for u in final_units if u['result'] == 'NOT_EQUIV']
    unknowns = [u for u in final_units if u['result'] == 'UNKNOWN']
    unsup = [u for u in final_units if u['result'] == 'UNSUPPORTED']
    hard = [g for g in final_gaps if g['hard']]
    soft = [g for g in final_gaps if not g['hard']]
    ident = sum(r.ident for r in A)
    scope_parts = [f"{len(final_units)} differing same-signature function pair(s) in {len([r for r in A if r.units])} TU(s)",
                   f"{ident} IR-identical function(s)", f"{len(pp_ident_tus)} TU(s) with identical preprocessed text"]
    if soft:
        scope_parts.append(f'{len(soft)} internal function(s) present on one side only/signature-changed (soft gaps)')
    if hard:
        scope_parts.append(f'{len(hard)} hard coverage gap(s)')
    info = dict(units=[{k: v for k, v in u.items() if k != 'cex'} for u in final_units][:150],
                scope='; '.join(scope_parts), checker_ran=bool(final_units), notes='')
    info['unit_counts'] = {k: sum(1 for u in final_units if u['result'] == k) for k in
                           ('EQUIV', 'EQUIV_BOUNDED', 'REFINES', 'REFINES_BOUNDED', 'NOT_EQUIV', 'UNKNOWN', 'UNSUPPORTED')}
    info['coverage_gaps'] = [dict(kind=g['kind'], name=g['name'], tu=g.get('tu'), hard=g['hard'], detail=g.get('detail')) for g in final_gaps][:80]
    notes = []
    if builds:
        info['checker_ran'] = info['checker_ran'] or False
    if A and not final_units:
        info['checker_ran'] = True if (ident or pp_ident_tus) else info['checker_ran']
    other_gap = list(gaps_global)
    if skipped:
        other_gap.append(('too-many-translation-units', ''))
    # build failures
    bf = [r for r in A if r.build_fail]
    if cexs:
        u = sorted(cexs, key=lambda x: (x.get('internal', False)))[0]
        root = case['new_root']
        info['not_equiv_level'] = pick_level(cfg, root, u['name'], u.get('internal', False))
        msg = u.get('cex', '')
        if 'Source is more defined' in msg or 'poison' in msg and 'Value mismatch' not in msg:
            kind = 'ub-domain-change'
        elif 'Value mismatch' in msg or 'Mismatch in memory' in msg or 'return domain' in msg:
            kind = 'intended-output-change' if repo == 'zstd' and info['not_equiv_level'] == 'public-api' else 'other'
        else:
            kind = 'other'
        info['not_equiv_kind'] = kind
        info['counterexample'] = {'function': u['name'], 'file': u['file'], 'alive_output_tail': msg[-2500:]}
        notes.append(f"{len(cexs)} unit(s) with real Alive2 counterexample(s); first: {u['name']} ({u['file']}), config {u.get('config')}. "
                     "not_equiv_kind is heuristic (from Alive2 message), see counterexample.")
        if bf:
            notes.append('some TUs failed to build: ' + ', '.join(r.tu for r in bf[:4]))
        return 'NOT_EQUIV', dict(info, notes=' '.join(notes))
    # no counterexample
    bad_reasons = []
    if bf:
        olds = [r for r in bf if r.build_fail in ('old', 'both')]
        reason = 'old-code-does-not-build' if olds else 'new-code-does-not-build'
        bad_reasons.append(('build', reason))
    for g, d in gaps_global:
        bad_reasons.append(('gap', g))
    if skipped:
        bad_reasons.append(('gap', 'dependency-closure-too-large'))
    hard_kinds = {g['kind'] for g in hard}
    if hard:
        bad_reasons.append(('gap', 'interface-or-state-layout-change'))
    if unsup:
        bad_reasons.append(('unsup', unsup[0].get('unsupported_reason', 'checker-language-feature-unsupported')))
    nontriv = bool(proven)
    nonbad_units = not (unknowns or unsup)
    if not bad_reasons and not unknowns:
        # everything covered
        if not final_units:
            note = 'All changed executable definitions compile to identical IR (modulo metadata) or identical preprocessed text; no differing functions.'
            note += f' ({len(pp_ident_tus)} TU(s) preprocessed-identical, {ident} IR-identical functions).'
            if soft:
                note += f' {len(soft)} internal function(s) exist on one side only (inlining/removal), callers all IR-identical.'
            return 'EQUIV', dict(info, notes=note, checker_ran=True)
        bounded = any(u['result'].endswith('_BOUNDED') for u in proven)
        refines = any(u['result'].startswith('REFINES') for u in proven)
        v = 'EQUIV_BOUNDED' if bounded else ('REFINES' if refines else 'EQUIV')
        cfgs = sorted(set(u['config'] for u in proven))
        note = f'All {len(proven)} differing function pair(s) proved by Alive2 (config {"/".join(cfgs)}); the rest IR-identical.'
        if bounded:
            note += ' Some pairs contain loops: proved only up to unroll factor 4 (or 2).'
        if refines and not bounded:
            note += ' At least one pair proved new-refines-old only (reverse direction failed or not provable).'
        return v, dict(info, notes=note, checker_ran=True)
    # incomplete
    if nontriv:
        reasons = sorted(set(r for _, r in bad_reasons))
        ur = None
        note = f'{len(proven)} differing pair(s) proved; not covered: ' + (
            f'{len(unknowns)} inconclusive, {len(unsup)} unsupported units; ' if (unknowns or unsup) else '') + '; '.join(reasons)
        return 'EQUIV_PARTIAL', dict(info, notes=note, checker_ran=True)
    # nothing nontrivial proven
    if bf and not final_units:
        reason = [r for k, r in bad_reasons if k == 'build'][0]
        return 'UNSUPPORTED', dict(info, unsupported_reason=reason, checker_ran=False,
                                   notes='Compilation failed: ' + (bf[0].build_err or '')[:300].replace('\n', ' '))
    if unknowns:
        note = f'{len(unknowns)} differing pair(s) inconclusive (timeout/failed-to-prove), none proved.'
        if bad_reasons:
            note += ' Also: ' + '; '.join(sorted(set(r for _, r in bad_reasons)))
        return 'UNKNOWN', dict(info, notes=note, checker_ran=True)
    # only unsupported / gaps
    prio = ['assembly-source', 'inline-asm', 'intrinsic-unsupported-by-checker', 'checker-language-feature-unsupported',
            'interface-or-state-layout-change', 'dependency-closure-too-large', 'old-code-does-not-build', 'new-code-does-not-build']
    reasons = [r for _, r in bad_reasons]
    if hard_kinds & {'file-added', 'file-removed'} or any(g['kind'] in ('only-in-old', 'only-in-new', 'signature-changed') for g in hard):
        pass
    ur = next((p for p in prio if p in reasons), reasons[0] if reasons else 'interface-or-state-layout-change')
    note = 'Nothing comparable proved. ' + '; '.join(sorted(set(reasons)))
    if hard:
        note += '. Hard gaps e.g. ' + ', '.join(f"{g['kind']}:{g['name']}" for g in hard[:5])
    if unsup:
        note += '. ' + unsup[0]['detail'][:200]
    return 'UNSUPPORTED', dict(info, unsupported_reason=ur, notes=note, checker_ran=bool(final_units))


if __name__ == '__main__':
    main()
