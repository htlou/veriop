//! Compile against each library and compare return values and complete output buffers.
use std::io::{self, Write};
use std::panic::{catch_unwind, AssertUnwindSafe};

fn check(data: &[u8], dict: &[u8], capacity: usize, records: &mut impl Write) -> usize {
    let mut cases = 0;
    for use_dict in [false, true] {
        if !use_dict && !dict.is_empty() {
            continue;
        }
        let mut output = vec![0xa5; capacity];
        let result = catch_unwind(AssertUnwindSafe(|| {
            if use_dict {
                lz4_flex::block::decompress_into_with_dict(data, &mut output, dict)
            } else {
                lz4_flex::block::decompress_into(data, &mut output)
            }
        })).map_err(|_| "panic");
        writeln!(records, "{} {} {capacity} {use_dict} {result:?}", data.len(), dict.len()).unwrap();
        records.write_all(&output).unwrap();
        cases += 1;
    }
    cases
}

fn main() {
    std::panic::set_hook(Box::new(|_| {}));
    let stdout = io::stdout();
    let mut records = io::BufWriter::new(stdout.lock());
    let mut cases = 0;
    for literals in 0..15 {
        for match_field in 0..15 {
            let mut data = vec![(literals << 4) | match_field];
            data.extend((0..literals).map(|i| b'a' + i % 7));
            data.extend([1, 0]); // offset-one match
            data.extend([0xf0, 5]); // final twenty literal bytes
            data.extend([b'z'; 20]);
            for end in 0..=data.len() {
                for dict in [&b""[..], &b"x"[..], &b"dictionary-prefix"[..]] {
                    for capacity in [0, 8, 16, 33, 34, 35, 64, 128] {
                        cases += check(&data[..end], dict, capacity, &mut records);
                    }
                }
            }
        }
    }
    let mut state = 0x1234_5678_u32;
    for i in 0..10000 {
        let data: Vec<u8> = (0..i % 128).map(|_| {
            state ^= state << 13;
            state ^= state >> 17;
            state ^= state << 5;
            state as u8
        }).collect();
        cases += check(&data, &[], i % 257, &mut records);
    }
    eprintln!("{cases} complete-buffer cases");
}
