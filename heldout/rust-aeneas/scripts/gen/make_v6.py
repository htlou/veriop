"""Exploratory generator: byte-ready two-symbol tables (two u32 tables), unswitched loops.
Usage: make_v6.py <repo> [--inline] [--inline-suffix] [--quads]
"""
import sys
from pathlib import Path
repo = Path(sys.argv[1]); opts = set(sys.argv[2:])
alpha = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
t = [255]*256
for i, c in enumerate(alpha): t[c] = i
rows = ',\n'.join('    ' + ', '.join(str(x) for x in t[k:k+16]) for k in range(0, 256, 16))
tables = f'''
/// The decode table of the standard alphabet (checked against `decode_table(&STANDARD)` in tests).
const STANDARD_DECODE_TABLE: [u8; 256] = [
{rows},
];

/// Two-symbol tables for the standard alphabet, indexed by `first | second << 8`.
/// For a valid pair with 12-bit value `v = first_value << 6 | second_value`, the entry of
/// `STANDARD_PAIRS_HI` holds the little-endian bytes `[v >> 4, (v & 0xF) << 4, 0, 0]` and the entry
/// of `STANDARD_PAIRS_LO` holds `[0, v >> 8, v & 0xFF, 0]`, so OR-ing the entries of two consecutive
/// pairs yields the three decoded bytes. Invalid pairs set the top byte to `0xFF`.
static STANDARD_PAIRS_HI: [u32; 65536] = {{
    let mut pairs = [0_u32; 65536];
    let mut i = 0;
    while i < 65536 {{
        let first = STANDARD_DECODE_TABLE[i & 0xFF] as u32;
        let second = STANDARD_DECODE_TABLE[i >> 8] as u32;
        pairs[i] = if first < 64 && second < 64 {{
            (first << 2 | second >> 4) | (second & 0xF) << 12
        }} else {{
            0xFF00_0000
        }};
        i += 1;
    }}
    pairs
}};

/// See [`STANDARD_PAIRS_HI`].
static STANDARD_PAIRS_LO: [u32; 65536] = {{
    let mut pairs = [0_u32; 65536];
    let mut i = 0;
    while i < 65536 {{
        let first = STANDARD_DECODE_TABLE[i & 0xFF] as u32;
        let second = STANDARD_DECODE_TABLE[i >> 8] as u32;
        pairs[i] = if first < 64 && second < 64 {{
            (first >> 2) << 8 | ((first & 0x3) << 6 | second) << 16
        }} else {{
            0xFF00_0000
        }};
        i += 1;
    }}
    pairs
}};

#[inline(always)]
fn pair_index(input: &[u8], offset: usize) -> usize {{
    usize::from(u16::from_le_bytes([input[offset], input[offset + 1]]))
}}

/// Decode 8 standard-alphabet symbols into 6 bytes with the two-symbol tables, falling back to
/// [`decode_chunk_8`] (and its error reporting) if any symbol is outside the alphabet.
#[inline(always)]
fn decode_chunk_8_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    output: &mut [u8],
) -> Result<(), DecodeError> {{
    let x0 = STANDARD_PAIRS_HI[usize::from(u16::from_le_bytes(input[0..2].try_into().unwrap()))]
        | STANDARD_PAIRS_LO[usize::from(u16::from_le_bytes(input[2..4].try_into().unwrap()))];
    let x1 = STANDARD_PAIRS_HI[usize::from(u16::from_le_bytes(input[4..6].try_into().unwrap()))]
        | STANDARD_PAIRS_LO[usize::from(u16::from_le_bytes(input[6..8].try_into().unwrap()))];
    if (x0 | x1) >= 0x0100_0000 {{
        return decode_chunk_8(input, index_at_start_of_input, decode_table, output);
    }}
    let bytes = u64::from(x0) | u64::from(x1) << 24;
    output[..6].copy_from_slice(&bytes.to_le_bytes()[..6]);
    Ok(())
}}

/// Like [`decode_chunk_8_pairs`] for 4 symbols and 3 bytes of output.
#[inline(always)]
fn decode_chunk_4_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    output: &mut [u8],
) -> Result<(), DecodeError> {{
    let x0 = STANDARD_PAIRS_HI[usize::from(u16::from_le_bytes(input[0..2].try_into().unwrap()))]
        | STANDARD_PAIRS_LO[usize::from(u16::from_le_bytes(input[2..4].try_into().unwrap()))];
    if x0 >= 0x0100_0000 {{
        return decode_chunk_4(input, index_at_start_of_input, decode_table, output);
    }}
    output[..3].copy_from_slice(&x0.to_le_bytes()[..3]);
    Ok(())
}}
'''
p = repo / 'src/engine/general_purpose/decode.rs'
s = p.read_text()
anchor = '/// Decode 8 bytes of input into 6 bytes of output.'
s = s.replace(anchor, tables.lstrip('\n') + '\n' + anchor, 1)
start = s.index('    // chunks of 32 bytes\n')
end = s.index('    Ok(())\n}\n\n/// Returns the length of complete quads') if '--quads' in opts else s.index('    // remaining quads, except for the last possibly partial one')
loop = s[start:end]
fast = loop.replace('decode_chunk_8(', 'decode_chunk_8_pairs(').replace('decode_chunk_4(', 'decode_chunk_4_pairs(')
ind = lambda x: ''.join(('    ' + l if l.strip() else l) for l in x.splitlines(True))
cond = 'quads_len > 0' if '--quads' in opts else 'unrolled_loop_len > 0'
new = (f'    if {cond} && *decode_table == STANDARD_DECODE_TABLE {{\n' + ind(fast).rstrip('\n') +
       '\n    } else {\n' + ind(loop).rstrip('\n') + '\n    }\n\n')
s = s[:start] + new + s[end:]
s = s.replace('''fn pair_index(input: &[u8], offset: usize) -> usize {
    usize::from(u16::from_le_bytes([input[offset], input[offset + 1]]))
}
''', '').replace('#[inline(always)]\n\n', '')
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
