"""PTX audit backing the bit-exactness argument for the three compared kernel pairs.

Volta works over the reals; the sweeps additionally require SYNTACTIC n/n: every output's expression tree is
identical node for node (operators, operand order, atoms) between baseline and candidate. That implies
identical IEEE results provided that, in both kernels,
  A1  every float-producing instruction is one of a fixed list, and each Volta node kind is produced by
      exactly ONE PTX opcode string (with all modifiers) across both kernels, so equal node kinds mean the
      same IEEE operation with the same rounding/ftz/sat behaviour: Mul <- mul.f32, Sub <- sub.f32,
      Fma <- fma.rn.f32, Max <- max.f32 (operands are never constant-folded: the only constant operand is
      max's 0.0, and Volta's max folds only two constants or -inf);
  A2  the only conversions are exact widenings cvt.f32.bf16 (applied only to 16-bit registers that come
      straight from a global load or from an unpack of a loaded word) and the rounding cvt.rn.bf16.f32,
      whose result goes only to a store (directly, or through a 16-bit pack whose result is only stored).
      Volta models both conversions as the identity, so A2 guarantees each output is RN_bf16 of the
      f32 expression that Volta records, with no hidden intermediate rounding; and
  A3  bit moves (mov.b32 between integer and float registers, unpack/pack of loaded/stored words) are
      exact.
Then identical f32 expression trees give identical f32 bits for every input bit pattern (NaN/Inf/
subnormal included: each node is one deterministic IEEE operation on identical operands), and the final
bf16 rounding is the same function of those bits.
"""
import json, re, sys
from collections import Counter, defaultdict
from pathlib import Path

H = Path(__file__).resolve().parents[2]
PAIRS = {
    'rope-bf16': ('ptx/baseline/pos_encoding_kernels.ptx', '_ZN4vllm23rotary_embedding_kernelIN3c108BFloat16ES2_Lb1EEEvPKlPT_S6_PKT0_illliiilb',
                  'ptx/candidate/pos_encoding_kernels.ptx', '_ZN4vllm33rotary_embedding_neox_vec4_kernelIN3c108BFloat16EEEvPKlPT_S6_PKS5_illliiilb'),
    'relu-fp32': ('ptx/baseline/activation_kernels.ptx', '_ZN4vllm17activation_kernelIfXadL_ZNS_19relu_squared_kernelIfEET_RKS2_EELb1ELb0EEEvPS2_PS3_i',
                  'ptx/cand-relu/activation_kernels.ptx', '_ZN4vllm26activation_flat_vec_kernelIfXadL_ZNS_19relu_squared_kernelIfEET_RKS2_EEEEvPS2_PS3_i'),
    'relu-bf16': ('ptx/baseline/activation_kernels.ptx', '_ZN4vllm17activation_kernelIN3c108BFloat16EXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EELb1ELb0EEEvPS4_PS5_i',
                  'ptx/cand-relu16/activation_kernels.ptx', '_ZN4vllm26activation_flat_vec_kernelIN3c108BFloat16EXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EEEEvPS4_PS5_i'),
}
NODE_OF = {'mul.f32': 'Mul', 'sub.f32': 'Sub', 'add.f32': 'Add', 'fma.rn.f32': 'Fma', 'max.f32': 'Max'}
FLOAT_OK = set(NODE_OF) | {'cvt.f32.bf16', 'cvt.rn.bf16.f32'}


def instrs(ptx, k, text=None):
    s = text if text is not None else (H / ptx).read_text()
    i = s.index('.entry ' + k + '(')
    body = s[s.index('{', s.index(')', i)):s.index('\n}\n', i)]
    out = []
    for raw in body.split(';'):
        line = re.sub(r'//[^\n]*', '', raw).replace('{', ' { ').replace('}', ' } ').strip()
        line = re.sub(r'^(?:[\s{}]+|\$L__\w+:)+', '', line).strip()
        if not line or line.startswith('.reg') or line in ('{', '}'):
            continue
        toks = line.split()
        while toks and toks[0] in ('{', '}'):
            toks = toks[1:]
        if not toks:
            continue
        pred = None
        if toks[0].startswith('@'):
            pred, toks = toks[0], toks[1:]
        op = toks[0]
        args = ' '.join(toks[1:])
        regs = re.findall(r'%\w+', args)
        out.append((op, args, regs, pred))
    return out


def audit_kernel(ptx, k, text=None):
    ins = instrs(ptx, k, text)
    ops = Counter(op for op, *_ in ins)
    fl = Counter(op for op in ops.elements() if re.search(r'\.(f16|bf16|f32|f64)\b', op) and not op.startswith(('ld.', 'st.', 'mov.', 'setp.')))
    defs, uses = defaultdict(list), defaultdict(list)
    for idx, (op, args, regs, pred) in enumerate(ins):
        if op.startswith('st.') or op.startswith('bra') or op == 'ret':
            for r in regs:
                uses[r].append(idx)
            continue
        if op.startswith('ld.') or op.startswith('mov.b32') and args.lstrip().startswith('{'):
            # destinations: everything before the address/source operand
            dst_part = args.split('[')[0] if op.startswith('ld.') else args.split('}')[0]
            src_part = args[len(dst_part):]
            for r in re.findall(r'%\w+', dst_part):
                defs[r].append(idx)
            for r in re.findall(r'%\w+', src_part):
                uses[r].append(idx)
            continue
        if regs:
            defs[regs[0]].append(idx)
            for r in regs[1:]:
                uses[r].append(idx)
    problems = []
    for op in fl:
        if op not in FLOAT_OK:
            problems.append(f'float op outside the audited list: {op}')
    for idx, (op, args, regs, pred) in enumerate(ins):
        if op == 'cvt.rn.bf16.f32':
            dst = regs[0]
            for u in uses[dst]:
                uop, uargs = ins[u][0], ins[u][1]
                if uop.startswith('st.global'):
                    continue
                if uop == 'mov.b32' and '{' in uargs:  # pack; its result must only be stored
                    pdst = ins[u][2][0]
                    if not all(ins[v][0].startswith('st.global') for v in uses[pdst]):
                        problems.append(f'packed rounding result {pdst} used by a non-store')
                    continue
                problems.append(f'rounded value {dst} used by {uop}')
        if op == 'cvt.f32.bf16':
            src = regs[1]
            for dfi in defs[src]:
                dop = ins[dfi][0]
                if dop.startswith('ld.global'):
                    continue
                if dop == 'mov.b32' and ins[dfi][1].lstrip().startswith('{'):  # unpack of a loaded word
                    word = re.findall(r'%\w+', ins[dfi][1].split('}')[1])[0]
                    if not all(ins[w][0].startswith('ld.global') for w in defs[word]):
                        problems.append(f'unpacked word {word} not from a load')
                    continue
                problems.append(f'widened 16-bit value {src} defined by {dop}')
        if op == 'mov.b32' and not args.lstrip().startswith('{') and '{' not in args:
            # int <-> float bit move: must be a plain register copy
            if len(regs) != 2:
                problems.append(f'unexpected mov.b32 form: {args}')
        if op.startswith(('atom', 'red', 'ld.shared', 'st.shared', 'ld.local', 'st.local', 'bar', 'shfl')):
            problems.append(f'unexpected memory/sync op {op}')
    return dict(float_ops=dict(fl), all_ops=dict(ops), problems=problems)


def self_test():
    """The audit must flag a hidden intermediate bf16 rounding and an ftz multiply."""
    p, k = PAIRS['rope-bf16'][2:]
    src = (H / p).read_text()
    i = src.index('.entry ' + k + '(')
    j = src.index('\n}\n', i)
    body = src[i:j]
    old = '\tsub.f32 \t%f41, %f61, %f62;\n'
    assert body.count(old) == 1
    m1 = src[:i] + body.replace(old, old + '\tcvt.rn.bf16.f32 \t%rs1, %f41;\n\tcvt.f32.bf16 \t%f41, %rs1;\n') + src[j:]
    m2 = src[:i] + body.replace('mul.f32', 'mul.ftz.f32', 1) + src[j:]
    r1, r2 = audit_kernel(p, k, m1), audit_kernel(p, k, m2)
    return dict(intermediate_rounding_flagged=bool(r1['problems']), ftz_flagged=bool(r2['problems']),
                examples=r1['problems'][:2] + r2['problems'][:2])


def main():
    res = {}
    ok_all = True
    for name, (p1, k1, p2, k2) in PAIRS.items():
        a, b = audit_kernel(p1, k1), audit_kernel(p2, k2)
        node_ops = defaultdict(set)
        for side in (a, b):
            for op in side['float_ops']:
                if op in NODE_OF:
                    node_ops[NODE_OF[op]].add(op)
        unique = all(len(v) == 1 for v in node_ops.values())
        ok = unique and not a['problems'] and not b['problems']
        ok_all &= ok
        res[name] = dict(baseline=dict(kernel=k1, ptx=p1, float_ops=a['float_ops'], problems=a['problems']),
                         candidate=dict(kernel=k2, ptx=p2, float_ops=b['float_ops'], problems=b['problems']),
                         node_kind_to_opcode={k: sorted(v) for k, v in node_ops.items()},
                         one_opcode_per_node_kind=unique, conforms=ok)
        print(name, 'conforms' if ok else 'DOES NOT CONFORM', res[name]['node_kind_to_opcode'], a['problems'] + b['problems'])
    out = H / 'final-verification/ieee-audit.json'
    st = self_test()
    print('self-test', st)
    out.write_text(json.dumps(dict(all_conform=ok_all, self_test=st, pairs=res), indent=1) + '\n')
    print('ALL CONFORM' if ok_all else 'NOT ALL CONFORM')


if __name__ == '__main__':
    main()
