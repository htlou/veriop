"""Apply the `decode-pairs` candidate to a pinned rust-base64 checkout (5b98ee18).
Usage: make_candidate.py <repo>
Changes:
  * decode.rs: two-symbol table for the standard alphabet, used by new decode_chunk_{8,4}_pairs
    which fall back to the unchanged decode_chunk_{8,4}; decode_complete_quads dispatches once
    (unswitched) to copies of its two loops calling the pair helpers when the engine's decode
    table equals the standard one.
  * inlining attributes on the decode call chain (no semantic effect).
"""
import sys
from pathlib import Path
repo = Path(sys.argv[1])
alpha = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
t = [255] * 256
for i, c in enumerate(alpha):
    t[c] = i
rows = ',\n'.join('    ' + ', '.join(str(x) for x in t[k:k + 16]) for k in range(0, 256, 16))

def sub(s, old, new, count=1):
    assert s.count(old) == count, (old, s.count(old))
    return s.replace(old, new)

new_items = f'''/// The decode table of the standard alphabet; a unit test checks it against
/// `decode_table(&alphabet::STANDARD)`.
const STANDARD_DECODE_TABLE: [u8; 256] = [
{rows},
];

/// Two-symbol decode table for the standard alphabet, indexed by `first | second << 8`.
/// An entry is `first_value << 6 | second_value` if both symbols decode to values below 64,
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

/// [`decode_chunk_8`] for the standard alphabet: decodes two symbols per table lookup and falls
/// back to [`decode_chunk_8`] (for its error reporting) unless all 8 symbols are in the alphabet.
#[inline(always)]
fn decode_chunk_8_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    output: &mut [u8],
) -> Result<(), DecodeError> {{
    if input.len() >= 8 {{
        let p0 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[0..2].try_into().unwrap()))];
        let p1 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[2..4].try_into().unwrap()))];
        let p2 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[4..6].try_into().unwrap()))];
        let p3 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[6..8].try_into().unwrap()))];
        if (p0 | p1 | p2 | p3) < 0x1000 {{
            let accum = u64::from(p0) << 52
                | u64::from(p1) << 40
                | u64::from(p2) << 28
                | u64::from(p3) << 16;
            output[..6].copy_from_slice(&accum.to_be_bytes()[..6]);
            return Ok(());
        }}
    }}
    decode_chunk_8(input, index_at_start_of_input, decode_table, output)
}}

/// Like [`decode_chunk_8_pairs`] for 4 symbols and 3 bytes of output.
#[inline(always)]
fn decode_chunk_4_pairs(
    input: &[u8],
    index_at_start_of_input: usize,
    decode_table: &[u8; 256],
    output: &mut [u8],
) -> Result<(), DecodeError> {{
    if input.len() >= 4 {{
        let p0 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[0..2].try_into().unwrap()))];
        let p1 = STANDARD_DECODE_PAIRS[usize::from(u16::from_le_bytes(input[2..4].try_into().unwrap()))];
        if (p0 | p1) < 0x1000 {{
            let accum = u32::from(p0) << 20 | u32::from(p1) << 8;
            output[..3].copy_from_slice(&accum.to_be_bytes()[..3]);
            return Ok(());
        }}
    }}
    decode_chunk_4(input, index_at_start_of_input, decode_table, output)
}}

'''
p = repo / 'src/engine/general_purpose/decode.rs'
s = p.read_text()
s = sub(s, '/// Decode 8 bytes of input into 6 bytes of output.', new_items + '/// Decode 8 bytes of input into 6 bytes of output.')
# Unswitch the two loops of decode_complete_quads.
start = s.index('    // chunks of 32 bytes\n')
end = s.index('    Ok(())\n}\n\n/// Returns the length of complete quads')
loops = s[start:end]
fast = loops.replace('decode_chunk_8(', 'decode_chunk_8_pairs(').replace('decode_chunk_4(', 'decode_chunk_4_pairs(')
assert fast.count('_pairs(') == 5
ind = lambda x: ''.join(('    ' + l if l.strip() else l) for l in x.splitlines(True))
s = s[:start] + ('    if input_index_start < input_index_end && *decode_table == STANDARD_DECODE_TABLE {\n'
                 + ind(fast).rstrip('\n') + '\n    } else {\n' + ind(loops).rstrip('\n') + '\n    }\n\n') + s[end:]
# Inlining of the call chain.
s = sub(s, '#[inline]\npub(crate) fn decode_helper(', '#[inline(always)]\npub(crate) fn decode_helper(')
s = sub(s, '#[inline]\nfn decode_complete_quads(', '#[inline(always)]\nfn decode_complete_quads(')
# Test: the literal table is the standard alphabet's table.
s = sub(s, '    #[test]\n    fn decode_chunk_8_writes_only_6_bytes',
        '''    #[test]
    fn standard_decode_table_matches_alphabet() {
        assert_eq!(
            STANDARD_DECODE_TABLE,
            super::super::decode_table(&crate::alphabet::STANDARD)
        );
    }

    #[test]
    fn decode_chunk_8_writes_only_6_bytes''')
p.write_text(s)
m = repo / 'src/engine/general_purpose/mod.rs'
ms = m.read_text()
ms = sub(ms, '''    fn internal_decode(
        &self,''', '''    #[inline(always)]
    fn internal_decode(
        &self,''')
m.write_text(ms)
q = repo / 'src/engine/general_purpose/decode_suffix.rs'
qs = q.read_text()
qs = sub(qs, '#[allow(clippy::too_many_arguments)]\npub(crate) fn decode_suffix(',
         '#[allow(clippy::too_many_arguments)]\n#[inline(always)]\npub(crate) fn decode_suffix(')
q.write_text(qs)
e = repo / 'src/engine/mod.rs'
es = e.read_text()
es = sub(es, '''    ) -> Result<usize, DecodeSliceError> {
        fn inner<E>(
            engine: &E,
            input_bytes: &[u8],
            output: &mut [u8],
        ) -> Result<usize, DecodeSliceError>''', '''    ) -> Result<usize, DecodeSliceError> {
        #[inline(always)]
        fn inner<E>(
            engine: &E,
            input_bytes: &[u8],
            output: &mut [u8],
        ) -> Result<usize, DecodeSliceError>''')
e.write_text(es)
