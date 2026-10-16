"""Exploratory generator for unswitched pair-table loops.
Usage: make_v45.py <repo> v4|v5 [--inline] [--inline-suffix]
v4: per-8-symbol pair decode with per-group fallback; v5: 32-symbol validate-then-write.
"""
import sys
from pathlib import Path
repo = Path(sys.argv[1]); mode = sys.argv[2]; opts = set(sys.argv[3:])
U16 = '--u16' in opts
alpha = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
t = [255]*256
for i, c in enumerate(alpha): t[c] = i
rows = ',\n'.join('    ' + ', '.join(str(x) for x in t[k:k+16]) for k in range(0, 256, 16))
tables = f'''
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
'''
OLDW = '''    let word = u64::from_le_bytes(input[..8].try_into().unwrap());
    let p0 = STANDARD_DECODE_PAIRS[(word & 0xFFFF) as usize];
    let p1 = STANDARD_DECODE_PAIRS[((word >> 16) & 0xFFFF) as usize];
    let p2 = STANDARD_DECODE_PAIRS[((word >> 32) & 0xFFFF) as usize];
    let p3 = STANDARD_DECODE_PAIRS[(word >> 48) as usize];
'''
NEWW = '''    let p0 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[0..2].try_into().unwrap()))];
    let p1 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[2..4].try_into().unwrap()))];
    let p2 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[4..6].try_into().unwrap()))];
    let p3 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[6..8].try_into().unwrap()))];
'''
v4fn = '''
/// Decode 8 standard-alphabet symbols into 6 bytes with the two-symbol table, falling back to
/// [`decode_chunk_8`] (and its error reporting) if any symbol is outside the alphabet.
#[inline(always)]
fn decode_chunk_8_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    output: &mut [u8],
) -> Result<(), DecodeError> {
    let word = u64::from_le_bytes(input[..8].try_into().unwrap());
    let p0 = STANDARD_DECODE_PAIRS[(word & 0xFFFF) as usize];
    let p1 = STANDARD_DECODE_PAIRS[((word >> 16) & 0xFFFF) as usize];
    let p2 = STANDARD_DECODE_PAIRS[((word >> 32) & 0xFFFF) as usize];
    let p3 = STANDARD_DECODE_PAIRS[(word >> 48) as usize];
    if (p0 | p1 | p2 | p3) >= 0x1000 {
        return decode_chunk_8(input, index_at_start_of_input, decode_table, output);
    }
    let accum = u64::from(p0) << 52 | u64::from(p1) << 40 | u64::from(p2) << 28 | u64::from(p3) << 16;
    output[..6].copy_from_slice(&accum.to_be_bytes()[..6]);
    Ok(())
}
'''
v5fn = '''
/// Decode 32 standard-alphabet symbols into 24 bytes with the two-symbol table.
/// Returns `false`, leaving `output` unchanged, if any symbol is outside the alphabet.
#[inline(always)]
fn decode_chunk_32_pairs(input: &[u8], output: &mut [u8]) -> bool {
''' + ''.join(f'''    let w = u64::from_le_bytes(input[{8*g}..{8*g+8}].try_into().unwrap());
    let p0 = STANDARD_DECODE_PAIRS[(w & 0xFFFF) as usize];
    let p1 = STANDARD_DECODE_PAIRS[((w >> 16) & 0xFFFF) as usize];
    let p2 = STANDARD_DECODE_PAIRS[((w >> 32) & 0xFFFF) as usize];
    let p3 = STANDARD_DECODE_PAIRS[(w >> 48) as usize];
    let c{g} = p0 | p1 | p2 | p3;
    let a{g} = u64::from(p0) << 36 | u64::from(p1) << 24 | u64::from(p2) << 12 | u64::from(p3);
''' for g in range(4)) + '''    if (c0 | c1 | c2 | c3) >= 0x1000 {
        return false;
    }
    output[0..8].copy_from_slice(&(a0 << 16 | a1 >> 32).to_be_bytes());
    output[8..16].copy_from_slice(&(a1 << 32 | a2 >> 16).to_be_bytes());
    output[16..24].copy_from_slice(&(a2 << 48 | a3).to_be_bytes());
    true
}
'''
if U16: v4fn = v4fn.replace(OLDW, NEWW)
p = repo / 'src/engine/general_purpose/decode.rs'
s = p.read_text()
anchor = '/// Decode 8 bytes of input into 6 bytes of output.'
s = s.replace(anchor, tables.lstrip('\n') + (v4fn if mode == 'v4' else v5fn) + '\n' + anchor, 1)
# Unswitch: duplicate the unrolled loop under `if use_pairs`.
start = s.index('    // chunks of 32 bytes\n')
end = s.index('    // remaining quads, except for the last possibly partial one')
loop = s[start:end]
if mode == 'v4':
    fast = loop.replace('decode_chunk_8(', 'decode_chunk_8_pairs(')
else:
    fast = loop.replace('''        decode_chunk_8(
            &chunk[0..8],''', '''        if decode_chunk_32_pairs(chunk, chunk_output) {
            continue;
        }
        decode_chunk_8(
            &chunk[0..8],''')
indented = ''.join(('    ' + l if l.strip() else l) for l in loop.splitlines(True))
fast_ind = ''.join(('    ' + l if l.strip() else l) for l in fast.splitlines(True))
new = ('    if unrolled_loop_len > 0 && *decode_table == STANDARD_DECODE_TABLE {\n' + fast_ind.rstrip('\n') +
       '\n    } else {\n' + indented.rstrip('\n') + '\n    }\n\n')
s = s[:start] + new + s[end:]
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
