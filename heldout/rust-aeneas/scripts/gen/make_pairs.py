"""Generate the pair-table decode candidate from the pinned baseline sources.
Usage: make_pairs.py <repo> [--inline]
"""
import sys, re
from pathlib import Path
repo = Path(sys.argv[1]); inline = '--inline' in sys.argv; wordload = '--word' in sys.argv
alpha = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
t = [255]*256
for i, c in enumerate(alpha): t[c] = i
rows = ',\n'.join('    ' + ', '.join(str(x) for x in t[k:k+16]) for k in range(0, 256, 16))
OLD8 = '''        let p0 = STANDARD_DECODE_PAIRS[usize::from(input[0]) | usize::from(input[1]) << 8];
        let p1 = STANDARD_DECODE_PAIRS[usize::from(input[2]) | usize::from(input[3]) << 8];
        let p2 = STANDARD_DECODE_PAIRS[usize::from(input[4]) | usize::from(input[5]) << 8];
        let p3 = STANDARD_DECODE_PAIRS[usize::from(input[6]) | usize::from(input[7]) << 8];
'''
NEW8 = '''        let word = u64::from_le_bytes(input[..8].try_into().unwrap());
        let p0 = STANDARD_DECODE_PAIRS[(word & 0xFFFF) as usize];
        let p1 = STANDARD_DECODE_PAIRS[((word >> 16) & 0xFFFF) as usize];
        let p2 = STANDARD_DECODE_PAIRS[((word >> 32) & 0xFFFF) as usize];
        let p3 = STANDARD_DECODE_PAIRS[(word >> 48) as usize];
'''
OLD4 = '''        let p0 = STANDARD_DECODE_PAIRS[usize::from(input[0]) | usize::from(input[1]) << 8];
        let p1 = STANDARD_DECODE_PAIRS[usize::from(input[2]) | usize::from(input[3]) << 8];
        if (p0 | p1)'''
NEW4 = '''        let word = u32::from_le_bytes(input[..4].try_into().unwrap());
        let p0 = STANDARD_DECODE_PAIRS[(word & 0xFFFF) as usize];
        let p1 = STANDARD_DECODE_PAIRS[(word >> 16) as usize];
        if (p0 | p1)'''
p = repo / 'src/engine/general_purpose/decode.rs'
s = p.read_text()

tables0 = f'''
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

/// Decode 8 bytes using the two-symbol table when `use_pairs` holds, falling back to
/// [`decode_chunk_8`] whenever any symbol is outside the alphabet.
#[inline(always)]
fn decode_chunk_8_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    use_pairs: bool,
    output: &mut [u8],
) -> Result<(), DecodeError> {{
    if use_pairs {{
        let p0 = STANDARD_DECODE_PAIRS[usize::from(input[0]) | usize::from(input[1]) << 8];
        let p1 = STANDARD_DECODE_PAIRS[usize::from(input[2]) | usize::from(input[3]) << 8];
        let p2 = STANDARD_DECODE_PAIRS[usize::from(input[4]) | usize::from(input[5]) << 8];
        let p3 = STANDARD_DECODE_PAIRS[usize::from(input[6]) | usize::from(input[7]) << 8];
        if (p0 | p1 | p2 | p3) < 0x1000 {{
            let accum = u64::from(p0) << 52 | u64::from(p1) << 40 | u64::from(p2) << 28 | u64::from(p3) << 16;
            output[..6].copy_from_slice(&accum.to_be_bytes()[..6]);
            return Ok(());
        }}
    }}
    decode_chunk_8(input, index_at_start_of_input, decode_table, output)
}}

/// Like [`decode_chunk_8_pairs`] for 4 bytes of input and 3 bytes of output.
#[inline(always)]
fn decode_chunk_4_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    use_pairs: bool,
    output: &mut [u8],
) -> Result<(), DecodeError> {{
    if use_pairs {{
        let p0 = STANDARD_DECODE_PAIRS[usize::from(input[0]) | usize::from(input[1]) << 8];
        let p1 = STANDARD_DECODE_PAIRS[usize::from(input[2]) | usize::from(input[3]) << 8];
        if (p0 | p1) < 0x1000 {{
            let accum = u32::from(p0) << 20 | u32::from(p1) << 8;
            output[..3].copy_from_slice(&accum.to_be_bytes()[..3]);
            return Ok(());
        }}
    }}
    decode_chunk_4(input, index_at_start_of_input, decode_table, output)
}}
'''
tables = tables0.replace(OLD8, NEW8).replace(OLD4, NEW4) if wordload else tables0
anchor = '/// Decode 8 bytes of input into 6 bytes of output.'
assert anchor in s
s = s.replace(anchor, tables.lstrip('\n') + '\n' + anchor, 1)
# use_pairs computed once per call, inside decode_complete_quads
old = '''    let input_unrolled_loop_end = input_index_start + unrolled_loop_len;
'''
new = '''    let input_unrolled_loop_end = input_index_start + unrolled_loop_len;
    let use_pairs = input_index_start < input_index_end && *decode_table == STANDARD_DECODE_TABLE;
'''
assert old in s; s = s.replace(old, new, 1)
for k, (a, b) in enumerate([('0..8', '0..6'), ('8..16', '6..12'), ('16..24', '12..18'), ('24..32', '18..24')]):
    pass
s, n = re.subn(r'decode_chunk_8\(\n(\s+)&chunk\[(\d+\.\.\d+)\],\n\s+(input_index[^,]*),\n\s+decode_table,\n',
               lambda m: f'decode_chunk_8_pairs(\n{m.group(1)}&chunk[{m.group(2)}],\n{m.group(1)}{m.group(3)},\n{m.group(1)}decode_table,\n{m.group(1)}use_pairs,\n', s)
assert n == 4, n
old4 = '''        decode_chunk_4(
            chunk,
            input_unrolled_loop_end + chunk_index * 4,
            decode_table,
'''
new4 = '''        decode_chunk_4_pairs(
            chunk,
            input_unrolled_loop_end + chunk_index * 4,
            decode_table,
            use_pairs,
'''
assert old4 in s; s = s.replace(old4, new4, 1)
test = '''
    #[test]
    fn standard_decode_table_matches_alphabet() {
        assert_eq!(STANDARD_DECODE_TABLE, STANDARD.decode_table);
    }
'''
anchor_t = '    #[test]\n    fn decode_chunk_8_writes_only_6_bytes'
assert anchor_t in s; s = s.replace(anchor_t, test.lstrip('\n') + '\n' + anchor_t, 1)
p.write_text(s)
if inline:
    m = repo / 'src/engine/general_purpose/mod.rs'
    ms = m.read_text()
    old = '''    fn internal_decode(
        &self,'''
    assert old in ms
    ms = ms.replace(old, '    #[inline(always)]\n' + old, 1)
    m.write_text(ms)
