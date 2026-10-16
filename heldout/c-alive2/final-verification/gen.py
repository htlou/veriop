#!/usr/bin/env python3
"""Generate Alive2 sub-check modules for the fast_float uint16 fast path.

All modules are built from the exact checked IR (build/ir/{stock,cand}/u16_impl.ll,
the files that scripts/build-linked.sh compiles into the linked benchmark):
  F_old = stock  from_chars_int_advanced<uint16_t,char>
  E_new = cand   from_chars_int_advanced<uint16_t,char>  (fast path, else tail call G)
  G     = cand   from_chars_int_advanced_slow<uint16_t,char> (only *declared* in E's module)

A wrapper @ver adds preconditions only (stores of the input bytes, llvm.assume)
and calls the checked function, which is made alwaysinline (noinline removed)
and inlined with `opt -passes=always-inline` (no other pass).  src and tgt use
byte-identical wrappers; only the callee module differs.

V2 sub-check  v2_s{S}_z{Z}_L{L}:
  S in {4,5}  fast shape: bytes 0..S-1 are digits, byte S is not a digit
  Z in 0..S   exactly Z leading '0' bytes (byte Z is a nonzero digit if Z<S)
  L in 8..15  last-first == L; [first,first+L) is a fresh L-byte object, all bytes initialized
  L == 16     last-first >= 16 (signed; i.e. 16..PTRDIFF_MAX); first points to a fresh
              16-byte object, all 16 bytes initialized (reads beyond it would be UB)
  base == 10; every other option/format bit symbolic.
Optional digit enumeration (--digits): the free digit bytes are fixed to concrete
values given as a string, e.g. v2_s5_z0_L8_d12345 (used only if needed).
"""
import argparse, re, subprocess, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
F = '_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE'
G = '_ZN10fast_float28from_chars_int_advanced_slowItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE'
GLOBALS = ['_ZN10fast_float9space_lutIvE5valueE', '_ZN10fast_float8int_lutsIvE7chdigitE',
           '_ZN10fast_float8int_lutsIvE13maxdigits_u64E', '_ZN10fast_float8int_lutsIvE12min_safe_u64E']
IR = {'stock': ROOT / 'build/ir/stock/u16_impl.ll', 'cand': ROOT / 'build/ir/cand/u16_impl.ll'}


def extract(variant, func):
    # the lookup tables the old body reads are extracted *with their initializers*
    # (--glob); without them llvm-extract leaves external declarations whose
    # contents Alive2 treats as arbitrary.
    txt = subprocess.run(['llvm-extract', '-S', f'--func={func}', *[f'--glob={g}' for g in GLOBALS],
                          str(IR[variant]), '-o', '-'],
                         check=True, capture_output=True, text=True).stdout
    # make the extracted (defined) function inlinable into the wrapper
    return re.sub(r'^(attributes #\d+ = \{)(.*)$',
                  lambda m: m.group(1) + (' alwaysinline' + m.group(2).replace(' noinline', '')
                                          if 'uwtable' in m.group(2) and 'alwaysinline' not in m.group(2)
                                          else m.group(2)),
                  txt, flags=re.M)


def wrapper_v2(S, Z, L, digits=None, fbits=None, alias=False, gmem=False):
    N = L  # size of the input buffer = number of initialized bytes
    # The input buffer is a local alloca of exactly N bytes in the wrapper (see
    # README: a non-local argument makes Z3 time out; block size and alias
    # assumptions are discussed there).  Reads outside [buf, buf+N) are UB.
    params = []
    if L == 16:
        params.append('i64 noundef %len')
    pre_text = ''
    if gmem == 'k':
        # two distinct globals: the input buffer (exactly N bytes, align 1: any
        # address) and `value` (2 bytes, align 2: any even address).  Alive2
        # compares the final contents of both at return.  They cannot overlap
        # (see README: an overlapping `value` is outside the C++ contract).
        params += ['i16 noundef %v0', 'i64 noundef %fmt', 'i64 noundef %o2']
        pre_text = (f'@gbuf = global [{N} x i8] zeroinitializer, align 1\n'
                    '@gval = global i16 0, align 2\n')
        body = ['  %buf = getelementptr inbounds i8, ptr @gbuf, i64 0', '  %v = getelementptr inbounds i8, ptr @gval, i64 0',
                '  store i16 %v0, ptr %v, align 2']
    elif gmem == 'h':
        # global input buffer (align 1: any address; final contents compared) and a
        # separate local `value` whose final contents are returned
        params += ['i16 noundef %v0', 'i64 noundef %fmt', 'i64 noundef %o2']
        pre_text = f'@gbuf = global [{N} x i8] zeroinitializer, align 1\n'
        body = ['  %buf = getelementptr inbounds i8, ptr @gbuf, i64 0', '  %v = alloca i16, align 2',
                '  store i16 %v0, ptr %v, align 2']
    elif gmem:
        # global-buffer model: the input bytes live in a global object of exactly N
        # bytes (align 1: any address); `value` is a pointer argument that Alive2 lets
        # point anywhere, including into (or straddling) that object.  Final memory
        # of the object and of *value is compared.
        params += ['ptr noundef nonnull align 2 dereferenceable(2) %v', 'i64 noundef %fmt', 'i64 noundef %o2']
        pre_text = f'@gbuf = global [{N} x i8] zeroinitializer, align 1\n'
        body = ['  %buf = getelementptr inbounds i8, ptr @gbuf, i64 0']
    elif not alias:
        params += ['ptr noundef nonnull align 2 dereferenceable(2) %v', 'i64 noundef %fmt', 'i64 noundef %o2']
        body = [f'  %buf = alloca [{N} x i8], align 1']
    else:
        # alias family: `value` overlaps the input bytes.  The object is
        # [first-1, first+N+1) (one arbitrary initialized byte on each side), and
        # value = first-1+vo with 0 <= vo <= N, i.e. every 2-byte position that
        # overlaps [first, first+N).  The final contents of the whole object are
        # returned so that every write the callee makes to it is compared.
        # alias is True (vo symbolic) or an int k (vo == k; the k = 0..N sub-cases cover vo <= N)
        params += (['i64 noundef %vo'] if alias is True else []) + \
                  ['i64 noundef %fmt', 'i64 noundef %o2', 'i8 noundef %pl', 'i8 noundef %pr']
        body = [f'  %mem = alloca [{N + 2} x i8], align 1', '  %buf = getelementptr inbounds i8, ptr %mem, i64 1',
                '  store i8 %pl, ptr %mem, align 1', f'  %pre = getelementptr inbounds i8, ptr %mem, i64 {N + 1}',
                '  store i8 %pr, ptr %pre, align 1']
        if alias is True:
            body += [f'  %vok = icmp ule i64 %vo, {N}', '  call void @llvm.assume(i1 %vok)',
                     '  %v = getelementptr inbounds i8, ptr %mem, i64 %vo']
        else:
            assert 0 <= alias <= N
            body += [f'  %v = getelementptr inbounds i8, ptr %mem, i64 {alias}']
    # byte k: constant '0' for k < Z, concrete digit if enumerated, else a noundef i8 argument
    for k in range(N):
        if k < Z:
            val = '48'
        elif digits is not None and k < S:
            val = str(48 + int(digits[k - Z]))
        else:
            params.append(f'i8 noundef %c{k}')
            val = f'%c{k}'
        body += [f'  %p{k} = getelementptr inbounds i8, ptr %buf, i64 {k}', f'  store i8 {val}, ptr %p{k}, align 1']
    # shape preconditions on the symbolic bytes
    for k in range(Z, S + 1):
        if digits is not None and k < S:
            continue
        body.append(f'  %s{k} = sub i8 %c{k}, 48')
        body.append(f'  %d{k} = icmp ult i8 %s{k}, 10')
        if k < S:
            body.append(f'  call void @llvm.assume(i1 %d{k})')        # digit
        else:
            body.append(f'  %nd{k} = xor i1 %d{k}, true')
            body.append(f'  call void @llvm.assume(i1 %nd{k})')       # not a digit
    if Z < S and digits is None:
        body.append(f'  %nz = icmp ne i8 %c{Z}, 48')                  # exactly Z leading zeros
        body.append('  call void @llvm.assume(i1 %nz)')
    if L == 16:
        body += ['  %lenok = icmp sge i64 %len, 16', '  call void @llvm.assume(i1 %lenok)',
                 '  %end = getelementptr i8, ptr %buf, i64 %len']
    else:
        body += [f'  %end = getelementptr i8, ptr %buf, i64 {L}']
    # base == 10 (other option fields symbolic); pass the literal-base word (equal under the assumption)
    body += ['  %bhi = lshr i64 %o2, 32', '  %base = trunc i64 %bhi to i32', '  %b10 = icmp eq i32 %base, 10',
             '  call void @llvm.assume(i1 %b10)', '  %o2lo = and i64 %o2, 4294967295', '  %o2b = or i64 %o2lo, 42949672960']
    fmt = '%fmt'
    if isinstance(fbits, str):
        # 'w0'/'w1': split only on skip_white_space (0x100); allow_leading_plus
        # and all other bits stay symbolic.  w0 and w1 together cover every fmt.
        body += ['  %fmtm = and i64 %fmt, -257', f'  %fmtc = or i64 %fmtm, {256 if fbits == "w1" else 0}']
        fmt = '%fmtc'
    elif fbits is not None:
        # sub-partition on the two format bits the parser reads: allow_leading_plus
        # (0x80) and skip_white_space (0x100); all other bits stay symbolic.  The
        # four values of fbits together cover every fmt value.
        cb = (0x80 if fbits & 1 else 0) | (0x100 if fbits & 2 else 0)
        body += ['  %fmtm = and i64 %fmt, -385', f'  %fmtc = or i64 %fmtm, {cb}']
        fmt = '%fmtc'
    body += [f'  %r = call {{ ptr, i32 }} @{F}(ptr noundef %buf, ptr noundef %end, '
             f'ptr noundef nonnull align 2 dereferenceable(2) %v, i64 {fmt}, i64 %o2b)']
    rty = '{ ptr, i32 }'
    if gmem == 'k':
        body.append('  ret { ptr, i32 } %r')
    elif gmem == 'h':
        rty = '{ ptr, i32, i16 }'
        body += ['  %vf = load i16, ptr %v, align 2', '  %r0 = extractvalue { ptr, i32 } %r, 0',
                 '  %r1 = extractvalue { ptr, i32 } %r, 1', f'  %x0 = insertvalue {rty} poison, ptr %r0, 0',
                 f'  %x1 = insertvalue {rty} %x0, i32 %r1, 1', f'  %x2 = insertvalue {rty} %x1, i16 %vf, 2',
                 f'  ret {rty} %x2']
    elif not alias:
        body.append('  ret { ptr, i32 } %r')
    else:
        W = 8 * (N + 2); rty = f'{{ ptr, i32, i{W} }}'
        body += [f'  %fin = load i{W}, ptr %mem, align 1', '  %r0 = extractvalue { ptr, i32 } %r, 0',
                 '  %r1 = extractvalue { ptr, i32 } %r, 1', f'  %x0 = insertvalue {rty} poison, ptr %r0, 0',
                 f'  %x1 = insertvalue {rty} %x0, i32 %r1, 1', f'  %x2 = insertvalue {rty} %x1, i{W} %fin, 2',
                 f'  ret {rty} %x2']
    return pre_text + '\n'.join([f'define {rty} @ver({", ".join(params)}) {{'] + body +
                     ['}', 'declare void @llvm.assume(i1)', ''])


def module(out, variant, wrapper_text):
    pre = Path(str(out) + '.pre')
    pre.write_text(extract(variant, F) + '\n' + wrapper_text)
    subprocess.run(['opt', '-S', '-passes=always-inline', str(pre), '-o', str(out)], check=True)
    return out


def parse(name):
    m = re.fullmatch(r'v2_s([45])_z(\d)_L(\d+)(?:_d(\d+))?(?:_f(\d)|_(w[01]))?(_a(\d+)?)?(_g|_h|_k)?', name)
    S, Z, L = int(m.group(1)), int(m.group(2)), int(m.group(3))
    assert 0 <= Z <= S and 8 <= L <= 16
    d = m.group(4)
    if d is not None:
        assert len(d) == S - Z and (Z == S or d[0] != '0')
    f = int(m.group(5)) if m.group(5) is not None else m.group(6)
    al = False if m.group(7) is None else (True if m.group(8) is None else int(m.group(8)))
    gm = {None: False, '_g': True, '_h': 'h', '_k': 'k'}[m.group(9)]
    return S, Z, L, d, f, al, gm


def build(name, outdir):
    S, Z, L, d, f, al, g = parse(name)
    w = wrapper_v2(S, Z, L, d, f, al, g)
    outdir.mkdir(parents=True, exist_ok=True)
    s = module(outdir / f'{name}_src.ll', 'stock', w)
    t = module(outdir / f'{name}_tgt.ll', 'cand', w)
    return s, t


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('names', nargs='+')
    ap.add_argument('--out', default=str(Path(__file__).resolve().parent / 'modules'))
    a = ap.parse_args()
    for n in a.names:
        print(*build(n, Path(a.out)))


# ---------------------------------------------------------------------------
# V1a / V1b / V3 (non-fast region and the out-of-line copy), regenerated here
# with the original wrapper code of scripts/verify.py so that they can be
# re-checked with the patched alive-tv (sink check) in this directory.
def build_v1_v3(outdir):
    sys.path.insert(0, str(ROOT / 'scripts'))
    import verify
    outdir.mkdir(parents=True, exist_ok=True)
    out = {}
    for c in ('v1a', 'v1b'):
        for side, callee in (('src', G), ('tgt', F)):
            pre = outdir / f'{c}_{side}.ll.pre'
            pre.write_text(verify.extract('cand', F) + '\n' + verify.wrapper(c, callee))
            subprocess.run(['opt', '-S', '-passes=always-inline', str(pre), '-o', str(outdir / f'{c}_{side}.ll')], check=True)
        out[c] = (outdir / f'{c}_src.ll', outdir / f'{c}_tgt.ll')
    # V3: G_new (cand) vs F_old (stock), whole functions, G renamed to F's name
    s = subprocess.run(['llvm-extract', '-S', f'--func={F}', str(IR['stock']), '-o', '-'], check=True,
                       capture_output=True, text=True).stdout
    t = subprocess.run(['llvm-extract', '-S', f'--func={G}', str(IR['cand']), '-o', '-'], check=True,
                       capture_output=True, text=True).stdout.replace(G, F)
    (outdir / 'v3_src.ll').write_text(s); (outdir / 'v3_tgt.ll').write_text(t)
    out['v3'] = (outdir / 'v3_src.ll', outdir / 'v3_tgt.ll')
    return out
