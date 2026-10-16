"""Exploratory generator: 32-symbol pair-table fast path with one validity check.
Usage: make_v3.py <repo> [--inline] [--u16] [--words3] [--inline-suffix]
"""
import sys
from pathlib import Path
repo = Path(sys.argv[1]); opts = set(sys.argv[2:])
alpha = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
t = [255]*256
for i, c in enumerate(alpha): t[c] = i
rows = ',\n'.join('    ' + ', '.join(str(x) for x in t[k:k+16]) for k in range(0, 256, 16))

def lookups(n_words, word_bytes):
    out = []
    if '--u16' in opts:
        for k in range(n_words * word_bytes // 2):
            out.append(f'    let p{k} = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes([input[{2*k}], input[{2*k+1}]]))];')
    else:
        for w in range(n_words):
            out.append(f'    let w{w} = u64::from_le_bytes(input[{8*w}..{8*w+8}].try_into().unwrap());')
            for j in range(4):
                k = 4*w + j
                expr = f'w{w} >> {16*j}' if j else f'w{w}'
                expr = f'(({expr}) & 0xFFFF)' if j < 3 else f'({expr})'
                out.append(f'    let p{k} = STANDARD_DECODE_PAIRS[{expr} as usize];')
    return '\n'.join(out)

n = 16
check = ' | '.join(f'p{k}' for k in range(n))
acc = []
for g in range(4):
    acc.append(f'    let a{g} = u64::from(p{4*g}) << 36 | u64::from(p{4*g+1}) << 24 | u64::from(p{4*g+2}) << 12 | u64::from(p{4*g+3});')
if '--words3' in opts:
    acc.append('    output[0..8].copy_from_slice(&(a0 << 16 | a1 >> 32).to_be_bytes());')
    acc.append('    output[8..16].copy_from_slice(&(a1 << 32 | a2 >> 16).to_be_bytes());')
    acc.append('    output[16..24].copy_from_slice(&(a2 << 48 | a3).to_be_bytes());')
else:
    for g in range(4):
        acc.append(f'    output[{6*g}..{6*g+6}].copy_from_slice(&(a{g} << 16).to_be_bytes()[..6]);')

fast = f'''
/// The decode table of the standard alphabet (checked against `decode_table(&STANDARD)` in tests).
const STANDARD_DECODE_TABLE: [u8; 256] = [
{rows},
];

/// Two-symbol decode table for the standard alphabet, indexed by `first | second << 8`.
/// Entries are `first_value << 6 | second_value` when both symbols decode to values below 64,
/// and `0xFFFF` otherwise.
static STANDARD_DECODE_PAIRS: [u16; 65536] = {{
    let mut pairs = [0_u16; 65536];
    let mut i = 0;
    while i < 65536 {{
        let first = STANDARD_DECODE_TABLE[i & 0xFF];
        let second = STANDARD_DECODE_TABLE[i >> 8];
        pairs[i] = if first < 64 && second < 64 {{
            (first as u16) << 6 | second as u16
        }} else {{
            0xFFFF
        }};
        i += 1;
    }}
    pairs
}};

/// Decode 32 standard-alphabet symbols into 24 bytes using the two-symbol table.
/// Returns `false`, leaving `output` unchanged, if any symbol is outside the alphabet.
#[inline(always)]
fn decode_chunk_32_pairs(input: &[u8], output: &mut [u8]) -> bool {{
{lookups(4, 8)}
    if ({check}) >= 0x1000 {{
        return false;
    }}
{chr(10).join(acc)}
    true
}}
'''
p = repo / 'src/engine/general_purpose/decode.rs'
s = p.read_text()
anchor = '/// Decode 8 bytes of input into 6 bytes of output.'
s = s.replace(anchor, fast.lstrip('\n') + '\n' + anchor, 1)
old = '''        let chunk_output = &mut output[output_base..output_base + UNROLLED_OUTPUT_CHUNK_SIZE];

        decode_chunk_8('''
new = '''        let chunk_output = &mut output[output_base..output_base + UNROLLED_OUTPUT_CHUNK_SIZE];

        if use_pairs && decode_chunk_32_pairs(chunk, chunk_output) {
            continue;
        }

        decode_chunk_8('''
assert old in s; s = s.replace(old, new, 1)
old = '''    let input_unrolled_loop_end = input_index_start + unrolled_loop_len;
'''
new = '''    let input_unrolled_loop_end = input_index_start + unrolled_loop_len;
    let use_pairs = unrolled_loop_len > 0 && *decode_table == STANDARD_DECODE_TABLE;
'''
assert old in s; s = s.replace(old, new, 1)
test = '''
    #[test]
    fn standard_decode_table_matches_alphabet() {
        assert_eq!(STANDARD_DECODE_TABLE, STANDARD.decode_table);
    }
'''
anchor_t = '    #[test]\n    fn decode_chunk_8_writes_only_6_bytes'
s = s.replace(anchor_t, test.lstrip('\n') + '\n' + anchor_t, 1)
if '--inline' in opts:
    s = s.replace('#[inline]\npub(crate) fn decode_helper(', '#[inline(always)]\npub(crate) fn decode_helper(')
    s = s.replace('#[inline]\nfn decode_complete_quads(', '#[inline(always)]\nfn decode_complete_quads(')
    m = repo / 'src/engine/general_purpose/mod.rs'
    ms = m.read_text()
    old = '''    fn internal_decode(
        &self,'''
    ms = ms.replace(old, '    #[inline(always)]\n' + old, 1)
    m.write_text(ms)
if '--inline-suffix' in opts:
    q = repo / 'src/engine/general_purpose/decode_suffix.rs'
    qs = q.read_text()
    qs = qs.replace('#[allow(clippy::too_many_arguments)]\npub(crate) fn decode_suffix(', '#[allow(clippy::too_many_arguments)]\n#[inline(always)]\npub(crate) fn decode_suffix(')
    q.write_text(qs)
p.write_text(s)
