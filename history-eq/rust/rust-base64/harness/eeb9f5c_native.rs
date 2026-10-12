// Native differential test for eeb9f5c encode_to_slice (old vs new), incl. short outputs.
// BigEndian mirrors byteorder 1.5 read_u64/write_u64 (slice prefix of 8, panics if shorter).
#![allow(unused_mut)]
use std::panic;
struct BigEndian;
impl BigEndian {
    fn read_u64(buf: &[u8]) -> u64 { u64::from_be_bytes(buf[..8].try_into().unwrap()) }
    fn write_u64(buf: &mut [u8], n: u64) { buf[..8].copy_from_slice(&n.to_be_bytes()); }
}
fn old_enc(input: &[u8], output: &mut [u8], encode_table: &[u8; 64]) -> usize {
    let mut input_index: usize = 0;

    let last_fast_index = input.len().saturating_sub(8);

    let mut output_index = 0;

    if last_fast_index > 0 {
        while input_index <= last_fast_index {
            let input_chunk = BigEndian::read_u64(&input[input_index..(input_index + 8)]);

            // strip off 6 bits at a time for the first 6 bytes
            let mut chunk = ((encode_table[((input_chunk >> 58) & 0x3F) as usize]) as u64) << 56;
            chunk |= ((encode_table[((input_chunk >> 52) & 0x3F) as usize]) as u64) << 48;
            chunk |= ((encode_table[((input_chunk >> 46) & 0x3F) as usize]) as u64) << 40;
            chunk |= ((encode_table[((input_chunk >> 40) & 0x3F) as usize]) as u64) << 32;
            chunk |= ((encode_table[((input_chunk >> 34) & 0x3F) as usize]) as u64) << 24;
            chunk |= ((encode_table[((input_chunk >> 28) & 0x3F) as usize]) as u64) << 16;
            chunk |= ((encode_table[((input_chunk >> 22) & 0x3F) as usize]) as u64) << 8;
            chunk |= encode_table[((input_chunk >> 16) & 0x3F) as usize] as u64;
            BigEndian::write_u64(&mut output[(output_index)..(output_index + 8)], chunk);

            output_index += 8;
            input_index += 6;
        }
    }

    // Encode the 0 to 7 bytes left after the fast loop.

    let rem = input.len() % 3;
    let start_of_rem = input.len() - rem;

    // start at the first index not handled by fast loop, which may be 0.

    while input_index < start_of_rem {
        output[output_index] = encode_table[(input[input_index] >> 2) as usize];
        output[output_index + 1] = encode_table[((input[input_index] << 4 | input[input_index + 1] >> 4) & 0x3f) as usize];
        output[output_index + 2] = encode_table[((input[input_index + 1] << 2 | input[input_index + 2] >> 6) & 0x3f) as usize];
        output[output_index + 3] = encode_table[(input[input_index + 2] & 0x3f) as usize];

        input_index += 3;
        output_index += 4;
    }

    if rem == 2 {
        output[output_index] = encode_table[(input[start_of_rem] >> 2) as usize];
        output[output_index + 1] = encode_table[((input[start_of_rem] << 4 | input[start_of_rem + 1] >> 4) & 0x3f) as usize];
        output[output_index + 2] = encode_table[(input[start_of_rem + 1] << 2 & 0x3f) as usize];
        output_index += 3;
    } else if rem == 1 {
        output[output_index] = encode_table[(input[start_of_rem] >> 2) as usize];
        output[output_index + 1] = encode_table[(input[start_of_rem] << 4 & 0x3f) as usize];
        output_index += 2;
    }

    output_index
}

fn new_enc(input: &[u8], output: &mut [u8], encode_table: &[u8; 64]) -> usize {
    let mut input_index: usize = 0;

    let blocks_per_fast_loop = 4;

    // we read 8 bytes at a time (u64) but only actually consume 6 of those bytes. Thus, we need
    // 2 trailing bytes to be available to read..
    let last_fast_index = input.len().saturating_sub(blocks_per_fast_loop * 6 + 2);
    let mut output_index = 0;

    if last_fast_index > 0 {
        while input_index <= last_fast_index {
            // Major performance wins from letting the optimizer do the bounds check once, mostly
            // on the output side
            let input_chunk = &input[input_index..(input_index + (blocks_per_fast_loop * 6 + 2))];
            let mut output_chunk = &mut output[output_index..(output_index + blocks_per_fast_loop * 8)];

            // Hand-unrolling for 32 vs 16 or 8 bytes produces yields performance about equivalent
            // to unsafe pointer code on a Xeon E5-1650v3. 64 byte unrolling was slightly better for
            // large inputs but significantly worse for 50-byte input, unsurprisingly. I suspect
            // that it's a not uncommon use case to encode smallish chunks of data (e.g. a 64-byte
            // SHA-512 digest), so it would be nice if that fit in the unrolled loop at least once.
            // Plus, single-digit percentage performance differences might well be quite different
            // on different hardware.

            let input_u64 = BigEndian::read_u64(&input_chunk[0..]);

            output_chunk[0] = encode_table[((input_u64 >> 58) & 0x3F) as usize];
            output_chunk[1] = encode_table[((input_u64 >> 52) & 0x3F) as usize];
            output_chunk[2] = encode_table[((input_u64 >> 46) & 0x3F) as usize];
            output_chunk[3] = encode_table[((input_u64 >> 40) & 0x3F) as usize];
            output_chunk[4] = encode_table[((input_u64 >> 34) & 0x3F) as usize];
            output_chunk[5] = encode_table[((input_u64 >> 28) & 0x3F) as usize];
            output_chunk[6] = encode_table[((input_u64 >> 22) & 0x3F) as usize];
            output_chunk[7] = encode_table[((input_u64 >> 16) & 0x3F) as usize];

            let input_u64 = BigEndian::read_u64(&input_chunk[6..]);

            output_chunk[8] = encode_table[((input_u64 >> 58) & 0x3F) as usize];
            output_chunk[9] = encode_table[((input_u64 >> 52) & 0x3F) as usize];
            output_chunk[10] = encode_table[((input_u64 >> 46) & 0x3F) as usize];
            output_chunk[11] = encode_table[((input_u64 >> 40) & 0x3F) as usize];
            output_chunk[12] = encode_table[((input_u64 >> 34) & 0x3F) as usize];
            output_chunk[13] = encode_table[((input_u64 >> 28) & 0x3F) as usize];
            output_chunk[14] = encode_table[((input_u64 >> 22) & 0x3F) as usize];
            output_chunk[15] = encode_table[((input_u64 >> 16) & 0x3F) as usize];

            let input_u64 = BigEndian::read_u64(&input_chunk[12..]);

            output_chunk[16] = encode_table[((input_u64 >> 58) & 0x3F) as usize];
            output_chunk[17] = encode_table[((input_u64 >> 52) & 0x3F) as usize];
            output_chunk[18] = encode_table[((input_u64 >> 46) & 0x3F) as usize];
            output_chunk[19] = encode_table[((input_u64 >> 40) & 0x3F) as usize];
            output_chunk[20] = encode_table[((input_u64 >> 34) & 0x3F) as usize];
            output_chunk[21] = encode_table[((input_u64 >> 28) & 0x3F) as usize];
            output_chunk[22] = encode_table[((input_u64 >> 22) & 0x3F) as usize];
            output_chunk[23] = encode_table[((input_u64 >> 16) & 0x3F) as usize];

            let input_u64 = BigEndian::read_u64(&input_chunk[18..]);

            output_chunk[24] = encode_table[((input_u64 >> 58) & 0x3F) as usize];
            output_chunk[25] = encode_table[((input_u64 >> 52) & 0x3F) as usize];
            output_chunk[26] = encode_table[((input_u64 >> 46) & 0x3F) as usize];
            output_chunk[27] = encode_table[((input_u64 >> 40) & 0x3F) as usize];
            output_chunk[28] = encode_table[((input_u64 >> 34) & 0x3F) as usize];
            output_chunk[29] = encode_table[((input_u64 >> 28) & 0x3F) as usize];
            output_chunk[30] = encode_table[((input_u64 >> 22) & 0x3F) as usize];
            output_chunk[31] = encode_table[((input_u64 >> 16) & 0x3F) as usize];

            output_index += blocks_per_fast_loop * 8;
            input_index += blocks_per_fast_loop * 6;
        }
    }

    // Encode what's left after the fast loop.

    let rem = input.len() % 3;
    let start_of_rem = input.len() - rem;

    // start at the first index not handled by fast loop, which may be 0.

    while input_index < start_of_rem {
        let input_chunk = &input[input_index..(input_index + 3)];
        let mut output_chunk = &mut output[output_index..(output_index + 4)];

        output_chunk[0] = encode_table[(input_chunk[0] >> 2) as usize];
        output_chunk[1] = encode_table[((input_chunk[0] << 4 | input_chunk[1] >> 4) & 0x3f) as usize];
        output_chunk[2] = encode_table[((input_chunk[1] << 2 | input_chunk[2] >> 6) & 0x3f) as usize];
        output_chunk[3] = encode_table[(input_chunk[2] & 0x3f) as usize];

        input_index += 3;
        output_index += 4;
    }

    if rem == 2 {
        output[output_index] = encode_table[(input[start_of_rem] >> 2) as usize];
        output[output_index + 1] = encode_table[((input[start_of_rem] << 4 | input[start_of_rem + 1] >> 4) & 0x3f) as usize];
        output[output_index + 2] = encode_table[(input[start_of_rem + 1] << 2 & 0x3f) as usize];
        output_index += 3;
    } else if rem == 1 {
        output[output_index] = encode_table[(input[start_of_rem] >> 2) as usize];
        output[output_index + 1] = encode_table[(input[start_of_rem] << 4 & 0x3f) as usize];
        output_index += 2;
    }

    output_index
}

fn main() {
    panic::set_hook(Box::new(|_| {}));
    let table: [u8; 64] = core::array::from_fn(|i| b"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"[i]);
    let mut seed: u64 = 12345;
    let mut rnd = || { seed ^= seed << 13; seed ^= seed >> 7; seed ^= seed << 17; seed };
    let mut cases = 0u64; let mut both_panic = 0u64;
    for len in 0..300usize {
        let need = (len / 3) * 4 + match len % 3 { 0 => 0, r => r + 1 };
        for olen in 0..(need + 12) {
            for _rep in 0..3 {
                let input: Vec<u8> = (0..len).map(|_| rnd() as u8).collect();
                let out0: Vec<u8> = (0..olen).map(|_| rnd() as u8).collect();
                let (i1, i2) = (input.clone(), input.clone());
                let (mut a, mut b) = (out0.clone(), out0.clone());
                let ra = panic::catch_unwind(panic::AssertUnwindSafe(|| old_enc(&i1, &mut a, &table)));
                let rb = panic::catch_unwind(panic::AssertUnwindSafe(|| new_enc(&i2, &mut b, &table)));
                cases += 1;
                match (ra, rb) {
                    (Ok(x), Ok(y)) => { assert_eq!(x, y, "len {} olen {}", len, olen); assert_eq!(a, b, "len {} olen {}", len, olen); assert!(olen >= need); }
                    (Err(_), Err(_)) => { both_panic += 1; assert!(olen < need); }
                    (x, y) => panic!("MISMATCH len {} olen {} old_ok={} new_ok={}", len, olen, x.is_ok(), y.is_ok()),
                }
            }
        }
    }
    println!("ok: {} cases, {} both-panic, no mismatch", cases, both_panic);
}
